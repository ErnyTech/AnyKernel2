# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=ErnyTech Oneplus3/3T Kernel 
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
do.mergedtbs=1
device.name1=OnePlus3
device.name2=oneplus3
device.name3=OnePlus3T
device.name4=oneplus3t
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

