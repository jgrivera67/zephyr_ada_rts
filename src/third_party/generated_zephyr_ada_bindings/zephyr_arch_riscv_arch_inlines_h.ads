pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
limited with zephyr_kernel_structs_h;

package zephyr_arch_riscv_arch_inlines_h is

  -- * Copyright (c) 2021 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   function arch_proc_id return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch_inlines.h:16
   with Import => True, 
        Convention => C, 
        External_Name => "arch_proc_id";

   function arch_curr_cpu return access zephyr_kernel_structs_h.u_cpu  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch_inlines.h:21
   with Import => True, 
        Convention => C, 
        External_Name => "arch_curr_cpu";

   function arch_num_cpus return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/arch_inlines.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "arch_num_cpus";

end zephyr_arch_riscv_arch_inlines_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
