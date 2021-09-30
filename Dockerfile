FROM centos:8

RUN dnf -y install \
    git \
    qemu-img \
    which \
    sudo \
    python3 \
    python3-pip \
    yum-utils \
    kpartx

RUN pip3 install diskimage-builder


# ENV DIB_RELEASE="focal" DIB_PYTHON_VERSION=3 ARCH=arm64
# ENV DIB_CLOUD_INIT_DATASOURCES="ConfigDrive, OpenStack"

ENTRYPOINT ["/usr/local/bin/disk-image-create"]

CMD ["-a", "arm64", "-t", "qcow2" ,"ubuntu" ,"dhcp-all-interfaces"]