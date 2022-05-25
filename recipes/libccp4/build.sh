#!/usr/bin/env bash

mkdir _build && cd _build
cmake .. ${CMAKE_ARGS} -GNinja -DFORTRAN_LIB=NO
cmake --build .
cmake --install .