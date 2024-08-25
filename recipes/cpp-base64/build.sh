#!/bin/bash

cp ${RECIPE_DIR}/{CMakeLists.txt,Config.cmake.in} .

mkdir -p build
cd build

cmake -DCMAKE_BUILD_TYPE="Release" \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DCMAKE_INSTALL_LIBDIR=lib \
    ${CMAKE_ARGS} \
    ..

cmake --build . --target=install
