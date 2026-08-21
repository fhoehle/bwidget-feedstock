#!/bin/bash

set -euo pipefail

# Install into $PREFIX/lib, which is on Tcl's auto_path for every Tcl version.
TCL_LIB_PATH=$PREFIX/lib/${PKG_NAME}${PKG_VERSION}

mkdir -p "$TCL_LIB_PATH"

# Copy only what BWidget needs at runtime plus CHANGES.txt/LICENSE.txt/README.txt,
# so that lib is not polluted with the ChangeLog, tests, demo and BWman docs that
# upstream also ships. Keep this list in sync with build.bat.
cp src/*.tcl "$TCL_LIB_PATH"/
cp -R src/images src/lang "$TCL_LIB_PATH"/
cp src/*.txt "$TCL_LIB_PATH"/
