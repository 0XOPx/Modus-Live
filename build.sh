#!/bin/bash

# DO NOT CHANGE ANYTHING HERE

cmake -S . -B build
cmake --build build

if [ -f build/ModusLive ]; then
    ./build/ModusLive
fi