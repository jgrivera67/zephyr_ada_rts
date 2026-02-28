pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_arch_arm_structs_h;

package zephyr_arch_structs_h is

  -- * Copyright (c) BayLibre SAS
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * The purpose of this file is to provide essential/minimal architecture-
  -- * specific structure definitions to be included in generic kernel
  -- * structures.
  -- *
  -- * The following rules must be observed:
  -- *  1. arch/structs.h shall not depend on kernel.h both directly and
  -- *     indirectly (i.e. it shall not include any header files that include
  -- *     kernel.h in their dependency chain).
  -- *  2. kernel.h shall imply arch/structs.h via kernel_structs.h , such that
  -- *     it shall not be necessary to include arch/structs.h explicitly when
  -- *     kernel.h is included.
  --  

  -- Default definitions when no architecture specific definitions exist.  
  -- Per CPU architecture specifics (empty)  
  -- This struct will have a size 0 in C which is not allowed in C++ (it'll have a size 1). To
  --	 * prevent this, we add a 1 byte dummy variable.
  --	  

  -- typedefs to be used with GEN_OFFSET_SYM(), etc.  
   subtype u_cpu_arch_t is zephyr_arch_arm_structs_h.u_cpu_arch;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/structs.h:53

end zephyr_arch_structs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
