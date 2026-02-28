# SPDX-License-Identifier: Apache-2.0

include(ExternalProject)

set(libname libada_app )

# Check for custom Ada toolchain path
# Users can specify ADA_TOOLCHAIN_PATH to use their own GNAT cross-compiler
# Example: cmake -DADA_TOOLCHAIN_PATH=/opt/gnat-aarch64-elf
set(ADA_TOOLCHAIN_PATH "$ENV{ADA_TOOLCHAIN_PATH}" CACHE PATH "Path to custom Ada toolchain (optional)")

if(ADA_TOOLCHAIN_PATH)
  # Custom toolchain specified - use it instead of Alire
  message(STATUS "Using custom Ada toolchain from: ${ADA_TOOLCHAIN_PATH}")
  if(NOT EXISTS "${ADA_TOOLCHAIN_PATH}/bin")
    message(FATAL_ERROR "Custom Ada toolchain path ${ADA_TOOLCHAIN_PATH}/bin does not exist")
  endif()
  set(USE_CUSTOM_TOOLCHAIN TRUE)
  set(ADA_TOOLCHAIN "custom")
else()
  # Determine Ada toolchain based on Zephyr's architecture configuration
  # Read the Zephyr .config file to detect the target architecture
  file(READ "${CMAKE_BINARY_DIR}/zephyr/.config" ZEPHYR_CONFIG)

  # Map Zephyr architecture to Ada toolchain
  # Only architectures with available GNAT cross-compilers in Alire are supported
  if(ZEPHYR_CONFIG MATCHES "CONFIG_RISCV=y")
    set(ADA_TOOLCHAIN "gnat_riscv64_elf")
    message(STATUS "Ada toolchain for RISC-V: ${ADA_TOOLCHAIN}")
  elseif(ZEPHYR_CONFIG MATCHES "CONFIG_ARM=y")
    set(ADA_TOOLCHAIN "gnat_arm_elf")
    message(STATUS "Ada toolchain for 32-bit ARM: ${ADA_TOOLCHAIN}")
  elseif(ZEPHYR_CONFIG MATCHES "CONFIG_XTENSA=y")
    set(ADA_TOOLCHAIN "gnat_xtensa_esp32_elf")
    message(STATUS "Ada toolchain for Xtensa ESP32: ${ADA_TOOLCHAIN}")
  elseif(ZEPHYR_CONFIG MATCHES "CONFIG_ARM64=y")
    message(FATAL_ERROR "ARM64 (aarch64) not supported - no gnat_aarch64_elf in Alire. Build your own and set ADA_TOOLCHAIN_PATH=/path/to/gnat-aarch64-elf")
  elseif(ZEPHYR_CONFIG MATCHES "CONFIG_X86=y")
    message(FATAL_ERROR "x86/x86_64 not supported - no gnat_x86_elf in Alire. Build your own and set ADA_TOOLCHAIN_PATH=/path/to/gnat-x86-elf")
  elseif(ZEPHYR_CONFIG MATCHES "CONFIG_ARC=y")
    message(FATAL_ERROR "ARC not supported - no gnat_arc_elf in Alire. Build your own and set ADA_TOOLCHAIN_PATH=/path/to/gnat-arc-elf")
  else()
    message(FATAL_ERROR "Unable to determine Zephyr architecture. Supported: ARM (32-bit), RISC-V, Xtensa ESP32. Or set ADA_TOOLCHAIN_PATH for custom toolchain")
  endif()
  set(USE_CUSTOM_TOOLCHAIN FALSE)
endif()

# Construct build command based on toolchain source
if(USE_CUSTOM_TOOLCHAIN)
  # Custom toolchain: Add to PATH and build without Alire dependency management
  set(BUILD_CMD "export PATH=${ADA_TOOLCHAIN_PATH}/bin:\$PATH && cd ${CMAKE_CURRENT_SOURCE_DIR} && alr build -- -XBoard=${BOARD}")
  message(STATUS "Using custom Ada toolchain - will add ${ADA_TOOLCHAIN_PATH}/bin to PATH")
else()
  # Alire-managed toolchain: Use 'alr with' to add correct cross-compiler dependency
  set(BUILD_CMD "cd ${CMAKE_CURRENT_SOURCE_DIR} && (alr with --del gnat_arm_elf 2>/dev/null || true) && (alr with --del gnat_riscv64_elf 2>/dev/null || true) && (alr with --del gnat_xtensa_esp32_elf 2>/dev/null || true) && alr with ${ADA_TOOLCHAIN} && alr build -- -XBoard=${BOARD}")
  message(STATUS "Using Alire-managed Ada toolchain: ${ADA_TOOLCHAIN}")
endif()

ExternalProject_Add(
  ${libname}_external_project
  PREFIX     ${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
  BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}
  CONFIGURE_COMMAND ""    # Skip configuring the project, e.g. with autoconf
  BUILD_ALWAYS 1
  BUILD_COMMAND bash -c "${BUILD_CMD}"
  INSTALL_COMMAND ""      # This particular build system has no install command
  BUILD_BYPRODUCTS ${CMAKE_CURRENT_SOURCE_DIR}/lib/${BOARD}/${libname}.a ${CMAKE_CURRENT_SOURCE_DIR}/../../zephyr_ada_rts/lib/${BOARD}/libgnat.a
  )

# Create a wrapper CMake library that our app can link with
add_library(${libname} STATIC IMPORTED GLOBAL)
add_dependencies(
  ${libname}
  ${libname}_external_project
  ada_runtime
  )

target_link_libraries( ${libname} INTERFACE ada_runtime )

set_target_properties(${libname} PROPERTIES IMPORTED_LOCATION             ${CMAKE_CURRENT_SOURCE_DIR}/lib/${BOARD}/${libname}.a)
set_target_properties(${libname} PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR})

add_library(ada_runtime STATIC IMPORTED GLOBAL)
set_target_properties(ada_runtime PROPERTIES IMPORTED_LOCATION            ${CMAKE_CURRENT_SOURCE_DIR}/../../zephyr_ada_rts/lib/${BOARD}/libgnat.a)