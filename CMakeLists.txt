cmake_minimum_required(VERSION 3.27)
project(cMakeTemplate)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Use for prerequisites
# find_package(somePackage REQUIRED)

# Automatically finds all cpp files in the 'src' directory
set(SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src")
file(GLOB_RECURSE SOURCES "${SOURCE_DIR}/*.cpp")

# exclude directories from auto inclusion
# set(EXCLUDED_DIRS "${SOURCE_DIR}/___EXCLUDE_HERE___/.*")
# list(FILTER SOURCES EXCLUDE REGEX "^${EXCLUDED_DIRS}")

add_executable(cMakeTemplate ${SOURCES})
