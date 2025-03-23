pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with zephyr_arch_arch_interface_h;
with sys_ustdint_h;
with System;
with zephyr_kernel_thread_h;

package zephyr_app_memory_mem_domain_h is

  -- * Copyright (c) 2017 Linaro Limited
  -- * Copyright (c) 2018-2020 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @defgroup mem_domain_apis Memory domain APIs
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @def K_MEM_PARTITION_DEFINE
  -- *
  -- * @brief Statically declare a memory partition
  --  

  --*
  -- * @brief Memory Partition
  -- *
  -- * A memory partition is a region of memory in the linear address space
  -- * with a specific access policy.
  -- *
  -- * The alignment of the starting address, and the alignment of the size
  -- * value may have varying requirements based on the capabilities of the
  -- * underlying memory management hardware; arbitrary values are unlikely
  -- * to work.
  --  

  --* start address of memory partition  
  --* size of memory partition  
  --* attribute of memory partition  
  --*
  -- * @brief Memory Domain
  -- *
  -- * A memory domain is a collection of memory partitions, used to represent
  -- * a user thread's access policy for the linear address space. A thread
  -- * may be a member of only one memory domain, but any memory domain may
  -- * have multiple threads that are members.
  -- *
  -- * Supervisor threads may also be a member of a memory domain; this has
  -- * no implications on their memory access but can be useful as any child
  -- * threads inherit the memory domain membership of the parent.
  -- *
  -- * A user thread belonging to a memory domain with no active partitions
  -- * will have guaranteed access to its own stack buffer, program text,
  -- * and read-only data.
  --  

  --* partitions in the domain  
  --* Doubly linked list of member threads  
  --* number of active partitions in the domain  
  --*
  -- * Default memory domain
  -- *
  -- * All threads are a member of some memory domain, even if running in
  -- * supervisor mode. Threads belong to this default memory domain if they
  -- * haven't been added to or inherited membership from some other domain.
  -- *
  -- * This memory domain has the z_libc_partition partition for the C library
  -- * added to it if exists.
  --  

  -- To support use of IS_ENABLED for the APIs below  
   type k_mem_partition is null record;   -- incomplete struct

  --*
  -- * @brief Initialize a memory domain.
  -- *
  -- * Initialize a memory domain with given name and memory partitions.
  -- *
  -- * See documentation for k_mem_domain_add_partition() for details about
  -- * partition constraints.
  -- *
  -- * Do not call k_mem_domain_init() on the same memory domain more than once,
  -- * doing so is undefined behavior.
  -- *
  -- * @param domain The memory domain to be initialized.
  -- * @param num_parts The number of array items of "parts" parameter.
  -- * @param parts An array of pointers to the memory partitions. Can be NULL
  -- *              if num_parts is zero.
  -- *
  -- * @retval 0 if successful
  -- * @retval -EINVAL if invalid parameters supplied
  -- * @retval -ENOMEM if insufficient memory
  --  

   function k_mem_domain_init
     (domain : access zephyr_arch_arch_interface_h.k_mem_domain;
      num_parts : sys_ustdint_h.uint8_t;
      parts : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/app_memory/mem_domain.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_domain_init";

  --*
  -- * @brief Add a memory partition into a memory domain.
  -- *
  -- * Add a memory partition into a memory domain. Partitions must conform to
  -- * the following constraints:
  -- *
  -- * - Partitions in the same memory domain may not overlap each other.
  -- * - Partitions must not be defined which expose private kernel
  -- *   data structures or kernel objects.
  -- * - The starting address alignment, and the partition size must conform to
  -- *   the constraints of the underlying memory management hardware, which
  -- *   varies per architecture.
  -- * - Memory domain partitions are only intended to control access to memory
  -- *   from user mode threads.
  -- * - If CONFIG_EXECUTE_XOR_WRITE is enabled, the partition must not allow
  -- *   both writes and execution.
  -- *
  -- * Violating these constraints may lead to CPU exceptions or undefined
  -- * behavior.
  -- *
  -- * @param domain The memory domain to be added a memory partition.
  -- * @param part The memory partition to be added
  -- *
  -- * @retval 0 if successful
  -- * @retval -EINVAL if invalid parameters supplied
  -- * @retval -ENOSPC if no free partition slots available
  --  

   function k_mem_domain_add_partition (domain : access zephyr_arch_arch_interface_h.k_mem_domain; part : access k_mem_partition) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/app_memory/mem_domain.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_domain_add_partition";

  --*
  -- * @brief Remove a memory partition from a memory domain.
  -- *
  -- * Remove a memory partition from a memory domain.
  -- *
  -- * @param domain The memory domain to be removed a memory partition.
  -- * @param part The memory partition to be removed
  -- *
  -- * @retval 0 if successful
  -- * @retval -EINVAL if invalid parameters supplied
  -- * @retval -ENOENT if no matching partition found
  --  

   function k_mem_domain_remove_partition (domain : access zephyr_arch_arch_interface_h.k_mem_domain; part : access k_mem_partition) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/app_memory/mem_domain.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_domain_remove_partition";

  --*
  -- * @brief Add a thread into a memory domain.
  -- *
  -- * Add a thread into a memory domain. It will be removed from whatever
  -- * memory domain it previously belonged to.
  -- *
  -- * @param domain The memory domain that the thread is going to be added into.
  -- * @param thread ID of thread going to be added into the memory domain.
  -- *
  -- * @return 0 if successful, fails otherwise.
  --  

   function k_mem_domain_add_thread (domain : access zephyr_arch_arch_interface_h.k_mem_domain; thread : zephyr_kernel_thread_h.k_tid_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/app_memory/mem_domain.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_domain_add_thread";

  --* @}  
end zephyr_app_memory_mem_domain_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
