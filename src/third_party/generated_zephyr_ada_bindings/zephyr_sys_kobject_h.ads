pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
limited with zephyr_kernel_thread_h;
with Interfaces.C.Extensions;
with stddef_h;

package zephyr_sys_kobject_h is

  -- * Copyright (c) 2020 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   type z_futex_data is null record;   -- incomplete struct

  --*
  -- * @brief Kernel Object Types
  -- *
  -- * This enumeration needs to be kept in sync with the lists of kernel objects
  -- * and subsystems in scripts/build/gen_kobject_list.py, as well as the otype_to_str()
  -- * function in kernel/userspace.c
  --  

   type k_objects is 
     (K_OBJ_ANY,
      K_OBJ_MEM_SLAB,
      K_OBJ_MSGQ,
      K_OBJ_MUTEX,
      K_OBJ_PIPE,
      K_OBJ_QUEUE,
      K_OBJ_POLL_SIGNAL,
      K_OBJ_SEM,
      K_OBJ_STACK,
      K_OBJ_THREAD,
      K_OBJ_TIMER,
      K_OBJ_THREAD_STACK_ELEMENT,
      K_OBJ_NET_SOCKET,
      K_OBJ_NET_IF,
      K_OBJ_SYS_MUTEX,
      K_OBJ_FUTEX,
      K_OBJ_CONDVAR,
      K_OBJ_DRIVER_GPIO,
      K_OBJ_DRIVER_SHARED_IRQ,
      K_OBJ_DRIVER_CRYPTO,
      K_OBJ_DRIVER_ADC,
      K_OBJ_DRIVER_AUXDISPLAY,
      K_OBJ_DRIVER_BBRAM,
      K_OBJ_DRIVER_BT_HCI,
      K_OBJ_DRIVER_CAN,
      K_OBJ_DRIVER_CELLULAR,
      K_OBJ_DRIVER_CHARGER,
      K_OBJ_DRIVER_CLOCK_CONTROL,
      K_OBJ_DRIVER_COMPARATOR,
      K_OBJ_DRIVER_COREDUMP,
      K_OBJ_DRIVER_COUNTER,
      K_OBJ_DRIVER_DAC,
      K_OBJ_DRIVER_DAI,
      K_OBJ_DRIVER_DISPLAY,
      K_OBJ_DRIVER_DMA,
      K_OBJ_DRIVER_EDAC,
      K_OBJ_DRIVER_EEPROM,
      K_OBJ_DRIVER_EMUL_BBRAM,
      K_OBJ_DRIVER_FUEL_GAUGE_EMUL,
      K_OBJ_DRIVER_EMUL_SENSOR,
      K_OBJ_DRIVER_ENTROPY,
      K_OBJ_DRIVER_ESPI,
      K_OBJ_DRIVER_ESPI_SAF,
      K_OBJ_DRIVER_FLASH,
      K_OBJ_DRIVER_FPGA,
      K_OBJ_DRIVER_FUEL_GAUGE,
      K_OBJ_DRIVER_GNSS,
      K_OBJ_DRIVER_HAPTICS,
      K_OBJ_DRIVER_HWSPINLOCK,
      K_OBJ_DRIVER_I2C,
      K_OBJ_DRIVER_I2C_TARGET,
      K_OBJ_DRIVER_I2S,
      K_OBJ_DRIVER_I3C,
      K_OBJ_DRIVER_IPM,
      K_OBJ_DRIVER_KSCAN,
      K_OBJ_DRIVER_LED,
      K_OBJ_DRIVER_LED_STRIP,
      K_OBJ_DRIVER_LORA,
      K_OBJ_DRIVER_MBOX,
      K_OBJ_DRIVER_MDIO,
      K_OBJ_DRIVER_MIPI_DBI,
      K_OBJ_DRIVER_MIPI_DSI,
      K_OBJ_DRIVER_MSPI,
      K_OBJ_DRIVER_PECI,
      K_OBJ_DRIVER_PS2,
      K_OBJ_DRIVER_PTP_CLOCK,
      K_OBJ_DRIVER_PWM,
      K_OBJ_DRIVER_REGULATOR_PARENT,
      K_OBJ_DRIVER_REGULATOR,
      K_OBJ_DRIVER_RESET,
      K_OBJ_DRIVER_RETAINED_MEM,
      K_OBJ_DRIVER_RTC,
      K_OBJ_DRIVER_SDHC,
      K_OBJ_DRIVER_SENSOR,
      K_OBJ_DRIVER_SMBUS,
      K_OBJ_DRIVER_SPI,
      K_OBJ_DRIVER_STEPPER,
      K_OBJ_DRIVER_SYSCON,
      K_OBJ_DRIVER_TEE,
      K_OBJ_DRIVER_VIDEO,
      K_OBJ_DRIVER_W1,
      K_OBJ_DRIVER_WDT,
      K_OBJ_DRIVER_CAN_TRANSCEIVER,
      K_OBJ_DRIVER_NRF_CLOCK_CONTROL,
      K_OBJ_DRIVER_I3C_TARGET,
      K_OBJ_DRIVER_ITS,
      K_OBJ_DRIVER_VTD,
      K_OBJ_DRIVER_TGPIO,
      K_OBJ_DRIVER_PCIE_CTRL,
      K_OBJ_DRIVER_PCIE_EP,
      K_OBJ_DRIVER_SVC,
      K_OBJ_DRIVER_UART,
      K_OBJ_DRIVER_BC12_EMUL,
      K_OBJ_DRIVER_BC12,
      K_OBJ_DRIVER_USBC_PPC,
      K_OBJ_DRIVER_TCPC,
      K_OBJ_DRIVER_USBC_VBUS,
      K_OBJ_DRIVER_IVSHMEM,
      K_OBJ_DRIVER_ETHPHY,
      K_OBJ_LAST)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:30

  --* @cond
  --	 *  Doxygen should ignore this build-time generated include file
  --	 *  when generating API documentation.  Enumeration values are
  --	 *  generated during build by gen_kobject_list.py.  It includes
  --	 *  basic kernel objects (e.g.  pipes and mutexes) and driver types.
  --	  

  --* @endcond
  --	  

  --*
  -- * @defgroup usermode_apis User Mode APIs
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @brief Grant a static thread access to a list of kernel objects
  -- *
  -- * For threads declared with K_THREAD_DEFINE(), grant the thread access to
  -- * a set of kernel objects. These objects do not need to be in an initialized
  -- * state. The permissions will be granted when the threads are initialized
  -- * in the early boot sequence.
  -- *
  -- * All arguments beyond the first must be pointers to kernel objects.
  -- *
  -- * @param name_ Name of the thread, as passed to K_THREAD_DEFINE()
  --  

  --* Object initialized  
  --* Object is Public  
  --* Object allocated  
  --* Driver Object  
  --*
  -- * Grant a thread access to a kernel object
  -- *
  -- * The thread will be granted access to the object if the caller is from
  -- * supervisor mode, or the caller is from user mode AND has permissions
  -- * on both the object and the thread whose access is being granted.
  -- *
  -- * @param object Address of kernel object
  -- * @param thread Thread to grant access to the object
  --  

  --*
  -- * Revoke a thread's access to a kernel object
  -- *
  -- * The thread will lose access to the object if the caller is from
  -- * supervisor mode, or the caller is from user mode AND has permissions
  -- * on both the object and the thread whose access is being revoked.
  -- *
  -- * @param object Address of kernel object
  -- * @param thread Thread to remove access to the object
  --  

  --*
  -- * @brief Release an object
  -- *
  -- * Allows user threads to drop their own permission on an object
  -- * Their permissions are automatically cleared when a thread terminates.
  -- *
  -- * @param object The object to be released
  -- *
  --  

  --*
  -- * Grant all present and future threads access to an object
  -- *
  -- * If the caller is from supervisor mode, or the caller is from user mode and
  -- * have sufficient permissions on the object, then that object will have
  -- * permissions granted to it for *all* current and future threads running in
  -- * the system, effectively becoming a public kernel object.
  -- *
  -- * Use of this API should be avoided on systems that are running untrusted code
  -- * as it is possible for such code to derive the addresses of kernel objects
  -- * and perform unwanted operations on them.
  -- *
  -- * It is not possible to revoke permissions on public objects; once public,
  -- * any thread may use it.
  -- *
  -- * @param object Address of kernel object
  --  

  --*
  -- * Check if a kernel object is of certain type and is valid.
  -- *
  -- * This checks if the kernel object exists, of certain type,
  -- * and has been initialized.
  -- *
  -- * @param obj Address of the kernel object
  -- * @param otype Object type (use K_OBJ_ANY for ignoring type checking)
  -- * @return True if kernel object (@a obj) exists, of certain type, and
  -- *         has been initialized. False otherwise.
  --  

  -- LCOV_EXCL_START  
  --*
  -- * @internal
  --  

   procedure z_impl_k_object_access_grant (object : System.Address; thread : access zephyr_kernel_thread_h.k_thread)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "z_impl_k_object_access_grant";

  --*
  -- * @internal
  --  

   procedure k_object_access_revoke (object : System.Address; thread : access zephyr_kernel_thread_h.k_thread)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "k_object_access_revoke";

  --*
  -- * @internal
  --  

   procedure z_impl_k_object_release (object : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "z_impl_k_object_release";

   procedure k_object_access_all_grant (object : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "k_object_access_all_grant";

   function k_object_is_valid (obj : System.Address; otype : k_objects) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "k_object_is_valid";

  -- LCOV_EXCL_STOP  
  --*
  -- * Allocate a kernel object of a designated type
  -- *
  -- * This will instantiate at runtime a kernel object of the specified type,
  -- * returning a pointer to it. The object will be returned in an uninitialized
  -- * state, with the calling thread being granted permission on it. The memory
  -- * for the object will be allocated out of the calling thread's resource pool.
  -- *
  -- * @note This function is available only if @kconfig{CONFIG_DYNAMIC_OBJECTS}
  -- * is selected.
  -- *
  -- * @note Thread stack object has to use k_object_alloc_size() since stacks may
  -- * have different sizes.
  -- *
  -- * @param otype Requested kernel object type
  -- * @return A pointer to the allocated kernel object, or NULL if memory wasn't
  -- * available
  --  

  --*
  -- * Allocate a kernel object of a designated type and a given size
  -- *
  -- * This will instantiate at runtime a kernel object of the specified type,
  -- * returning a pointer to it. The object will be returned in an uninitialized
  -- * state, with the calling thread being granted permission on it. The memory
  -- * for the object will be allocated out of the calling thread's resource pool.
  -- *
  -- * This function is specially helpful for thread stack objects because
  -- * their sizes can vary. Other objects should probably look k_object_alloc().
  -- *
  -- * @note This function is available only if @kconfig{CONFIG_DYNAMIC_OBJECTS}
  -- * is selected.
  -- *
  -- * @param otype Requested kernel object type
  -- * @param size Requested kernel object size
  -- * @return A pointer to the allocated kernel object, or NULL if memory wasn't
  -- * available
  --  

  --*
  -- * Free a kernel object previously allocated with k_object_alloc()
  -- *
  -- * This will return memory for a kernel object back to resource pool it was
  -- * allocated from.  Care must be exercised that the object will not be used
  -- * during or after when this call is made.
  -- *
  -- * @note This function is available only if @kconfig{CONFIG_DYNAMIC_OBJECTS}
  -- * is selected.
  -- *
  -- * @param obj Pointer to the kernel object memory address.
  --  

  -- LCOV_EXCL_START  
   function z_impl_k_object_alloc (otype : k_objects) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "z_impl_k_object_alloc";

   function z_impl_k_object_alloc_size (otype : k_objects; size : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "z_impl_k_object_alloc_size";

  --*
  -- * @brief Free an object
  -- *
  -- * @param obj
  --  

   procedure k_object_free (obj : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/kobject.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "k_object_free";

  -- LCOV_EXCL_STOP  
  --* @}  
end zephyr_sys_kobject_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
