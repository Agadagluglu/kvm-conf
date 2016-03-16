#!/bin/bash

# Readme
# This file is an exanmple minimal configuration for CLI KVM

# Notes
# --os-variant -> this option defines he template to apply to the newly created VM
# refer to the manual for the full list of supported os-variant

# --graphics -> this option binds a command line interace instead of a graphical head
# options --vnc and --vnc-port (or --spice) can be defined instead

# --disk -> refers to the virtual disk to create. If no pool are specified, the default one will be used.
# size -> this argument defines the size in Go of the virtual disk.
# bus=virtio (to do)
# For information about pool creation and management, read the documentation in /docs/pool/README.md

# --cdrom -> this option defines what iso to boot from.
# an alternative option (-l) can be defined instead to provide an url.

virt-install \
--name=debNet \
--description "Test debian netinstal" \
--os-type=Linux \
--os-variant=debiansqueeze \
--ram=512 \
--vcpus=1 \
--disk path=/srv/virtualmachines/disks/debianet.img,bus=virtio,size=4 \
--graphics none \
--cdrom /home/apunch/debian-8.3.0-amd64-netinst.iso \
--network bridge:virbr0-nic