#!/bin/sh
#
build -p SpiPkg/Quark/CorebootPayloadPkgIa32.dsc  -a IA32  -t GCC48  -b $1 -DBAUD_RATE=921600 -DBDS_TYPE=QuarkPlatformPkg -DDEBUG_PRINT_ERROR_LEVEL=0x80000042 -DDEBUG_PROPERTY_MASK=0x27 -DMAX_LOGICAL_PROCESSORS=1 -DSHELL_TYPE=BUILD_SHELL -DSERIAL_CLOCK_RATE=44236800 -DBAUD_RATE=921600
ls -al Build/QuarkCorebootSpiIA32/$1_GCC48/FV/UEFIPAYLOAD.fd
cp Build/QuarkCorebootSpiIA32/$1_GCC48/FV/UEFIPAYLOAD.fd ~/Work/quark/coreboot-quark/3rdparty/blobs/soc/intel/quark/UEFIPAYLOAD.fd

