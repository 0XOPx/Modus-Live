cmake_minimum_required(VERSION 3.16)

project(ModusLive)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS "src/*.*")

add_executable(ModusLive ${SOURCES})

if(NOT DEFINED PROJECT_VERSION)
    execute_process(
        COMMAND git describe --tags --abbrev=0
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        OUTPUT_VARIABLE PROJECT_VERSION
        OUTPUT_STRIP_TRAILING_WHITESPACE
        ERROR_QUIET
    )
endif()

if(NOT PROJECT_VERSION)
    set(PROJECT_VERSION "v0.0.0")
endif()

target_compile_definitions(ModusLive PRIVATE
    MODUS_VERSION="${PROJECT_VERSION}"
)