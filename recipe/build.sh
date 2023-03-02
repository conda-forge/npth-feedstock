#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux

if [[ "$(uname -s)" == "Linux" ]]
then
    LDFLAGS="$LDFLAGS -lrt"
fi

./configure --prefix=$PREFIX
make
make install
