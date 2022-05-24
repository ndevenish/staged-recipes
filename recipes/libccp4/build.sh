#!/usr/bin/env bash

mkdir _build && cd _build
cmake .. ${CMAKE_ARGS} -GNinja
cmake --build .
cmake --install .