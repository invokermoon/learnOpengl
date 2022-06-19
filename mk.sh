#!/bin/bash
if [[ "$1"x == "clean"x ]]; then
    rm -rf ./build
else
    mkdir -p build
    cd build && cmake .. && make -j12
    cd -
fi
