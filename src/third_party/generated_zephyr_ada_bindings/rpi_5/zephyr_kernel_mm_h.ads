pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with sys_ustdint_h;
with System;

package zephyr_kernel_mm_h is

   K_MEM_CACHE_NONE : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:34

   K_MEM_CACHE_WT : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:37

   K_MEM_CACHE_WB : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:40
   --  unsupported macro: K_MEM_CACHE_MASK (BIT(3) - 1)
   --  unsupported macro: K_MEM_PERM_RW BIT(3)
   --  unsupported macro: K_MEM_PERM_EXEC BIT(4)
   --  unsupported macro: K_MEM_PERM_USER BIT(5)
   --  unsupported macro: K_MEM_DIRECT_MAP BIT(6)
   --  unsupported macro: K_MEM_MAP_UNINIT BIT(16)
   --  unsupported macro: K_MEM_MAP_LOCK BIT(17)
   --  unsupported macro: K_MEM_MAP_UNPAGED BIT(18)

  -- * Copyright (c) 2020 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @brief Kernel Memory Management
  -- * @defgroup kernel_memory_management Kernel Memory Management
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @name Caching mode definitions.
  -- *
  -- * These are mutually exclusive.
  -- *
  -- * @{
  --  

  --* No caching. Most drivers want this.  
  --* Write-through caching. Used by certain drivers.  
  --* Full write-back caching. Any RAM mapped wants this.  
  -- * ARM64 Specific flags are defined in arch/arm64/arm_mem.h,
  -- * pay attention to be not conflicted when updating these flags.
  --  

  --* Reserved bits for cache modes in k_map() flags argument  
  --* @}  
  --*
  -- * @name Region permission attributes.
  -- *
  -- * Default is read-only, no user, no exec
  -- *
  -- * @{
  --  

  --* Region will have read/write access (and not read-only)  
  --* Region will be executable (normally forbidden)  
  --* Region will be accessible to user mode (normally supervisor-only)  
  --* @}  
  --*
  -- * @name Region mapping behaviour attributes
  -- *
  -- * @{
  --  

  --* Region will be mapped to 1:1 virtual and physical address  
  --* @}  
  --*
  -- * @name k_mem_map() control flags
  -- *
  -- * @{
  --  

  --*
  -- * @brief The mapped region is not guaranteed to be zeroed.
  -- *
  -- * This may improve performance. The associated page frames may contain
  -- * indeterminate data, zeroes, or even sensitive information.
  -- *
  -- * This may not be used with K_MEM_PERM_USER as there are no circumstances
  -- * where this is safe.
  --  

  --*
  -- * Region will be pinned in memory and never paged
  -- *
  -- * Such memory is guaranteed to never produce a page fault due to page-outs
  -- * or copy-on-write once the mapping call has returned. Physical page frames
  -- * will be pre-fetched as necessary and pinned.
  --  

  --*
  -- * Region will be unpaged i.e. not mapped into memory
  -- *
  -- * This is meant to be used by kernel code and not by application code.
  -- *
  -- * Corresponding memory address range will be set so no actual memory will
  -- * be allocated initially. Allocation will happen through demand paging when
  -- * addresses in that range are accessed. This is incompatible with
  -- * K_MEM_MAP_LOCK.
  -- *
  -- * When this flag is specified, the phys argument to arch_mem_map()
  -- * is interpreted as a backing store location value not a physical address.
  -- * This is very similar to arch_mem_page_out() in that regard.
  -- * Two special location values are defined: ARCH_UNPAGED_ANON_ZERO and
  -- * ARCH_UNPAGED_ANON_UNINIT. Those are to be used with anonymous memory
  -- * mappings for zeroed and uninitialized pages respectively.
  --  

  --* @}  
  --*
  -- * Return the amount of free memory available
  -- *
  -- * The returned value will reflect how many free RAM page frames are available.
  -- * If demand paging is enabled, it may still be possible to allocate more.
  -- *
  -- * The information reported by this function may go stale immediately if
  -- * concurrent memory mappings or page-ins take place.
  -- *
  -- * @return Free physical RAM, in bytes
  --  

   function k_mem_free_get return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_free_get";

  --*
  -- * Map anonymous memory into Zephyr's address space
  -- *
  -- * This function effectively increases the data space available to Zephyr.
  -- * The kernel will choose a base virtual address and return it to the caller.
  -- * The memory will have access permissions for all contexts set per the
  -- * provided flags argument.
  -- *
  -- * If user thread access control needs to be managed in any way, do not enable
  -- * K_MEM_PERM_USER flags here; instead manage the region's permissions
  -- * with memory domain APIs after the mapping has been established. Setting
  -- * K_MEM_PERM_USER here will allow all user threads to access this memory
  -- * which is usually undesirable.
  -- *
  -- * Unless K_MEM_MAP_UNINIT is used, the returned memory will be zeroed.
  -- *
  -- * The mapped region is not guaranteed to be physically contiguous in memory.
  -- * Physically contiguous buffers should be allocated statically and pinned
  -- * at build time.
  -- *
  -- * Pages mapped in this way have write-back cache settings.
  -- *
  -- * The returned virtual memory pointer will be page-aligned. The size
  -- * parameter, and any base address for re-mapping purposes must be page-
  -- * aligned.
  -- *
  -- * Note that the allocation includes two guard pages immediately before
  -- * and after the requested region. The total size of the allocation will be
  -- * the requested size plus the size of these two guard pages.
  -- *
  -- * Many K_MEM_MAP_* flags have been implemented to alter the behavior of this
  -- * function, with details in the documentation for these flags.
  -- *
  -- * @param size Size of the memory mapping. This must be page-aligned.
  -- * @param flags K_MEM_PERM_*, K_MEM_MAP_* control flags.
  -- * @return The mapped memory location, or NULL if insufficient virtual address
  -- *         space, insufficient physical memory to establish the mapping,
  -- *         or insufficient memory for paging structures.
  --  

   function k_mem_map (size : stddef_h.size_t; flags : sys_ustdint_h.uint32_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_map";

  --*
  -- * Create an unpaged mapping
  -- *
  -- * This maps backing-store "location" tokens into Zephyr's address space.
  -- * Corresponding memory address range will be set so no actual memory will
  -- * be allocated initially. Allocation will happen through demand paging when
  -- * addresses in the mapped range are accessed.
  -- *
  -- * The kernel will choose a base virtual address and return it to the caller.
  -- * The memory access permissions for all contexts will be set per the
  -- * provided flags argument.
  -- *
  -- * If user thread access control needs to be managed in any way, do not enable
  -- * K_MEM_PERM_USER flags here; instead manage the region's permissions
  -- * with memory domain APIs after the mapping has been established. Setting
  -- * K_MEM_PERM_USER here will allow all user threads to access this memory
  -- * which is usually undesirable.
  -- *
  -- * This is incompatible with K_MEM_MAP_LOCK.
  -- *
  -- * The provided backing-store "location" token must be linearly incrementable
  -- * by a page size across the entire mapping.
  -- *
  -- * Allocated pages will have write-back cache settings.
  -- *
  -- * The returned virtual memory pointer will be page-aligned. The size
  -- * parameter, and any base address for re-mapping purposes must be page-
  -- * aligned.
  -- *
  -- * Note that the allocation includes two guard pages immediately before
  -- * and after the requested region. The total size of the allocation will be
  -- * the requested size plus the size of these two guard pages.
  -- *
  -- * @param location Backing store initial location token
  -- * @param size Size of the memory mapping. This must be page-aligned.
  -- * @param flags K_MEM_PERM_*, K_MEM_MAP_* control flags.
  -- * @return The mapping location, or NULL if insufficient virtual address
  -- *         space to establish the mapping, or insufficient memory for paging
  -- *         structures.
  --  

   function k_mem_map_unpaged
     (location : sys_ustdint_h.uintptr_t;
      size : stddef_h.size_t;
      flags : sys_ustdint_h.uint32_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_map_unpaged";

  --*
  -- * Un-map mapped memory
  -- *
  -- * This removes a memory mapping for the provided page-aligned region.
  -- * Associated page frames will be free and the kernel may re-use the associated
  -- * virtual address region. Any paged out data pages may be discarded.
  -- *
  -- * Calling this function on a region which was not mapped to begin with is
  -- * undefined behavior.
  -- *
  -- * @param addr Page-aligned memory region base virtual address
  -- * @param size Page-aligned memory region size
  --  

   procedure k_mem_unmap (addr : System.Address; size : stddef_h.size_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_unmap";

  --*
  -- * Modify memory mapping attribute flags
  -- *
  -- * This updates caching, access and control flags for the provided
  -- * page-aligned memory region.
  -- *
  -- * Calling this function on a region which was not mapped to begin with is
  -- * undefined behavior. However system memory implicitly mapped at boot time
  -- * is supported.
  -- *
  -- * @param addr Page-aligned memory region base virtual address
  -- * @param size Page-aligned memory region size
  -- * @param flags K_MEM_PERM_*, K_MEM_MAP_* control flags.
  -- * @return 0 for success, negative error code otherwise.
  --  

   function k_mem_update_flags
     (addr : System.Address;
      size : stddef_h.size_t;
      flags : sys_ustdint_h.uint32_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_update_flags";

  --*
  -- * Given an arbitrary region, provide a aligned region that covers it
  -- *
  -- * The returned region will have both its base address and size aligned
  -- * to the provided alignment value.
  -- *
  -- * @param[out] aligned_addr Aligned address
  -- * @param[out] aligned_size Aligned region size
  -- * @param[in]  addr Region base address
  -- * @param[in]  size Region size
  -- * @param[in]  align What to align the address and size to
  -- * @retval offset between aligned_addr and addr
  --  

   function k_mem_region_align
     (aligned_addr : access sys_ustdint_h.uintptr_t;
      aligned_size : access stddef_h.size_t;
      addr : sys_ustdint_h.uintptr_t;
      size : stddef_h.size_t;
      align : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/mm.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_region_align";

  --* @}  
end zephyr_kernel_mm_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
