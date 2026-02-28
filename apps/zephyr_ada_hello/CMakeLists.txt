# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(zephyr_ada_hello_world)

target_sources(app PRIVATE src/main.c)

# Add Zephyr Ada shim for RTS (non-inline syscall wrappers)
target_sources(app PRIVATE ../zephyr_ada_rts/src/zephyr/zephyr_ada_shim.c)

target_link_libraries(app PRIVATE libada_app)
add_subdirectory(ada_app)
