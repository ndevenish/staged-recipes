#!/usr/bin/env bash

ls
mkdir _build && cd _build
cmake .. ${CMAKE_ARGS}
cmake --build .
cmake --install .