#!/bin/sh
#
git format-patch -M --thread origin/master --to edk2-devel@lists.01.org $1
