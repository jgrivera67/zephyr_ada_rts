pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with sys_ustdint_h;
with stddef_h;
with Interfaces.C.Extensions;

package zephyr_kernel_internal_mm_h is

   --  unsupported macro: K_MEM_VIRT_OFFSET ((CONFIG_KERNEL_VM_BASE + CONFIG_KERNEL_VM_OFFSET) - (CONFIG_SRAM_BASE_ADDRESS + CONFIG_SRAM_OFFSET))
   --  arg-macro: function K_MEM_PHYS_ADDR (virt)
   --    return (virt) - K_MEM_VIRT_OFFSET;
   --  arg-macro: function K_MEM_VIRT_ADDR (phys)
   --    return (phys) + K_MEM_VIRT_OFFSET;
  -- * Copyright (c) 2020 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @defgroup kernel_mm_internal_apis Kernel Memory Management Internal APIs
  -- * @ingroup internal_api
  -- * @{
  --  

  --*
  -- * @def K_MEM_VIRT_OFFSET
  -- * @brief Address offset of permanent virtual mapping from physical address.
  -- *
  -- * This is the offset to subtract from a virtual address mapped in the
  -- * kernel's permanent mapping of RAM, to obtain its physical address.
  -- *
  -- *     virt_addr = phys_addr + K_MEM_VIRT_OFFSET
  -- *
  -- * This only works for virtual addresses within the interval
  -- * [CONFIG_KERNEL_VM_BASE, CONFIG_KERNEL_VM_BASE + (CONFIG_SRAM_SIZE * 1024)).
  -- *
  -- * These macros are intended for assembly, linker code, and static initializers.
  -- * Use with care.
  -- *
  -- * Note that when demand paging is active, these will only work with page
  -- * frames that are pinned to their virtual mapping at boot.
  -- *
  -- * TODO: This will likely need to move to an arch API or need additional
  -- * constraints defined.
  --  

  --*
  -- * @brief Get physical address from virtual address.
  -- *
  -- * This only works in the kernel's permanent mapping of RAM.
  -- *
  -- * @param virt Virtual address
  -- *
  -- * @return Physical address.
  --  

  --*
  -- * @brief Get virtual address from physical address.
  -- *
  -- * This only works in the kernel's permanent mapping of RAM.
  -- *
  -- * @param phys Physical address
  -- *
  -- * @return Virtual address.
  --  

  --*
  -- * @brief Kernel is mapped in virtual memory if defined.
  --  

  --*
  -- * @brief Get physical address from virtual address.
  -- *
  -- * This only works in the kernel's permanent mapping of RAM.
  -- *
  -- * Just like K_MEM_PHYS_ADDR() but with type safety and assertions.
  -- *
  -- * @param virt Virtual address
  -- *
  -- * @return Physical address.
  --  

   function k_mem_phys_addr (virt : System.Address) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/internal/mm.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_phys_addr";

  -- Should be identity-mapped  
  -- TODO add assertion that this page is pinned to boot mapping,
  --	 * the above checks won't be sufficient with demand paging
  --	  

  --*
  -- * @brief Get virtual address from physical address.
  -- *
  -- * This only works in the kernel's permanent mapping of RAM.
  -- *
  -- * Just like K_MEM_VIRT_ADDR() but with type safety and assertions.
  -- *
  -- * @param phys Physical address
  -- *
  -- * @return Virtual address.
  --  

   function k_mem_virt_addr (phys : sys_ustdint_h.uintptr_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/internal/mm.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_virt_addr";

  -- TODO add assertion that this page frame is pinned to boot mapping,
  --	 * the above check won't be sufficient with demand paging
  --	  

  --*
  -- * Map a physical memory region into the kernel's virtual address space
  -- *
  -- * This function is intended for mapping memory-mapped I/O regions into
  -- * the virtual address space. Given a physical address and a size, return a
  -- * linear address representing the base of where the physical region is mapped
  -- * in the virtual address space for the Zephyr kernel.
  -- *
  -- * The memory mapped via this function must be unmapped using
  -- * k_mem_unmap_phys_bare().
  -- *
  -- * This function alters the active page tables in the area reserved
  -- * for the kernel. This function will choose the virtual address
  -- * and return it to the caller.
  -- *
  -- * Portable code should never assume that phys_addr and linear_addr will
  -- * be equal.
  -- *
  -- * Caching and access properties are controlled by the 'flags' parameter.
  -- * Unused bits in 'flags' are reserved for future expansion.
  -- * A caching mode must be selected. By default, the region is read-only
  -- * with user access and code execution forbidden. This policy is changed
  -- * by passing K_MEM_CACHE_* and K_MEM_PERM_* macros into the 'flags' parameter.
  -- *
  -- * If there is insufficient virtual address space for the mapping this will
  -- * generate a kernel panic.
  -- *
  -- * This API is only available if CONFIG_MMU is enabled.
  -- *
  -- * It is highly discouraged to use this function to map system RAM page
  -- * frames. It may conflict with anonymous memory mappings and demand paging
  -- * and produce undefined behavior.  Do not use this for RAM unless you know
  -- * exactly what you are doing. If you need a chunk of memory, use k_mem_map().
  -- * If you need a contiguous buffer of physical memory, statically declare it
  -- * and pin it at build time, it will be mapped when the system boots.
  -- *
  -- * This API is part of infrastructure still under development and may
  -- * change.
  -- *
  -- * @param[out] virt_ptr Output virtual address storage location
  -- * @param[in]  phys Physical address base of the memory region
  -- * @param[in]  size Size of the memory region
  -- * @param[in]  flags Caching mode and access flags, see K_MAP_* macros
  --  

   procedure k_mem_map_phys_bare
     (virt_ptr : System.Address;
      phys : sys_ustdint_h.uintptr_t;
      size : stddef_h.size_t;
      flags : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/internal/mm.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_map_phys_bare";

  --*
  -- * Unmap a virtual memory region from kernel's virtual address space.
  -- *
  -- * This function is intended to be used by drivers and early boot routines
  -- * where temporary memory mappings need to be made. This allows these
  -- * memory mappings to be discarded once they are no longer needed.
  -- *
  -- * This function alters the active page tables in the area reserved
  -- * for the kernel.
  -- *
  -- * This will align the input parameters to page boundaries so that
  -- * this can be used with the virtual address as returned by
  -- * k_mem_map_phys_bare().
  -- *
  -- * This API is only available if CONFIG_MMU is enabled.
  -- *
  -- * It is highly discouraged to use this function to unmap memory mappings.
  -- * It may conflict with anonymous memory mappings and demand paging and
  -- * produce undefined behavior. Do not use this unless you know exactly
  -- * what you are doing.
  -- *
  -- * This API is part of infrastructure still under development and may
  -- * change.
  -- *
  -- * @param virt Starting address of the virtual address region to be unmapped.
  -- * @param size Size of the virtual address region
  --  

   procedure k_mem_unmap_phys_bare (virt : access sys_ustdint_h.uint8_t; size : stddef_h.size_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/internal/mm.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_unmap_phys_bare";

  --*
  -- * Map memory into virtual address space with guard pages.
  -- *
  -- * This maps memory into virtual address space with a preceding and
  -- * a succeeding guard pages. The memory mapped via this function must be
  -- * unmapped using k_mem_unmap_phys_guard().
  -- *
  -- * This function maps a contiguous physical memory region into kernel's
  -- * virtual address space with a preceding and a succeeding guard pages.
  -- * Given a physical address and a size, return a linear address representing
  -- * the base of where the physical region is mapped in the virtual address
  -- * space for the Zephyr kernel.
  -- *
  -- * This function alters the active page tables in the area reserved
  -- * for the kernel. This function will choose the virtual address
  -- * and return it to the caller.
  -- *
  -- * If user thread access control needs to be managed in any way, do not enable
  -- * K_MEM_PERM_USER flags here; instead manage the region's permissions
  -- * with memory domain APIs after the mapping has been established. Setting
  -- * K_MEM_PERM_USER here will allow all user threads to access this memory
  -- * which is usually undesirable.
  -- *
  -- * Unless K_MEM_MAP_UNINIT is used, the returned memory will be zeroed.
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
  -- * @see k_mem_map() for additional information if called via that.
  -- *
  -- * @param phys Physical address base of the memory region if not requesting
  -- *             anonymous memory. Must be page-aligned.
  -- * @param size Size of the memory mapping. This must be page-aligned.
  -- * @param flags K_MEM_PERM_*, K_MEM_MAP_* control flags.
  -- * @param is_anon True is requesting mapping with anonymous memory.
  -- *
  -- * @return The mapped memory location, or NULL if insufficient virtual address
  -- *         space, insufficient physical memory to establish the mapping,
  -- *         or insufficient memory for paging structures.
  --  

   function k_mem_map_phys_guard
     (phys : sys_ustdint_h.uintptr_t;
      size : stddef_h.size_t;
      flags : sys_ustdint_h.uint32_t;
      is_anon : Extensions.bool) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/internal/mm.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_map_phys_guard";

  --*
  -- * Un-map memory mapped via k_mem_map_phys_guard().
  -- *
  -- * This removes the memory mappings for the provided page-aligned region,
  -- * and the two guard pages surrounding the region.
  -- *
  -- * This function alters the active page tables in the area reserved
  -- * for the kernel.
  -- *
  -- * @see k_mem_unmap() for additional information if called via that.
  -- *
  -- * @note Calling this function on a region which was not mapped via
  -- *       k_mem_map_phys_guard() to begin with is undefined behavior.
  -- *
  -- * @param addr Page-aligned memory region base virtual address
  -- * @param size Page-aligned memory region size
  -- * @param is_anon True if the mapped memory is from anonymous memory.
  --  

   procedure k_mem_unmap_phys_guard
     (addr : System.Address;
      size : stddef_h.size_t;
      is_anon : Extensions.bool)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/kernel/internal/mm.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "k_mem_unmap_phys_guard";

  --* @}  
end zephyr_kernel_internal_mm_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
