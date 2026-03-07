.. _getting_started_ada:

Getting Started with Ada on Zephyr
###################################

This guide walks through installing the required tools, enabling the Ada module, and building
the Hello World sample.

Prerequisites
*************

- A working Zephyr development environment (see :ref:`getting_started`)
- `Alire <https://alire.ada.dev>`_ package manager installed and on ``PATH``
- Python 3.8 or newer (for code generation scripts)

The GNAT Ada cross-compiler is managed automatically by Alire — no manual installation needed
for ARM Cortex-M/R, RISC-V, or Xtensa targets.

Enabling the Ada Module
***********************

Ada support is an optional module. Enable it with west:

.. code-block:: shell

   west config manifest.project-filter +zephyr-lang-ada
   west update

This places the Ada language support in :file:`modules/lang/ada` in your Zephyr workspace.

Building the Hello World Sample
*******************************

The quickest way to get started is with the included sample:

.. code-block:: shell

   cd samples/ada/hello_world
   west build -b frdm_kl25z .

Or for RISC-V:

.. code-block:: shell

   west build -b hifive1_revb .

Flash and run:

.. code-block:: shell

   west flash
   west espressif monitor   # or your board's serial terminal

Expected output:

.. code-block:: none

   Hello from Ada task 1!
   Hello from Ada task 2!
   Rendezvous complete.

Application Structure
*********************

An Ada Zephyr application has the following structure:

.. code-block:: none

   my_app/
   ├── CMakeLists.txt       # calls ada_alire_application() — that's it
   ├── Kconfig              # sources Kconfig.ada for Ada options
   ├── prj.conf             # CONFIG_ADA=y and Ada tuning knobs
   └── ada_app/
       ├── alire.toml       # Alire crate with zephyr_ada_rts dependency
       ├── config/          # auto-generated Ada packages (do not edit)
       │   ├── zephyr_config.ads      # Zephyr.Config  (from Kconfig)
       │   └── zephyr-device_tree.ads # Zephyr.Device_Tree (from DTS)
       └── src/
           ├── my_app.ads   # Ada package spec
           └── my_app.adb   # Ada package body — tasks, protected objects, etc.

There is **no** ``src/main.c``. The :cmake:func:`ada_alire_application` function
auto-generates a C entry shim that calls GNAT's elaboration code (``ada_appinit``)
followed by your exported Ada main subprogram (``ada_main``). This is the same
pattern the Rust ``zephyr`` crate uses — the C ``main`` symbol is an implementation
detail hidden inside the library, not something the application author writes.

``prj.conf`` Configuration
***************************

Enable Ada and tune runtime parameters:

.. code-block:: kconfig

   # Enable Ada language support (auto-selects required Zephyr options)
   CONFIG_ADA=y

   # Runtime tuning (all have sensible defaults)
   CONFIG_ADA_MAX_TASKS=8
   CONFIG_ADA_MAIN_STACK_SIZE=4096
   CONFIG_ADA_TASK_STACK_SIZE=2048
   CONFIG_ADA_SECONDARY_STACK_SIZE=256

:kconfig:option:`CONFIG_ADA` automatically selects:

- ``CONFIG_THREAD_CUSTOM_DATA`` (required for Ada task local storage)
- ``CONFIG_DYNAMIC_THREAD`` (required for dynamic Ada task creation)

Ada Entry Point
***************

Export exactly one procedure from your Ada library using the fixed convention
``External_Name => "ada_main"``:

.. code-block:: ada

   package My_App is
      procedure Main                              -- Ada identifier: anything
        with Export, Convention => C,
             External_Name => "ada_main";        -- C name: always "ada_main"
   end My_App;

The CMakeLists.txt needs no entry-point configuration at all:

.. code-block:: cmake

   ada_alire_application(LIBNAME libmyapp)
   target_link_libraries(app PRIVATE libmyapp)

The :cmake:func:`ada_alire_application` function auto-generates a C ``main()``
that Zephyr's kernel calls. It invokes ``ada_appinit()`` (GNAT elaboration:
package body initializers, library-level task activation, ISR registration)
and then calls ``ada_main()``. No ``src/main.c`` file is needed.

``"ada_main"`` is a **fixed convention**, not a configurable parameter. There
is no way for CMake to automatically discover which symbol an Ada static library
exports as its entry point at configure time, so requiring a known name
eliminates the dual-maintenance problem of keeping a CMake parameter and an Ada
``External_Name`` in sync. This is the same rationale behind Rust's
``#[zephyr::entry]`` macro — it always generates a fixed symbol name.

.. note::

   **Why ada_appinit must precede the Ada main:** Ada elaboration is the Ada
   equivalent of C++ global constructors. GNAT's binder generates ``ada_appinit``
   to run all package body initializers in dependency order. Zephyr's kernel
   cannot call this automatically (it has no knowledge of Ada), so the
   auto-generated shim does it before calling your main subprogram.

.. _ada_alire_toml:

Alire Configuration
*******************

The :file:`ada_app/alire.toml` declares the RTS dependency:

.. code-block:: toml

   [crate-origin]
   name = "my_ada_app"
   version = "0.1.0"

   [[depends-on]]
   zephyr_ada_rts = "*"

   # Architecture toolchain added automatically by CMake
   # (gnat_arm_elf, gnat_riscv64_elf, or gnat_xtensa_esp32_elf)

Build Flow
**********

The CMake build system orchestrates the full build in the correct order:

1. Zephyr's CMake configures the kernel and generates :file:`autoconf.h` and
   :file:`zephyr.dts`
2. ``ada_kconfig_gen`` runs :file:`scripts/kconfig_to_ada.py` → generates
   :file:`config/zephyr_config.ads`
3. ``ada_dt_gen`` runs :file:`scripts/dt_to_ada.py` → generates
   :file:`config/zephyr-device_tree.ads`
4. ``ExternalProject`` invokes ``alr build`` (with the correct cross-compiler
   selected from the architecture detected in :file:`zephyr/.config`)
5. Zephyr's linker links the Ada static library with the Zephyr kernel

Custom Toolchains
*****************

If you have a custom GNAT cross-compiler not managed by Alire, set:

.. code-block:: shell

   west build -b my_board . -- -DADA_TOOLCHAIN_PATH=/opt/gnat-aarch64-elf

This adds :file:`/opt/gnat-aarch64-elf/bin` to ``PATH`` during the Ada build.
