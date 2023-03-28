#!/bin/sh

set -e

make -C /lib/modules/$(uname -r)/build M=$PWD modules
rmmod usbkbd.ko
insmod usbkbd.ko

## cat /etc/modprobe.d/usbhid.conf 
#options usbhid quirks=0x0461:0x4e90:0x0004
