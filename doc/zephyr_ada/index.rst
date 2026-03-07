.. _language_ada:

Ada Language Support
####################

Ada is a strongly-typed, safety-critical systems programming language with built-in support for
concurrency, real-time scheduling, and hardware-level access. Its native tasking model — tasks,
protected objects, and entry calls — maps naturally to Zephyr's threading and synchronization
primitives, enabling high-integrity embedded software without C interop boilerplate.

Ada's compile-time checks eliminate entire classes of bugs common in C (buffer overflows, type
mismatches, uninitialized data, integer overflows) and its representation clauses provide
type-safe, vendor-independent access to memory-mapped hardware registers.

These properties make Ada an excellent choice for safety-critical Zephyr applications, including
aerospace, automotive, industrial control, and medical devices.

.. note::

   Ada support for Zephyr builds on earlier work presented at the Ada Developers Workshop 2025
   and published in the Ada User Journal (2026). This module represents the next step: a
   production-ready, upstreamable integration following Zephyr's optional module pattern.

.. toctree::
   :maxdepth: 2

   getting_started.rst
   tasking.rst
   kconfig.rst
   interrupts.rst
   drivers.rst

Ada-First Architecture
**********************

The central design principle is **Ada-First**: application developers write pure Ada using
language-native constructs. They do not call Zephyr C APIs directly.

.. list-table::
   :header-rows: 1
   :widths: 30 30 40

   * - Instead of (C API)
     - Use (Ada native)
     - Notes
   * - ``k_thread_create()``
     - ``task T is ...``
     - Ada task type, maps to Zephyr thread
   * - ``k_mutex_lock()``
     - ``protected`` object
     - Ada protected object, maps to Zephyr mutex
   * - ``k_sem_take()``
     - ``entry`` call / rendezvous
     - Ada entry with barrier condition
   * - ``IRQ_CONNECT()`` / ``irq_enable()``
     - ``Attach_Handler`` aspect
     - Ada 2012 protected procedure
   * - ``DT_REG_ADDR(node)``
     - ``Zephyr.Device_Tree.Uart0.Base_Address``
     - Generated from board DTS
   * - ``CONFIG_FOO`` (``#ifdef``)
     - ``Zephyr.Config.Foo``
     - Generated from autoconf.h

The GNAT Ada Runtime System (RTS) for Zephyr (``zephyr_ada_rts``) transparently maps Ada
tasking semantics to Zephyr kernel primitives. Application code never sees ``k_thread``,
``k_mutex``, or ``k_sem``.

Key Features
************

- **Ada tasking on Zephyr threads** — task types map to ``k_thread``, ``protected`` objects to
  ``k_mutex``, entries to Zephyr semaphores
- **Kconfig-to-Ada** — Zephyr configuration parameters exposed as Ada constants via the
  generated ``Zephyr.Config`` package
- **Device tree integration** — hardware properties (base addresses, IRQs, clock frequencies)
  available as Ada constants in the generated ``Zephyr.Device_Tree`` package
- **Interrupt handlers in Ada** — Ada 2012 ``Attach_Handler`` aspect on protected procedures
- **Register abstractions** — representation clauses for type-safe, shift-free register access
- **Alire integration** — clean Alire/GPRbuild build via CMake ``ExternalProject``
- **Multi-architecture** — ARM Cortex-M/R/A, RISC-V, Xtensa ESP32

Supported Architectures
***********************

.. list-table::
   :header-rows: 1
   :widths: 25 25 50

   * - Architecture
     - Alire Toolchain
     - Status
   * - ARM Cortex-M/R (32-bit)
     - ``gnat_arm_elf``
     - Fully supported
   * - RISC-V 64-bit
     - ``gnat_riscv64_elf``
     - Fully supported
   * - Xtensa ESP32
     - ``gnat_xtensa_esp32_elf``
     - Supported
   * - ARM Cortex-A (64-bit)
     - custom toolchain
     - Partial (``ADA_TOOLCHAIN_PATH``)

Related Resources
*****************

- :ref:`getting_started_ada` — Installation and first application
- :ref:`ada_tasking` — Ada concurrency on Zephyr
- :ref:`ada_kconfig` — Accessing Kconfig from Ada
- :ref:`ada_interrupts` — Writing interrupt handlers in Ada
- :ref:`ada_drivers` — Device driver development in Ada
