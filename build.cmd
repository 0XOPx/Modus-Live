@echo off

cmake -S . -B build
cmake --build build

if exist build\Debug\ModusLive.exe (
    build\Debug\ModusLive.exe
) else if exist build\ModusLive.exe (
    build\ModusLive.exe
)