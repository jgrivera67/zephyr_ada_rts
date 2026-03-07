# SPDX-License-Identifier: Apache-2.0

include(ExternalProject)
find_package(Python3 REQUIRED COMPONENTS Interpreter)

set(libname libada_tasking)

# ---------------------------------------------------------------------------
# Kconfig-to-Ada: Generate Zephyr.Config Ada package from autoconf.h
# This allows Ada code to access Kconfig parameters as type-safe Ada constants
# without using C preprocessor #ifdef directives.
# ---------------------------------------------------------------------------
set(AUTOCONF_H "${CMAKE_BINARY_DIR}/zephyr/include/generated/zephyr/autoconf.h")
set(KCONFIG_ADA_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/../../../../scripts/kconfig_to_ada.py")
set(KCONFIG_ADA_FILE   "${CMAKE_CURRENT_SOURCE_DIR}/config/zephyr_config.ads")

add_custom_command(
  OUTPUT  ${KCONFIG_ADA_FILE}
  COMMAND ${Python3_EXECUTABLE} ${KCONFIG_ADA_SCRIPT}
          --input  ${AUTOCONF_H}
          --output ${KCONFIG_ADA_FILE}
  DEPENDS ${AUTOCONF_H} ${KCONFIG_ADA_SCRIPT}
  COMMENT "Generating Zephyr.Config Ada package from Kconfig"
)

add_custom_target(ada_kconfig_gen DEPENDS ${KCONFIG_ADA_FILE})

# ---------------------------------------------------------------------------
# Device Tree to Ada: Generate Zephyr.Device_Tree package from compiled DTS
# Provides type-safe access to hardware base addresses and IRQ numbers.
# ---------------------------------------------------------------------------
set(DTS_FILE          "${CMAKE_BINARY_DIR}/zephyr/zephyr.dts")
set(DT_ADA_SCRIPT     "${CMAKE_CURRENT_SOURCE_DIR}/../../../../scripts/dt_to_ada.py")
set(DT_ADA_FILE       "${CMAKE_CURRENT_SOURCE_DIR}/config/zephyr-device_tree.ads")

add_custom_command(
  OUTPUT  ${DT_ADA_FILE}
  COMMAND ${Python3_EXECUTABLE} ${DT_ADA_SCRIPT}
          --input  ${DTS_FILE}
          --output ${DT_ADA_FILE}
  DEPENDS ${DTS_FILE} ${DT_ADA_SCRIPT}
  COMMENT "Generating Zephyr.Device_Tree Ada package from DTS"
)

add_custom_target(ada_dt_gen DEPENDS ${DT_ADA_FILE})
# ---------------------------------------------------------------------------

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
  DEPENDS ada_kconfig_gen ada_dt_gen  # Ensure Ada packages generated before build
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

# ---------------------------------------------------------------------------
# Auto-generate C entry shim: calls ada_appinit() (GNAT elaboration) then
# ada_main() (Ada main subprogram).
# ---------------------------------------------------------------------------
set(_ada_shim_c "${CMAKE_CURRENT_BINARY_DIR}/ada_entry_shim.c")
file(WRITE ${_ada_shim_c}
  "/* Auto-generated Ada entry shim                                         */\n"
  "/* Convention: Ada main subprogram exported as \"ada_main\"                */\n"
  "extern void ada_appinit(void);\n"
  "extern void ada_main(void);\n"
  "\n"
  "int main(void)\n"
  "{\n"
  "    ada_appinit(); /* GNAT elaboration: packages, tasks, ISRs */\n"
  "    ada_main();    /* Ada main subprogram                     */\n"
  "    return 0;\n"
  "}\n"
)
target_sources(app PRIVATE ${_ada_shim_c})