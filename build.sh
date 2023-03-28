#!/bin/sh

set -e

make -C /lib/modules/$(uname -r)/build M=$PWD modules
rmmod usbkbd.ko
insmod usbkbd.ko
