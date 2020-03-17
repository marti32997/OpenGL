cmake_minimum_required(VERSION 3.11.0)
project(A2_OpenGL VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_compile_options(-Wall -Wextra -Wshadow -Wnon-virtual-dtor -Wpedantic)

include_directories(include)
include_directories(lib)

add_subdirectory(lib)
add_subdirectory(src)
add_subdirectory(tests)