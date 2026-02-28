pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_arch_riscv_structs_h is
   pragma Preelaborate;

  -- * Copyright (c) BayLibre SAS
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Per CPU architecture specifics  
   type u_cpu_arch is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/structs.h:11

end zephyr_arch_riscv_structs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
