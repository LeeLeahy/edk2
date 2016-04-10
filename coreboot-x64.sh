#!/bin/sh
#
build -p CorebootPayloadPkg/CorebootPayloadPkgIa32X64.dsc  -a IA32 -a X64  -t GCC48  -b $1  -DSHELL_TYPE=BUILD_SHELL -DFAT_TYPE=BUILD_FAT -DSOC_INCLUDE=QuarkPlatformPkg/Include/Dsc/CorebootPayloadPkg -DTEST_INCLUDE=SpiPkg/Include/Dsc/CorebootPayloadPkg -DDEBUG_PROPERTY_MASK=0x27  -DDEBUG_PRINT_ERROR_LEVEL=0x80000042
ls -al Build/CorebootPayloadPkgX64/$1_GCC48/FV/UEFIPAYLOAD.fd
cp Build/CorebootPayloadPkgX64/$1_GCC48/FV/UEFIPAYLOAD.fd ~/Work/quark/coreboot-quark/3rdparty/blobs/soc/intel/quark/UEFIPAYLOAD.fd

