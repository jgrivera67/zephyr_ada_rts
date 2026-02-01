pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with stddef_h;
with Interfaces.C.Strings;

package zephyr_arch_arm64_arm_mmu_h is

   MT_TYPE_MASK : constant := 16#7#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:20
   --  arg-macro: function MT_TYPE (attr)
   --    return attr and MT_TYPE_MASK;

   MT_DEVICE_nGnRnE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:22
   MT_DEVICE_nGnRE : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:23
   MT_DEVICE_GRE : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:24
   MT_NORMAL_NC : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:25
   MT_NORMAL : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:26
   MT_NORMAL_WT : constant := 5;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:27
   --  unsupported macro: MEMORY_ATTRIBUTES ((0x00 << (MT_DEVICE_nGnRnE * 8)) | (0x04 << (MT_DEVICE_nGnRE * 8)) | (0x0c << (MT_DEVICE_GRE * 8)) | (0x44 << (MT_NORMAL_NC * 8)) | (0xffUL << (MT_NORMAL * 8)) | (0xbbUL << (MT_NORMAL_WT * 8)))

   MT_PERM_SHIFT : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:51
   MT_SEC_SHIFT : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:52
   MT_P_EXECUTE_SHIFT : constant := 5;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:53
   MT_U_EXECUTE_SHIFT : constant := 6;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:54
   MT_RW_AP_SHIFT : constant := 7;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:55
   MT_NO_OVERWRITE_SHIFT : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:56
   MT_NON_GLOBAL_SHIFT : constant := 9;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:57
   MT_PAGED_OUT_SHIFT : constant := 10;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:58
   --  unsupported macro: MT_RO (0U << MT_PERM_SHIFT)
   --  unsupported macro: MT_RW (1U << MT_PERM_SHIFT)
   --  unsupported macro: MT_RW_AP_ELx (1U << MT_RW_AP_SHIFT)
   --  unsupported macro: MT_RW_AP_EL_HIGHER (0U << MT_RW_AP_SHIFT)
   --  unsupported macro: MT_SECURE (0U << MT_SEC_SHIFT)
   --  unsupported macro: MT_NS (1U << MT_SEC_SHIFT)
   --  unsupported macro: MT_P_EXECUTE (0U << MT_P_EXECUTE_SHIFT)
   --  unsupported macro: MT_P_EXECUTE_NEVER (1U << MT_P_EXECUTE_SHIFT)
   --  unsupported macro: MT_U_EXECUTE (0U << MT_U_EXECUTE_SHIFT)
   --  unsupported macro: MT_U_EXECUTE_NEVER (1U << MT_U_EXECUTE_SHIFT)
   --  unsupported macro: MT_NO_OVERWRITE (1U << MT_NO_OVERWRITE_SHIFT)
   --  unsupported macro: MT_G (0U << MT_NON_GLOBAL_SHIFT)
   --  unsupported macro: MT_NG (1U << MT_NON_GLOBAL_SHIFT)
   --  unsupported macro: MT_PAGED_OUT (1U << MT_PAGED_OUT_SHIFT)
   --  unsupported macro: MT_P_RW_U_RW (MT_RW | MT_RW_AP_ELx | MT_P_EXECUTE_NEVER | MT_U_EXECUTE_NEVER)
   --  unsupported macro: MT_P_RW_U_NA (MT_RW | MT_RW_AP_EL_HIGHER | MT_P_EXECUTE_NEVER | MT_U_EXECUTE_NEVER)
   --  unsupported macro: MT_P_RO_U_RO (MT_RO | MT_RW_AP_ELx | MT_P_EXECUTE_NEVER | MT_U_EXECUTE_NEVER)
   --  unsupported macro: MT_P_RO_U_NA (MT_RO | MT_RW_AP_EL_HIGHER | MT_P_EXECUTE_NEVER | MT_U_EXECUTE_NEVER)
   --  unsupported macro: MT_P_RO_U_RX (MT_RO | MT_RW_AP_ELx | MT_P_EXECUTE_NEVER | MT_U_EXECUTE)
   --  unsupported macro: MT_P_RX_U_RX (MT_RO | MT_RW_AP_ELx | MT_P_EXECUTE | MT_U_EXECUTE)
   --  unsupported macro: MT_P_RX_U_NA (MT_RO | MT_RW_AP_EL_HIGHER | MT_P_EXECUTE | MT_U_EXECUTE_NEVER)
   --  unsupported macro: MT_DEFAULT_SECURE_STATE MT_SECURE
   --  unsupported macro: ARCH_DATA_PAGE_LOADED BIT(0)
   --  unsupported macro: ARCH_DATA_PAGE_ACCESSED BIT(1)
   --  unsupported macro: ARCH_DATA_PAGE_DIRTY BIT(2)
   --  unsupported macro: ARCH_DATA_PAGE_NOT_MAPPED BIT(3)

   ARCH_UNPAGED_ANON_ZERO : constant := 16#0000fffffffff000#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:106
   ARCH_UNPAGED_ANON_UNINIT : constant := 16#0000ffffffffe000#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:107
   --  arg-macro: procedure MMU_REGION_ENTRY (_name, _base_pa, _base_va, _size, _attrs)
   --    { .name := _name, .base_pa := _base_pa, .base_va := _base_va, .size := _size, .attrs := _attrs, }
   --  arg-macro: procedure MMU_REGION_FLAT_ENTRY (name, adr, sz, attrs)
   --    MMU_REGION_ENTRY(name, adr, adr, sz, attrs)
   --  arg-macro: procedure MMU_REGION_DT_FLAT_ENTRY (node_id, attrs)
   --    MMU_REGION_FLAT_ENTRY(DT_NODE_FULL_NAME(node_id), DT_REG_ADDR(node_id), DT_REG_SIZE(node_id), attrs),
   --  arg-macro: procedure MMU_REGION_DT_COMPAT_FOREACH_FLAT_ENTRY (compat, attr)
   --    DT_FOREACH_STATUS_OKAY_VARGS(compat, MMU_REGION_DT_FLAT_ENTRY, attr)
   --  unsupported macro: K_MEM_PARTITION_P_RW_U_RW ((k_mem_partition_attr_t) {MT_P_RW_U_RW})
   --  unsupported macro: K_MEM_PARTITION_P_RW_U_NA ((k_mem_partition_attr_t) {MT_P_RW_U_NA})
   --  unsupported macro: K_MEM_PARTITION_P_RO_U_RO ((k_mem_partition_attr_t) {MT_P_RO_U_RO})
   --  unsupported macro: K_MEM_PARTITION_P_RO_U_NA ((k_mem_partition_attr_t) {MT_P_RO_U_NA})
   --  unsupported macro: K_MEM_PARTITION_P_RX_U_RX ((k_mem_partition_attr_t) {MT_P_RX_U_RX})

  -- * Copyright 2019 Broadcom
  -- * The term "Broadcom" refers to Broadcom Inc. and/or its subsidiaries.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Following Memory types supported through MAIR encodings can be passed
  -- * by user through "attrs"(attributes) field of specified memory region.
  -- * As MAIR supports such 8 encodings, we will reserve attrs[2:0];
  -- * so that we can provide encodings upto 7 if needed in future.
  --  

  -- More flags from user's perspective are supported using remaining bits
  -- * of "attrs" field, i.e. attrs[31:3], underlying code will take care
  -- * of setting PTE fields correctly.
  -- *
  -- * current usage of attrs[31:3] is:
  -- * attrs[3] : Access Permissions
  -- * attrs[4] : Memory access from secure/ns state
  -- * attrs[5] : Execute Permissions privileged mode (PXN)
  -- * attrs[6] : Execute Permissions unprivileged mode (UXN)
  -- * attrs[7] : Mirror RO/RW permissions to EL0
  -- * attrs[8] : Overwrite existing mapping if any
  -- * attrs[9] : non-Global mapping (nG)
  -- * attrs[10]: Paged-out mapping
  -- *
  --  

  -- Definitions used by arch_page_info_get()  
  -- * Special unpaged "location" tags (highest possible descriptor physical
  -- * address values unlikely to conflict with backing store locations)
  --  

  -- Region definition data structure  
  -- Region Base Physical Address  
   type arm_mmu_region is record
      base_pa : aliased sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:114
      base_va : aliased sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:116
      size : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:118
      name : Interfaces.C.Strings.chars_ptr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:120
      attrs : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:122
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:112

  -- Region Base Virtual Address  
  -- Region size  
  -- Region Name  
  -- Region Attributes  
  -- MMU configuration data structure  
  -- Number of regions  
   type arm_mmu_config is record
      num_regions : aliased unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:128
      mmu_regions : access constant arm_mmu_region;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:130
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:126

  -- Regions  
   type arm_mmu_ptables is record
      base_xlat_table : access sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:134
      ttbr0 : aliased sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:135
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:133

  -- Convenience macros to represent the ARMv8-A-specific
  -- * configuration for memory access permission and
  -- * cache-ability attribution.
  --  

  -- * @brief Auto generate mmu region entry for node_id
  -- *
  -- * Example usage:
  -- *
  -- * @code{.c}
  -- *      DT_FOREACH_STATUS_OKAY_VARGS(nxp_imx_gpio,
  -- *				  MMU_REGION_DT_FLAT_ENTRY,
  -- *				 (MT_DEVICE_nGnRnE | MT_P_RW_U_NA | MT_NS))
  -- * @endcode
  -- *
  -- * @note  Since devicetree_generated.h does not include
  -- *        node_id##_P_reg_FOREACH_PROP_ELEM* definitions,
  -- *        we can't automate dts node with multiple reg
  -- *        entries.
  --  

  -- * @brief Auto generate mmu region entry for status = "okay"
  -- *        nodes compatible to a driver
  -- *
  -- * Example usage:
  -- *
  -- * @code{.c}
  -- *      MMU_REGION_DT_COMPAT_FOREACH_FLAT_ENTRY(nxp_imx_gpio,
  -- *				 (MT_DEVICE_nGnRnE | MT_P_RW_U_NA | MT_NS))
  -- * @endcode
  -- *
  -- * @note  This is a wrapper of @ref MMU_REGION_DT_FLAT_ENTRY
  --  

  -- Kernel macros for memory attribution
  -- * (access permissions and cache-ability).
  -- *
  -- * The macros are to be stored in k_mem_partition_attr_t
  -- * objects. The format of a k_mem_partition_attr_t object
  -- * is an uint32_t composed by permission and attribute flags
  -- * located in include/arch/arm64/arm_mmu.h
  --  

  -- Read-Write access permission attributes  
  -- Execution-allowed attributes  
  -- Typedef for the k_mem_partition attribute  
   type k_mem_partition_attr_t is record
      attrs : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:216
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:216

  -- Reference to the MMU configuration.
  -- *
  -- * This struct is defined and populated for each SoC (in the SoC definition),
  -- * and holds the build-time configuration information for the fixed MMU
  -- * regions enabled during kernel initialization.
  --  

   mmu_config : aliased constant arm_mmu_config  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/arm_mmu.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "mmu_config";

end zephyr_arch_arm64_arm_mmu_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
