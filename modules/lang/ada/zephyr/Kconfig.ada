# Copyright (c) 2025 Zephyr Ada Contributors
# SPDX-License-Identifier: Apache-2.0
#
# Ada language support Kconfig options.
# Sourced by Zephyr's modules/Kconfig.ada when the module is present.

config ADA
	bool "Ada language support"
	select THREAD_CUSTOM_DATA
	select DYNAMIC_THREAD
	help
	  Enable Ada language support via the GNAT Ada compiler and
	  the Zephyr Ada Runtime System (RTS). When enabled, applications
	  can be written in Ada using native Ada tasking, protected objects,
	  and entry calls without directly calling Zephyr C APIs.

	  Requires Alire (https://alire.ada.dev) to be installed and on PATH.
	  The GNAT cross-compiler is managed automatically by Alire for
	  ARM Cortex-M/R (gnat_arm_elf), RISC-V (gnat_riscv64_elf), and
	  Xtensa ESP32 (gnat_xtensa_esp32_elf) targets.

if ADA

config ADA_MAX_TASKS
	int "Maximum number of concurrent Ada tasks"
	default 8
	range 1 64
	help
	  Sets the maximum number of Ada tasks (including the environment
	  task) that can exist concurrently. Each Ada task maps to one
	  Zephyr thread. This value also configures DYNAMIC_THREAD_POOL_SIZE.

config ADA_MAIN_STACK_SIZE
	int "Stack size for Ada environment task (bytes)"
	default 4096
	range 1024 65536
	help
	  Stack size in bytes for the Ada main environment task — the task
	  that runs the Ada main subprogram during program elaboration and
	  application execution.

config ADA_TASK_STACK_SIZE
	int "Default stack size for Ada task instances (bytes)"
	default 2048
	range 512 65536
	help
	  Default stack size in bytes for dynamically created Ada tasks
	  (task type instantiations). Individual tasks can override this
	  with the Storage_Size aspect.

config ADA_SECONDARY_STACK_SIZE
	int "Secondary stack size per Ada task (bytes)"
	default 256
	range 64 4096
	help
	  Size in bytes of the secondary stack allocated per Ada task.
	  Used for unconstrained array returns and other dynamic allocations
	  that do not escape the subprogram.

config ADA_TASK_PRIORITY_BASE
	int "Zephyr base priority for Ada tasks"
	default 0
	range -16 14
	help
	  The Zephyr thread priority used as the base for Ada task priority
	  mapping. Ada task priorities are mapped relative to this value.
	  Lower Zephyr values are higher priority.

config ADA_INTERRUPT_HANDLING
	bool "Ada interrupt handler support (Attach_Handler)"
	default y
	help
	  Enable support for Ada 2012 interrupt handlers using the
	  Attach_Handler aspect on protected procedures. The Ada RTS
	  registers handlers with Zephyr's IRQ subsystem at elaboration
	  time via irq_connect_dynamic() and irq_enable().

config ADA_KCONFIG_PACKAGE
	bool "Generate Zephyr.Config Ada package from Kconfig"
	default y
	help
	  When enabled, the build system generates a Zephyr.Config Ada
	  package from autoconf.h before invoking the Ada build. Ada code
	  accesses Kconfig settings as type-safe Ada constants, avoiding
	  C preprocessor #ifdef directives entirely.

config ADA_DEVICE_TREE_PACKAGE
	bool "Generate Zephyr.Device_Tree Ada package from DTS"
	default y
	help
	  When enabled, the build system generates a Zephyr.Device_Tree
	  Ada package from the compiled board DTS before invoking the Ada
	  build. Provides type-safe access to hardware base addresses, IRQ
	  numbers, and clock frequencies for writing Ada device drivers.

endif # ADA
