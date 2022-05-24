#!/usr/bin/env bash

ls
mkdir _build && cd _build
cmake .. ${CMAKE_ARGS} -GNinja
cmake --build .
cmake --install .