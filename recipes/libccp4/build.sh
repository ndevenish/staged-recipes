#!/usr/bin/env bash

ls
mkdir _build
cd _build
cmake ../libccp4/trunk ${CMAKE_ARGS}
cmake --build .
cmake --install .