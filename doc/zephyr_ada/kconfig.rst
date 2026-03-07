.. _ada_kconfig:

Kconfig Integration
####################

Zephyr applications are configured through Kconfig. Ada applications access Kconfig
parameters as type-safe Ada constants via the auto-generated ``Zephyr.Config`` package,
eliminating the need for C preprocessor ``#ifdef`` directives in Ada code.

Generated Package
*****************

During the build, :file:`scripts/kconfig_to_ada.py` reads
:file:`build/zephyr/include/generated/zephyr/autoconf.h` and generates
:file:`ada_app/config/zephyr_config.ads`:

.. code-block:: ada

   --  Generated from Zephyr Kconfig - DO NOT EDIT MANUALLY
   package Zephyr.Config is

      --  Stack sizes
      Main_Stack_Size         : constant := 4096;
      Idle_Stack_Size         : constant := 256;
      Isr_Stack_Size          : constant := 2048;

      --  System clock
      Sys_Clock_Exists        : constant Boolean := True;
      Sys_Clock_Hw_Cycles_Per_Sec : constant := 48_000_000;
      Sys_Clock_Ticks_Per_Sec : constant := 10_000;

      --  Ada runtime
      Ada_Max_Tasks           : constant := 8;
      Ada_Main_Stack_Size     : constant := 4096;
      Ada_Task_Stack_Size     : constant := 2048;
      Ada_Secondary_Stack_Size : constant := 256;

      --  Memory
      Sram_Base_Address       : constant := 16#1FFFF000#;
      Sram_Size               : constant := 16;
      Flash_Size              : constant := 128;
      Num_Irqs                : constant := 32;

   end Zephyr.Config;

Using Kconfig from Ada
**********************

Import the package and use constants directly:

.. code-block:: ada

   with Zephyr.Config;

   package My_Driver is
      --  Derive baud rate divisor from configured system clock
      Divisor : constant :=
         Zephyr.Config.Sys_Clock_Hw_Cycles_Per_Sec / (16 * 115_200);

      --  Conditionally include features based on configuration
      Has_USB : constant Boolean := Zephyr.Config.Usbd_Enabled;
   end My_Driver;

This replaces C-style conditional compilation:

.. code-block:: c

   /* C approach (avoided in Ada) */
   #if defined(CONFIG_USBD_ENABLED)
   void usb_init(void) { ... }
   #endif

Ada-Specific Kconfig Options
*****************************

These options are defined by the Ada module's :file:`Kconfig.ada`:

.. list-table::
   :header-rows: 1
   :widths: 35 15 50

   * - Option
     - Default
     - Description
   * - :kconfig:option:`CONFIG_ADA`
     - ``n``
     - Enable Ada language support
   * - :kconfig:option:`CONFIG_ADA_MAX_TASKS`
     - ``8``
     - Maximum concurrent Ada tasks (also sets ``DYNAMIC_THREAD_POOL_SIZE``)
   * - :kconfig:option:`CONFIG_ADA_MAIN_STACK_SIZE`
     - ``4096``
     - Stack size for the Ada environment task (bytes)
   * - :kconfig:option:`CONFIG_ADA_TASK_STACK_SIZE`
     - ``2048``
     - Default stack size for Ada task type instances (bytes)
   * - :kconfig:option:`CONFIG_ADA_SECONDARY_STACK_SIZE`
     - ``256``
     - Secondary stack per task (bytes)
   * - :kconfig:option:`CONFIG_ADA_TASK_PRIORITY_BASE`
     - ``0``
     - Zephyr base priority for Ada task priority mapping
   * - :kconfig:option:`CONFIG_ADA_INTERRUPT_HANDLING`
     - ``y``
     - Enable ``Attach_Handler`` interrupt support
   * - :kconfig:option:`CONFIG_ADA_KCONFIG_PACKAGE`
     - ``y``
     - Generate ``Zephyr.Config`` Ada package

Naming Convention
*****************

The generator converts ``CONFIG_FOO_BAR`` to Ada's ``Foo_Bar`` convention:

.. list-table::
   :header-rows: 1
   :widths: 50 50

   * - Kconfig (C)
     - Ada constant
   * - ``CONFIG_SYS_CLOCK_HW_CYCLES_PER_SEC``
     - ``Sys_Clock_Hw_Cycles_Per_Sec``
   * - ``CONFIG_MAIN_STACK_SIZE``
     - ``Main_Stack_Size``
   * - ``CONFIG_NUM_IRQS``
     - ``Num_Irqs``
   * - ``CONFIG_SRAM_BASE_ADDRESS``
     - ``Sram_Base_Address``

Type Mapping
*************

.. list-table::
   :header-rows: 1
   :widths: 30 30 40

   * - Kconfig value
     - Ada type
     - Example
   * - ``1`` (bool)
     - ``Boolean``
     - ``Sys_Clock_Exists : constant Boolean := True;``
   * - Integer
     - anonymous numeric
     - ``Main_Stack_Size : constant := 4096;``
   * - Hex ``0x1FFF``
     - anonymous hex
     - ``Sram_Base_Address : constant := 16#1FFF#;``
   * - String ``"name"``
     - ``String``
     - ``Board_Name : constant String := "frdm_kl25z";``

Regenerating the Package
*************************

The package is regenerated automatically whenever :file:`autoconf.h` changes (CMake tracks
the dependency). To force regeneration:

.. code-block:: shell

   west build --cmake-only   # re-run CMake
   west build                # triggers kconfig_to_ada.py if autoconf.h changed

You can also run the generator manually:

.. code-block:: shell

   python3 modules/lang/ada/scripts/kconfig_to_ada.py \
     --input build/zephyr/include/generated/zephyr/autoconf.h \
     --output ada_app/config/zephyr_config.ads

   # Include ALL configs (not just Ada-relevant subset):
   python3 ... --all
