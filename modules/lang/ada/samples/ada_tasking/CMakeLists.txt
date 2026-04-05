# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2025 Zephyr Ada Contributors

cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(ada_tasking_demo)

# ADA_RTS_DIR is passed by the regression script (or set in the environment).
# No src/main.c needed — ada_alire_application() auto-generates the C entry
# shim that calls ada_appinit() (GNAT elaboration) then ada_main().
ada_alire_application(
  LIBNAME     libada_app
  ADA_APP_DIR ${CMAKE_CURRENT_SOURCE_DIR}
)
target_link_libraries(app PRIVATE libada_app)
