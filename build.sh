#!/bin/bash

DIB_RELEASE="focal"
ARCH="arm64"

#    baremetal \
#     dynamic-login \
#     cleanup-kernel-initrd \

docker run --privileged --rm -it \
    -v diskimage_builder:/opt/output \
    -e DIB_RELEASE=$DIB_RELEASE \
    -e ARCH=$ARCH \
    diskimage_build:debian \
    -a arm64 \
    -o /opt/output/ubuntu2004-arm64.qcow2 \
    dhcp-all-interfaces \
    vm block-device-efi ubuntu
