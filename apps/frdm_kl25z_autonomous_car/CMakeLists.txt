# SPDX-License-Identifier: Apache-2.0
#
# FRDM-KL25Z Autonomous Car - Zephyr Ada port
# Target: NXP KL25Z (ARM Cortex-M0+, 16 KB SRAM, 128 KB flash)

cmake_minimum_required(VERSION 3.20.0)

# zephyr-lang-ada is registered via west (west.yml → modules/lang/ada).
# ada_alire_application() is provided by that module.
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(frdm_kl25z_autonomous_car)

# Point ada_alire_application() at the local zephyr_ada_rts clone.
# Remove this line once zephyr_ada_rts is published to alire-index and
# the module can infer the path from the Alire cache.
set(ADA_RTS_DIR "/home/josegrivera/my-projects/zephyr_ada_rts")

# The Ada application crate lives at the project root (no ada_app/ subdirectory).
# ada_alire_application() handles: Kconfig→Ada, DTS→Ada, alr build,
# the C entry shim (ada_appinit + ada_main), and RTS linking.
ada_alire_application(
  LIBNAME     libada_app
  ADA_APP_DIR ${CMAKE_CURRENT_SOURCE_DIR}
)

# Car-specific linker fragment: provides __interrupt_stack_start/_end symbols
# used by stack_trace_capture.adb.
zephyr_linker_sources(SECTIONS ada_sections.ld)

target_link_libraries(app PRIVATE libada_app)
