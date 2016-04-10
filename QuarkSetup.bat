set WORKSPACE=%CD%
set PACKAGES_PATH=%WORKSPACE%;%WORKSPACE%\..\edk2-non-osi
set EDK_TOOLS_BIN=%WORKSPACE%\..\edk2-BaseTools-win32
edksetup.bat
build -p QuarkFspPkg/QuarkFspPkg.dsc  -a IA32  -t VS2012  -b DEBUG  -DDEBUG_PROPERTY_MASK=0x27  -DDEBUG_PRINT_ERROR_LEVEL=0x80000042
