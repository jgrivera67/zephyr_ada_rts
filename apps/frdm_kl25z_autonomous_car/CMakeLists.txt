# SPDX-License-Identifier: Apache-2.0
#
# FRDM-KL25Z Autonomous Car - Zephyr Ada port
# Target: NXP KL25Z (ARM Cortex-M0+, 16 KB SRAM, 128 KB flash)

cmake_minimum_required(VERSION 3.20.0)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(frdm_kl25z_autonomous_car)

# The Ada application crate lives at the project root (no ada_app/ subdirectory).
# ada_alire_application() handles: Kconfig→Ada, DTS→Ada, alr build,
# the C entry shim (ada_appinit + ada_main), and RTS linking.
ada_alire_application(
  LIBNAME     libada_app
  ADA_APP_DIR ${CMAKE_CURRENT_SOURCE_DIR}
)
target_link_libraries(app PRIVATE libada_app)
