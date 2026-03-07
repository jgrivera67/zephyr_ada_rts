# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2025 Zephyr Ada Contributors
#
# Zephyr Ada Language Module - CMake integration
#
# This file is invoked by Zephyr's build system when CONFIG_ADA=y.
# It provides the cmake function ada_alire_application() that applications
# call from their own CMakeLists.txt to build an Ada library via Alire/GPRbuild
# and link it into the Zephyr image.
#
# Usage in application CMakeLists.txt:
#
#   find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
#   project(my_ada_app)
#   ada_alire_application()
#
# The function expects the application to have an ada_app/ subdirectory
# containing an alire.toml crate that builds a static library.

include(ExternalProject)
find_package(Python3 REQUIRED COMPONENTS Interpreter)

set(ADA_MODULE_DIR ${CMAKE_CURRENT_LIST_DIR}/..)

# ---------------------------------------------------------------------------
# Validate Ada prerequisites
# ---------------------------------------------------------------------------

find_program(ALR_EXECUTABLE alr DOC "Alire Ada package manager")
if(NOT ALR_EXECUTABLE)
  message(FATAL_ERROR
    "Alire (alr) not found. Install from https://alire.ada.dev and ensure "
    "it is on PATH. Alire manages the GNAT Ada cross-compiler automatically."
  )
endif()
message(STATUS "Found Alire: ${ALR_EXECUTABLE}")

# ---------------------------------------------------------------------------
# Architecture detection → Ada toolchain selection
# ---------------------------------------------------------------------------

file(READ "${CMAKE_BINARY_DIR}/zephyr/.config" _ZEPHYR_CONFIG)

if(_ZEPHYR_CONFIG MATCHES "CONFIG_RISCV=y")
  set(ADA_TOOLCHAIN "gnat_riscv64_elf")
elseif(_ZEPHYR_CONFIG MATCHES "CONFIG_ARM=y")
  set(ADA_TOOLCHAIN "gnat_arm_elf")
elseif(_ZEPHYR_CONFIG MATCHES "CONFIG_XTENSA=y")
  set(ADA_TOOLCHAIN "gnat_xtensa_esp32_elf")
elseif(_ZEPHYR_CONFIG MATCHES "CONFIG_ARM64=y")
  if(NOT ADA_TOOLCHAIN_PATH)
    message(FATAL_ERROR
      "ARM64 (AArch64) requires a custom GNAT toolchain. "
      "Set -DADA_TOOLCHAIN_PATH=/path/to/gnat-aarch64-elf at configure time."
    )
  endif()
elseif(_ZEPHYR_CONFIG MATCHES "CONFIG_X86=y")
  if(NOT ADA_TOOLCHAIN_PATH)
    message(FATAL_ERROR
      "x86/x86_64 requires a custom GNAT toolchain. "
      "Set -DADA_TOOLCHAIN_PATH=/path/to/gnat-x86-elf at configure time."
    )
  endif()
else()
  message(FATAL_ERROR
    "Unsupported architecture for Ada. Supported: ARM (32-bit), RISC-V, "
    "Xtensa ESP32. For other architectures set ADA_TOOLCHAIN_PATH."
  )
endif()

set(ADA_TOOLCHAIN_PATH "" CACHE PATH "Path to custom GNAT cross-compiler (optional)")

if(ADA_TOOLCHAIN_PATH)
  message(STATUS "Ada: using custom toolchain at ${ADA_TOOLCHAIN_PATH}")
  set(USE_CUSTOM_TOOLCHAIN TRUE)
else()
  message(STATUS "Ada: toolchain=${ADA_TOOLCHAIN} (managed by Alire)")
  set(USE_CUSTOM_TOOLCHAIN FALSE)
endif()

# ---------------------------------------------------------------------------
# Public CMake function: ada_alire_application()
# ---------------------------------------------------------------------------

function(ada_alire_application)
  set(options "")
  set(one_value_args LIBNAME ADA_APP_DIR)
  cmake_parse_arguments(ARG "${options}" "${one_value_args}" "" ${ARGN})

  # Defaults
  if(NOT ARG_LIBNAME)
    set(ARG_LIBNAME "libada_app")
  endif()
  if(NOT ARG_ADA_APP_DIR)
    set(ARG_ADA_APP_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ada_app")
  endif()

  # The Ada main subprogram MUST be exported with:
  #   with Export, Convention => C, External_Name => "ada_main";
  # "ada_main" is the fixed Zephyr Ada convention — not configurable.
  # This avoids the dual-maintenance problem of keeping a CMake parameter
  # and an Ada External_Name in sync. (Same rationale as Rust's #[zephyr::entry].)
  set(_ada_main_symbol "ada_main")

  set(libname      ${ARG_LIBNAME})
  set(ada_app_dir  ${ARG_ADA_APP_DIR})
  set(config_dir   "${ada_app_dir}/config")

  # ---- Kconfig-to-Ada package ----
  if(CONFIG_ADA_KCONFIG_PACKAGE)
    set(AUTOCONF_H     "${CMAKE_BINARY_DIR}/zephyr/include/generated/zephyr/autoconf.h")
    set(KCONFIG_SCRIPT "${ADA_MODULE_DIR}/scripts/kconfig_to_ada.py")
    set(KCONFIG_ADS    "${config_dir}/zephyr_config.ads")

    add_custom_command(
      OUTPUT  ${KCONFIG_ADS}
      COMMAND ${Python3_EXECUTABLE} ${KCONFIG_SCRIPT}
              --input  ${AUTOCONF_H}
              --output ${KCONFIG_ADS}
      DEPENDS ${AUTOCONF_H} ${KCONFIG_SCRIPT}
      COMMENT "Generating Zephyr.Config Ada package"
    )
    add_custom_target(ada_kconfig_gen DEPENDS ${KCONFIG_ADS})
  endif()

  # ---- Device-tree-to-Ada package ----
  if(CONFIG_ADA_DEVICE_TREE_PACKAGE)
    set(DTS_FILE   "${CMAKE_BINARY_DIR}/zephyr/zephyr.dts")
    set(DT_SCRIPT  "${ADA_MODULE_DIR}/scripts/dt_to_ada.py")
    set(DT_ADS     "${config_dir}/zephyr-device_tree.ads")

    add_custom_command(
      OUTPUT  ${DT_ADS}
      COMMAND ${Python3_EXECUTABLE} ${DT_SCRIPT}
              --input  ${DTS_FILE}
              --output ${DT_ADS}
      DEPENDS ${DTS_FILE} ${DT_SCRIPT}
      COMMENT "Generating Zephyr.Device_Tree Ada package"
    )
    add_custom_target(ada_dt_gen DEPENDS ${DT_ADS})
  endif()

  # ---- Collect generation targets ----
  set(_ada_gen_targets "")
  if(CONFIG_ADA_KCONFIG_PACKAGE)
    list(APPEND _ada_gen_targets ada_kconfig_gen)
  endif()
  if(CONFIG_ADA_DEVICE_TREE_PACKAGE)
    list(APPEND _ada_gen_targets ada_dt_gen)
  endif()

  # ---- Build command ----
  if(USE_CUSTOM_TOOLCHAIN)
    set(_build_cmd
      "export PATH=${ADA_TOOLCHAIN_PATH}/bin:$PATH && "
      "cd ${ada_app_dir} && alr build -- -XBoard=${BOARD}"
    )
  else()
    set(_build_cmd
      "cd ${ada_app_dir} && "
      "(alr with --del gnat_arm_elf 2>/dev/null || true) && "
      "(alr with --del gnat_riscv64_elf 2>/dev/null || true) && "
      "(alr with --del gnat_xtensa_esp32_elf 2>/dev/null || true) && "
      "alr with ${ADA_TOOLCHAIN} && "
      "alr build -- -XBoard=${BOARD}"
    )
  endif()
  string(CONCAT _build_cmd_str ${_build_cmd})

  # ---- Auto-generate the C entry shim ----
  # Zephyr's kernel calls C main(). We generate a thin shim here so
  # the application never needs a src/main.c. This mirrors the pattern
  # the Rust zephyr crate uses (main is inside the staticlib, not user code).
  #
  # Convention: the Ada main subprogram must use
  #   External_Name => "ada_main"
  # This is a fixed convention, not a parameter, for the same reason Rust's
  # entry point is not a configurable Cargo setting: there's no way for CMake
  # to automatically discover which symbol the Ada library exports as its entry
  # point, so we eliminate the dual-maintenance problem with a standard name.
  #
  # ada_appinit MUST precede ada_main — it is the Ada equivalent of C++ global
  # constructors (package body elaboration, task activation, ISR registration).
  set(_ada_shim_c "${CMAKE_CURRENT_BINARY_DIR}/ada_entry_shim.c")
  file(WRITE ${_ada_shim_c}
    "/* Auto-generated by ada_alire_application() — do not edit          */\n"
    "/* Convention: Ada main subprogram exported as \"${_ada_main_symbol}\" */\n"
    "extern void ada_appinit(void);\n"
    "extern void ${_ada_main_symbol}(void);\n"
    "\n"
    "int main(void)\n"
    "{\n"
    "    ada_appinit();         /* GNAT elaboration: packages, tasks, ISRs */\n"
    "    ${_ada_main_symbol}(); /* Ada main subprogram                     */\n"
    "    return 0;\n"
    "}\n"
  )
  target_sources(app PRIVATE ${_ada_shim_c})

  # ---- Ada RTS library path ----
  get_filename_component(_module_apps_dir "${ADA_MODULE_DIR}/../../../apps" ABSOLUTE)
  set(_rts_lib "${_module_apps_dir}/zephyr_ada_rts/lib/${BOARD}/libgnat.a")

  # ---- ExternalProject ----
  ExternalProject_Add(
    ${libname}_external_project
    PREFIX     ${CMAKE_CURRENT_BINARY_DIR}
    SOURCE_DIR ${ada_app_dir}
    BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}
    CONFIGURE_COMMAND ""
    BUILD_ALWAYS  1
    BUILD_COMMAND bash -c "${_build_cmd_str}"
    INSTALL_COMMAND ""
    BUILD_BYPRODUCTS
      "${ada_app_dir}/lib/${BOARD}/${libname}.a"
      "${_rts_lib}"
    DEPENDS ${_ada_gen_targets}
  )

  # ---- CMake library targets ----
  add_library(${libname} STATIC IMPORTED GLOBAL)
  add_dependencies(${libname} ${libname}_external_project ada_runtime)
  target_link_libraries(${libname} INTERFACE ada_runtime)
  set_target_properties(${libname} PROPERTIES
    IMPORTED_LOCATION             "${ada_app_dir}/lib/${BOARD}/${libname}.a"
    INTERFACE_INCLUDE_DIRECTORIES "${ada_app_dir}"
  )

  add_library(ada_runtime STATIC IMPORTED GLOBAL)
  set_target_properties(ada_runtime PROPERTIES
    IMPORTED_LOCATION "${_rts_lib}"
  )

  # Export libname to caller scope so top-level CMakeLists can link it
  set(ADA_LIBRARY_NAME ${libname} PARENT_SCOPE)
endfunction()

# ---------------------------------------------------------------------------
# Ada linker section support (GNAT sections: .dre, .mrs, etc.)
# ---------------------------------------------------------------------------

set(_ada_ld_script "${ADA_MODULE_DIR}/cmake/ada_sections.ld")
if(EXISTS "${_ada_ld_script}")
  zephyr_linker_sources(SECTIONS "${_ada_ld_script}")
endif()
