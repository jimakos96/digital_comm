#!/usr/bin/env bash
#http://justtrythis.blogspot.com/2014/12/share-internet-with-virtual-raspberrypi.html
sudo qemu-system-aarch64 \
        -M vexpress-a9 \
        -m 1024 \
        -smp 4 \
        -kernel qemu_files/zImage \
        -dtb qemu_files/vexpress-v2p-ca9.dtb \
        -sd qemu_files/2021-03-04-raspios-buster-armhf-lite.img \
        -append "console=ttyAMA0,115200 root=/dev/mmcblk0p2" \
        -serial stdio \
        -net nic -net user,hostfwd=tcp::2222-:22
       #-net nic -net tap,ifname=tap0,script=no,downscript=no
        
