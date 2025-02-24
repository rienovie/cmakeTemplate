cmake_minimum_required(VERSION 3.27)
project(cMakeTemplate)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "${CMAKE+CXX_FLAGS} -g")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# find_package(somePackage REQUIRED)

set(SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src")

file(GLOB_RECURSE SOURCES "${SOURCE_DIR}/*.cpp")

add_executable(cMakeTemplate ${SOURCES})
