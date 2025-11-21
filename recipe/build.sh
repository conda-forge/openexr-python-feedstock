#! /usr/bin/env bash

set -xeuo pipefail
export CPPFLAGS="$CPPFLAGS -I$PREFIX/include/Imath -I$PREFIX/include/OpenEXR"

if [[ "$(uname)" == "Darwin" ]]; then
    export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"
fi

export CMAKE_ARGS="$CMAKE_ARGS -DOPENEXR_FORCE_INTERNAL_DEFLATE=OFF -DOPENEXR_FORCE_INTERNAL_IMATH=OFF -DOPENEXR_FORCE_INTERNAL_OPENJPH=OFF"
exec $PYTHON -m pip install . -vv
