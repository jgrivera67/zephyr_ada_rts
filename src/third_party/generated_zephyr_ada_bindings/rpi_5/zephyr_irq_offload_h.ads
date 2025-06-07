pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;

package zephyr_irq_offload_h is

  -- * Copyright (c) 2015 Intel corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief IRQ Offload interface
  --  

   type irq_offload_routine_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/irq_offload.h:18

  --*
  -- * @brief Run a function in interrupt context
  -- *
  -- * This function synchronously runs the provided function in interrupt
  -- * context, passing in the supplied device. Useful for test code
  -- * which needs to show that kernel objects work correctly in interrupt
  -- * context.
  -- *
  -- * Additionally, when CONFIG_IRQ_OFFLOAD_NESTED is set by the
  -- * architecture, this routine works to synchronously invoke a nested
  -- * interrupt when called from an ISR context (i.e. when k_is_in_isr()
  -- * is true).  Note that not all platforms will have hardware support
  -- * for this capability, and even on those some interrupts may be
  -- * running at unpreemptible priorities.
  -- *
  -- * @param routine The function to run
  -- * @param parameter Argument to pass to the function when it is run as an
  -- * interrupt
  --  

   procedure irq_offload (routine : irq_offload_routine_t; parameter : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/irq_offload.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "irq_offload";

end zephyr_irq_offload_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
