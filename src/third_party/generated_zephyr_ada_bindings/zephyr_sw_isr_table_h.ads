pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
limited with zephyr_device_h;
with sys_ustdint_h;

package zephyr_sw_isr_table_h is

   Z_STR_L2 : constant := 2ND;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:61
   Z_STR_L3 : constant := 3RD;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:62
   --  arg-macro: procedure Z_SW_ISR_TBL_KCONFIG_BY_ALVL (l)
   --    CONCAT(CONFIG_, CONCAT(Z_STR_L, l), _LVL_ISR_TBL_OFFSET)
   --  arg-macro: procedure INTC_BASE_ISR_TBL_OFFSET (node_id)
   --    Z_SW_ISR_TBL_KCONFIG_BY_ALVL(DT_INTC_GET_AGGREGATOR_LEVEL(node_id))
   --  arg-macro: function INTC_INST_ISR_TBL_OFFSET (inst)
   --    return INTC_BASE_ISR_TBL_OFFSET(DT_DRV_INST(inst)) + (inst * CONFIG_MAX_IRQ_PER_AGGREGATOR);
   --  arg-macro: function INTC_CHILD_ISR_TBL_OFFSET (node_id)
   --    return INTC_BASE_ISR_TBL_OFFSET(node_id) + (DT_NODE_CHILD_IDX(node_id) * CONFIG_MAX_IRQ_PER_AGGREGATOR);
   --  arg-macro: procedure IRQ_PARENT_ENTRY_DEFINE (_name, _dev, _irq, _offset, _level)
   --    static const STRUCT_SECTION_ITERABLE_ALTERNATE(intc_table, _irq_parent_entry, _name) := { .dev := _dev, .level := _level, .irq := _irq, .offset := _offset, }
   --  unsupported macro: ISR_FLAG_DIRECT BIT(0)
   --  arg-macro: procedure Z_ISR_DECLARE (irq, flags, func, param)
   --    static Z_DECL_ALIGN(struct _isr_list) Z_GENERIC_SECTION(.intList) __used _MK_ISR_NAME(func, __COUNTER__) := {irq, flags, (void *)andfunc, (const void *)param}
   --  arg-macro: procedure Z_ISR_DECLARE_DIRECT (irq, flags, func)
   --    Z_ISR_DECLARE(irq, ISR_FLAG_DIRECT or (flags), func, NULL)
   --  unsupported macro: IRQ_TABLE_SIZE (CONFIG_NUM_IRQS - CONFIG_GEN_IRQ_START_VECTOR)

  -- * Copyright (c) 2014, Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Software-managed ISR table
  -- *
  -- * Data types for a software-managed ISR table, with a parameter per-ISR.
  --  

  -- Default vector for the IRQ vector table  
   --  skipped func _isr_wrapper

  -- Spurious interrupt handler. Throws an error if called  
  -- * Note the order: arg first, then ISR. This allows a table entry to be
  -- * loaded arg -> r0, isr -> r3 in _isr_wrapper with one ldmia instruction,
  -- * on ARM Cortex-M (Thumb2).
  --  

   type u_isr_table_entry is record
      arg : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:40
      isr : access procedure (arg1 : System.Address);  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:39

  -- The software ISR table itself, an array of these structures indexed by the
  -- * irq line
  --  

   type u_irq_parent_entry is record
      dev : access constant zephyr_device_h.device;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:50
      level : aliased unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:51
      irq : aliased unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:52
      offset : aliased unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:49

  --*
  -- * @cond INTERNAL_HIDDEN
  --  

  -- Mapping between aggregator level to order  
  --*
  -- * @brief Get the Software ISR table offset Kconfig for the given aggregator level
  -- *
  -- * @param l Aggregator level, must be 2 or 3
  -- *
  -- * @return `CONFIG_2ND_LVL_ISR_TBL_OFFSET` if second level aggregator,
  -- * `CONFIG_3RD_LVL_ISR_TBL_OFFSET` if third level aggregator
  --  

  --*
  -- * INTERNAL_HIDDEN @endcond
  --  

  --*
  -- * @brief Get an interrupt controller node's level base ISR table offset.
  -- *
  -- * @param node_id node identifier of the interrupt controller
  -- *
  -- * @return `CONFIG_2ND_LVL_ISR_TBL_OFFSET` if node_id is a second level aggregator,
  -- * `CONFIG_3RD_LVL_ISR_TBL_OFFSET` if it is a third level aggregator
  --  

  --*
  -- * @brief Get the SW ISR table offset for an instance of interrupt controller
  -- *
  -- * @param inst DT_DRV_COMPAT interrupt controller driver instance number
  -- *
  -- * @return Software ISR table offset of the interrupt controller
  --  

  --*
  -- * @brief Get the SW ISR table offset for a child interrupt controller
  -- *
  -- * @details This macro is a alternative form of the `INTC_INST_ISR_TBL_OFFSET`. This is used by
  -- * pseudo interrupt controller devices that are child of a main interrupt controller device.
  -- *
  -- * @param node_id node identifier of the child interrupt controller
  -- *
  -- * @return Software ISR table offset of the child
  --  

  --*
  -- * @brief Register an  interrupt controller with the software ISR table
  -- *
  -- * @param _name Name of the interrupt controller (must be unique)
  -- * @param _dev Pointer to the interrupt controller device instance
  -- * @param _irq Interrupt controller IRQ number
  -- * @param _offset Software ISR table offset of the interrupt controller
  -- * @param _level Interrupt controller aggregator level
  --  

  -- * Data structure created in a special binary .intlist section for each
  -- * configured interrupt. gen_irq_tables.py pulls this out of the binary and
  -- * uses it to create the IRQ vector table and the _sw_isr_table.
  -- *
  -- * More discussion in include/linker/intlist.ld
  -- *
  -- * This is a version used when CONFIG_ISR_TABLES_LOCAL_DECLARATION is disabled.
  -- * See _isr_list_sname used otherwise.
  --  

  --* IRQ line number  
   type u_isr_list is record
      irq : aliased sys_ustdint_h.int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:141
      flags : aliased sys_ustdint_h.int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:143
      func : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:145
      param : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:147
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:139

  --* Flags for this IRQ, see ISR_FLAG_* definitions  
  --* ISR to call  
  --* Parameter for non-direct IRQs  
  -- * Data structure created in a special binary .intlist section for each
  -- * configured interrupt. gen_isr_tables.py pulls this out of the binary and
  -- * uses it to create linker script chunks that would place interrupt table entries
  -- * in the right place in the memory.
  -- *
  -- * This is a version used when CONFIG_ISR_TABLES_LOCAL_DECLARATION is enabled.
  -- * See _isr_list used otherwise.
  --  

  --* IRQ line number  
   subtype anon_array1617 is Interfaces.C.char_array (0 .. 0);
   type u_isr_list_sname is record
      irq : aliased sys_ustdint_h.int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:161
      flags : aliased sys_ustdint_h.int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:163
      sname : aliased anon_array1617;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:165
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:159

  --* Flags for this IRQ, see ISR_FLAG_* definitions  
  --* The section name  
  --* This interrupt gets put directly in the vector table  
  -- Separated macro to create ISR table entry only.
  -- * Used by Z_ISR_DECLARE and ISR tables generation script.
  --  

  -- Create an entry for _isr_table to be then placed by the linker.
  -- * An instance of struct _isr_list which gets put in the .intList
  -- * section is created with the name of the section where _isr_table entry is placed to be then
  -- * used by isr generation script to create linker script chunk.
  --  

  -- Separated macro to create ISR Direct table entry only.
  -- * Used by Z_ISR_DECLARE_DIRECT and ISR tables generation script.
  --  

  -- Create an entry to irq table and place it in specific section which name is then placed
  -- * in an instance of struct _isr_list to be then used by the isr generation script to create
  -- * the linker script chunks.
  --  

  -- Create an instance of struct _isr_list which gets put in the .intList
  -- * section. This gets consumed by gen_isr_tables.py which creates the vector
  -- * and/or SW ISR tables.
  --  

  -- The version of the Z_ISR_DECLARE that should be used for direct ISR declaration.
  -- * It is here for the API match the version with CONFIG_ISR_TABLES_LOCAL_DECLARATION enabled.
  --  

   procedure z_isr_install
     (irq : unsigned;
      routine : access procedure (arg1 : System.Address);
      param : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sw_isr_table.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "z_isr_install";

end zephyr_sw_isr_table_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
