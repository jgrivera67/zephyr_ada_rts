pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with zephyr_device_h;

package zephyr_init_h is

   Z_INIT_EARLY_EARLY : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:82
   Z_INIT_PRE_KERNEL_1_PRE_KERNEL_1 : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:83
   Z_INIT_PRE_KERNEL_2_PRE_KERNEL_2 : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:84
   Z_INIT_POST_KERNEL_POST_KERNEL : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:85
   Z_INIT_APPLICATION_APPLICATION : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:86
   Z_INIT_SMP_SMP : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:87

   Z_INIT_ORD_EARLY : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:90
   Z_INIT_ORD_PRE_KERNEL_1 : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:91
   Z_INIT_ORD_PRE_KERNEL_2 : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:92
   Z_INIT_ORD_POST_KERNEL : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:93
   Z_INIT_ORD_APPLICATION : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:94
   Z_INIT_ORD_SMP : constant := 5;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:95
   --  arg-macro: procedure Z_INIT_ENTRY_NAME (init_id)
   --    _CONCAT(__init_, init_id)
   --  unsupported macro: Z_INIT_ENTRY_SECTION(level,prio,sub_prio) __attribute__((__section__( ".z_init_" #level "_P_" STRINGIFY(prio) "_SUB_" STRINGIFY(sub_prio)"_")))
   --  unsupported macro: INIT_LEVEL_ORD(level) COND_CASE_1(Z_INIT_EARLY_ ##level, (Z_INIT_ORD_EARLY), Z_INIT_PRE_KERNEL_1_ ##level, (Z_INIT_ORD_PRE_KERNEL_1), Z_INIT_PRE_KERNEL_2_ ##level, (Z_INIT_ORD_PRE_KERNEL_2), Z_INIT_POST_KERNEL_ ##level, (Z_INIT_ORD_POST_KERNEL), Z_INIT_APPLICATION_ ##level, (Z_INIT_ORD_APPLICATION), Z_INIT_SMP_ ##level, (Z_INIT_ORD_SMP), (ZERO_OR_COMPILE_ERROR(0)))
   --  arg-macro: procedure SYS_INIT (init_fn, level, prio)
   --    SYS_INIT_NAMED(init_fn, init_fn, level, prio)
   --  arg-macro: procedure SYS_INIT_NAMED (name, init_fn_, level, prio)
   --    static const Z_DECL_ALIGN(struct init_entry) Z_INIT_ENTRY_SECTION(level, prio, 0) __used __noasan Z_INIT_ENTRY_NAME(name) := {.init_fn := (init_fn_), .dev := NULL}

  -- * Copyright (c) 2015 Intel Corporation.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @defgroup sys_init System Initialization
  -- * @ingroup os_services
  -- *
  -- * Zephyr offers an infrastructure to call initialization code before `main`.
  -- * Such initialization calls can be registered using SYS_INIT() or
  -- * SYS_INIT_NAMED() macros. By using a combination of initialization levels and
  -- * priorities init sequence can be adjusted as needed. The available
  -- * initialization levels are described, in order, below:
  -- *
  -- * - `EARLY`: Used very early in the boot process, right after entering the C
  -- *   domain (``z_cstart()``). This can be used in architectures and SoCs that
  -- *   extend or implement architecture code and use drivers or system services
  -- *   that have to be initialized before the Kernel calls any architecture
  -- *   specific initialization code.
  -- * - `PRE_KERNEL_1`: Executed in Kernel's initialization context, which uses
  -- *   the interrupt stack. At this point Kernel services are not yet available.
  -- * - `PRE_KERNEL_2`: Same as `PRE_KERNEL_1`.
  -- * - `POST_KERNEL`: Executed after Kernel is alive. From this point on, Kernel
  -- *   primitives can be used.
  -- * - `APPLICATION`: Executed just before application code (`main`).
  -- * - `SMP`: Only available if @kconfig{CONFIG_SMP} is enabled, specific for
  -- *   SMP.
  -- *
  -- * Initialization priority can take a value in the range of 0 to 999.
  -- *
  -- * @note The same infrastructure is used by devices.
  -- * @{
  --  

  --*
  -- * @brief Structure to store initialization entry information.
  -- *
  -- * @internal
  -- * Init entries need to be defined following these rules:
  -- *
  -- * - Their name must be set using Z_INIT_ENTRY_NAME().
  -- * - They must be placed in a special init section, given by
  -- *   Z_INIT_ENTRY_SECTION().
  -- * - They must be aligned, e.g. using Z_DECL_ALIGN().
  -- *
  -- * See SYS_INIT_NAMED() for an example.
  -- * @endinternal
  --  

  --*
  --	 * If the init function belongs to a SYS_INIT, this field stored the
  --	 * initialization function, otherwise it is set to NULL.
  --	  

   type init_entry is record
      init_fn : access function return int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:71
      dev : access constant zephyr_device_h.device;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:76
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/init.h:66

  --*
  --	 * If the init entry belongs to a device, this fields stores a
  --	 * reference to it, otherwise it is set to NULL.
  --	  

  --* @cond INTERNAL_HIDDEN  
  -- Helper definitions to evaluate level equality  
  -- Init level ordinals  
  --*
  -- * @brief Obtain init entry name.
  -- *
  -- * @param init_id Init entry unique identifier.
  --  

  --*
  -- * @brief Init entry section.
  -- *
  -- * Each init entry is placed in a section with a name crafted so that it allows
  -- * linker scripts to sort them according to the specified
  -- * level/priority/sub-priority.
  --  

  --* @endcond  
  --*
  -- * @brief Obtain the ordinal for an init level.
  -- *
  -- * @param level Init level (EARLY, PRE_KERNEL_1, PRE_KERNEL_2, POST_KERNEL,
  -- * APPLICATION, SMP).
  -- *
  -- * @return Init level ordinal.
  --  

  --*
  -- * @brief Register an initialization function.
  -- *
  -- * The function will be called during system initialization according to the
  -- * given level and priority.
  -- *
  -- * @param init_fn Initialization function.
  -- * @param level Initialization level. Allowed tokens: `EARLY`, `PRE_KERNEL_1`,
  -- * `PRE_KERNEL_2`, `POST_KERNEL`, `APPLICATION` and `SMP` if
  -- * @kconfig{CONFIG_SMP} is enabled.
  -- * @param prio Initialization priority within @p _level. Note that it must be a
  -- * decimal integer literal without leading zeroes or sign (e.g. `32`), or an
  -- * equivalent symbolic name (e.g. `#define MY_INIT_PRIO 32`); symbolic
  -- * expressions are **not** permitted (e.g.
  -- * `CONFIG_KERNEL_INIT_PRIORITY_DEFAULT + 5`).
  --  

  --*
  -- * @brief Register an initialization function (named).
  -- *
  -- * @note This macro can be used for cases where the multiple init calls use the
  -- * same init function.
  -- *
  -- * @param name Unique name for SYS_INIT entry.
  -- * @param init_fn_ See SYS_INIT().
  -- * @param level See SYS_INIT().
  -- * @param prio See SYS_INIT().
  -- *
  -- * @see SYS_INIT()
  --  

  --* @}  
end zephyr_init_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
