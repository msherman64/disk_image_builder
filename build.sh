#!/bin/bash

DIB_RELEASE="8"
ARCH="arm64"

#    baremetal \
#     dynamic-login \
#     cleanup-kernel-initrd \


docker run --privileged --rm -it \
    -v diskimage_builder:/opt/output \
    -e DIB_RELEASE=$DIB_RELEASE \
    -e ARCH=$ARCH \
    diskimage_builder \
    -a arm64 \
    -t qcow2 \
    --checksum \
    -o /opt/output/centos8-arm64.qcow2 \
    dhcp-all-interfaces \
    vm block-device-efi centos
