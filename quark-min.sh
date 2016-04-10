#!/bin/sh
#
build -p QuarkPlatformPkg/QuarkMin.dsc  -a IA32  -t GCC48  -b $1  -DDEBUG_PROPERTY_MASK=0x27  -DDEBUG_PRINT_ERROR_LEVEL=0x80000042

