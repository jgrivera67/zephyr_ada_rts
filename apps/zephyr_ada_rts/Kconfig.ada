# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2025 Zephyr Ada Contributors
#
# Kconfig options for Ada language support in Zephyr RTOS.
# When upstreaming, this file will be sourced from modules/Kconfig.ada.

config ADA
	bool "Ada language support"
	select THREAD_CUSTOM_DATA
	select THREAD_STACK_INFO
	select DYNAMIC_THREAD
	help
	  Enable Ada language support via the GNAT Ada compiler and
	  Zephyr Ada Runtime System (RTS). When enabled, applications
	  can be written in Ada using native Ada tasking, protected
	  objects, and entry calls — without directly using Zephyr
	  threading APIs.

if ADA

config ADA_MAX_TASKS
	int "Maximum number of concurrent Ada tasks"
	default 8
	range 1 64
	help
	  Sets the maximum number of Ada tasks (including the
	  environment task) that can exist concurrently. Each Ada
	  task maps to a Zephyr thread. This also sets
	  DYNAMIC_THREAD_POOL_SIZE to the same value.

config ADA_MAIN_STACK_SIZE
	int "Stack size for Ada environment task (bytes)"
	default 4096
	range 1024 65536
	help
	  Stack size in bytes for the Ada main environment task.
	  This is the task that runs the Ada main subprogram.
	  Increase if Ada elaboration or main task requires more stack.

config ADA_TASK_STACK_SIZE
	int "Default stack size for Ada tasks (bytes)"
	default 2048
	range 512 65536
	help
	  Default stack size in bytes for dynamically created Ada tasks
	  (task type instantiations). Individual tasks can override
	  this via the Storage_Size aspect.

config ADA_SECONDARY_STACK_SIZE
	int "Secondary stack size per Ada task (bytes)"
	default 256
	range 64 4096
	help
	  Size in bytes of the secondary stack allocated per Ada task.
	  The secondary stack is used for function returns with
	  unconstrained types and other dynamic allocations.

config ADA_TASK_PRIORITY_BASE
	int "Zephyr base priority for Ada tasks"
	default 0
	range -16 14
	help
	  Zephyr thread priority used as the base for Ada task priorities.
	  Ada task priorities are mapped to Zephyr priorities relative
	  to this base. Lower values are higher priority in Zephyr.

config ADA_INTERRUPT_HANDLING
	bool "Ada interrupt handler support"
	default y
	depends on ADA
	help
	  Enable support for Ada interrupt handlers using the
	  Ada 2012 Attach_Handler aspect on protected procedures.
	  When enabled, the Ada RTS registers handlers with
	  Zephyr's IRQ subsystem at elaboration time.

config ADA_KCONFIG_PACKAGE
	bool "Generate Zephyr.Config Ada package from Kconfig"
	default y
	depends on ADA
	help
	  When enabled, the build system generates a Zephyr.Config
	  Ada package from the active Kconfig configuration. Ada code
	  can then access Kconfig settings as type-safe Ada constants
	  without using C preprocessor directives.

endif # ADA
