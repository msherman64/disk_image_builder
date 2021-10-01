FROM centos:8

RUN dnf -y install \
    git \
    qemu-img \
    which \
    sudo \
    python3 \
    python3-pip \
    yum-utils \
    kpartx \
    tar

RUN pip3 install diskimage-builder

ENTRYPOINT ["/usr/local/bin/disk-image-create"]