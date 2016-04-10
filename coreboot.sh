#!/bin/sh
#
build -p CorebootPayloadPkg/CorebootPayloadPkgIa32.dsc  -a IA32  -t GCC48  -b $1 -DBAUD_RATE=921600 -DBDS_TYPE=QuarkPlatformPkg -DDEBUG_PRINT_ERROR_LEVEL=0x80000042 -DDEBUG_PROPERTY_MASK=0x27 -DFAT_TYPE=BUILD_FAT -DMAX_LOGICAL_PROCESSORS=1 -DSHELL_TYPE=BUILD_SHELL -DSOC_INCLUDE=QuarkPlatformPkg/Include/Dsc/CorebootPayloadPkg -DTEST_INCLUDE=SpiPkg/Quark/SpiSupport -DSERIAL_CLOCK_RATE=44236800 -DBAUD_RATE=921600
ls -al Build/CorebootPayloadPkgIA32/$1_GCC48/FV/UEFIPAYLOAD.fd
cp Build/CorebootPayloadPkgIA32/$1_GCC48/FV/UEFIPAYLOAD.fd ~/Work/quark/coreboot-quark/3rdparty/blobs/soc/intel/quark/UEFIPAYLOAD.fd

