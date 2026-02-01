# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(zephyr_ada_hello_world)

target_sources(app PRIVATE src/main.c)

target_link_libraries(app PRIVATE libada_app)
add_subdirectory(ada_app)
