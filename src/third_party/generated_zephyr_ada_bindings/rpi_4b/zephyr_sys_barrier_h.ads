pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_sys_barrier_h is

  -- * Copyright (c) 2023 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @addtogroup barrier_apis Barrier Services APIs
  -- * @since 3.4
  -- * @version 0.1.0
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @brief Full/sequentially-consistent data memory barrier.
  -- *
  -- * This routine acts as a synchronization fence between threads and prevents
  -- * re-ordering of data accesses instructions across the barrier instruction.
  --  

   procedure barrier_dmem_fence_full  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/barrier.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "barrier_dmem_fence_full";

  --*
  -- * @brief Full/sequentially-consistent data synchronization barrier.
  -- *
  -- * This routine acts as a synchronization fence between threads and prevents
  -- * re-ordering of data accesses instructions across the barrier instruction
  -- * like @ref barrier_dmem_fence_full(), but has the additional effect of
  -- * blocking execution of any further instructions, not just loads or stores, or
  -- * both, until synchronization is complete.
  -- *
  -- * @note When not supported by hardware or architecture, this instruction falls
  -- * back to a full/sequentially-consistent data memory barrier.
  --  

   procedure barrier_dsync_fence_full  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/barrier.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "barrier_dsync_fence_full";

  --*
  -- * @brief Full/sequentially-consistent instruction synchronization barrier.
  -- *
  -- * This routine is used to guarantee that any subsequent instructions are
  -- * fetched and to ensure any previously executed context-changing operations,
  -- * such as writes to system control registers, have completed by the time the
  -- * routine completes. In hardware terms, this might mean that the instruction
  -- * pipeline is flushed, for example.
  -- *
  -- * @note When not supported by hardware or architecture, this instruction falls
  -- * back to a compiler barrier.
  --  

   procedure barrier_isync_fence_full  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/barrier.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "barrier_isync_fence_full";

  --* @}  
  -- extern "C"  
end zephyr_sys_barrier_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
