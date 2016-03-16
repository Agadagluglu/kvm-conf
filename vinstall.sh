#!/bin/bash

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
