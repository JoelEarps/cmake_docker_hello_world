cmake_minimum_required(VERSION 3.9)

# Semantic Versioning can also be done in here - combine with pipeline?
project(hello_world_docker)

# Set Project to use C++
set(CMAKE_CXX_STANDARD 17)

# This is the complex part - here we are setting the source files to main.cpp, as there are no 
# This is a variable that we will then use as an exe pointer

set(SOURCE_FILES main.cpp)

add_executable(cppdocker_run ${SOURCE_FILES})
