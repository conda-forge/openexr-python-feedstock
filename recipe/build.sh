#! /usr/bin/env bash

set -xeuo pipefail
export CPPFLAGS="$CPPFLAGS -I$PREFIX/include/Imath -I$PREFIX/include/OpenEXR"
export CMAKE_ARGS="$CMAKE_ARGS -DOPENEXR_FORCE_INTERNAL_DEFLATE=OFF -DOPENEXR_FORCE_INTERNAL_IMATH=OFF"
exec $PYTHON -m pip install . -vv
