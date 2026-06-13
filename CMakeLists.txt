cmake_minimum_required(VERSION 3.16)

project(ModusLive)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS "src/*.*")

add_executable(ModusLive ${SOURCES})