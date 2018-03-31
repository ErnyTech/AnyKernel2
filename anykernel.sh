# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=Generic Kernel Name
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=GenericDevice1
device.name2=GenericDevice2
device.name3=GenericDevice3
device.name4=GenericDevice4
device.name5=GenericDevice5
} # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;  #/dev/block/bootdevice/by-name/boot is a generic kernel image path, it's supports a lot of devices
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files

## AnyKernel install
dump_boot;

# begin ramdisk changes
# end ramdisk changes

write_boot;

## end install

