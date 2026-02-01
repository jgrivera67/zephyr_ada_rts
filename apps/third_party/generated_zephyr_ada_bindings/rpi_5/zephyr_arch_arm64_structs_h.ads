pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_atomic_types_h;

package zephyr_arch_arm64_structs_h is

  -- * Copyright (c) BayLibre SAS
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Per CPU architecture specifics  
   type u_cpu_arch is record
      fpu_owner : zephyr_sys_atomic_types_h.atomic_ptr_val_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/structs.h:13
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/structs.h:11

  -- Saved the corrupted stack pointer when stack overflow, else 0  
end zephyr_arch_arm64_structs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
