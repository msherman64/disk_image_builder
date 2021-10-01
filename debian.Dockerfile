FROM ubuntu:20.04 as base

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential \
    python3 \
    python3-pip \
    kpartx \
    qemu-utils \
    git \
    sudo \
    curl \
    squashfs-tools \
    debootstrap \
    gdisk \
    dosfstools

RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install diskimage-builder

ENTRYPOINT ["/usr/local/bin/disk-image-create"]