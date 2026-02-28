pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_arch_arm_structs_h is
   pragma Preelaborate;

  -- * Copyright (c) 2023 Arm Limited (or its affiliates). All rights reserved.
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- Per CPU architecture specifics  
  -- Default definitions when no architecture specific definitions exist.  
  -- Per CPU architecture specifics (empty)  
   type u_cpu_arch is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm/structs.h:22

  -- This struct will have a size 0 in C which is not allowed in C++ (it'll have a size 1). To
  --	 * prevent this, we add a 1 byte dummy variable.
  --	  

end zephyr_arch_arm_structs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
