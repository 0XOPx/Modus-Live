cmake_minimum_required(VERSION 3.16)

project(ModusLive)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS "src/*.*")

add_executable(ModusLive ${SOURCES})

if(NOT PROJECT_VERSION)
    set(PROJECT_VERSION "v0.0.0")
endif()

if(NOT GIT_HASH)
    set(GIT_HASH "unknown")
endif()

target_compile_definitions(ModusLive PRIVATE
    MODUS_VERSION="${PROJECT_VERSION}"
    MODUS_HASH="${GIT_HASH}"
)