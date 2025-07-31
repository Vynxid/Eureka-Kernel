# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Eureka Kernel (with KernelSU-Next, integrated by Lotusify) - by Eureka Team
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=a10
device.name2=a10s
device.name3=SM-A105F
device.name4=SM-A105FN
device.name5=SM-A105G
device.name6=SM-A105M
device.name7=SM-A107F
device.name8=SM-A107M
supported.versions=9-14
supported.patchlevels=
'; } # end properties

# shell variables
block=auto;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;

## AnyKernel boot install
dump_boot;

# begin ramdisk changes

# end ramdisk changes

write_boot;
## end boot install
