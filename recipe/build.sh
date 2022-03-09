#! /usr/bin/env bash

set -xeuo pipefail
export CPPFLAGS="$CPPFLAGS -I$PREFIX/include/Imath -I$PREFIX/include/OpenEXR"
exec $PYTHON -m pip install . -vv
