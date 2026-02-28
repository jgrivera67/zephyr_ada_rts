pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_timing_types_h is
   pragma Preelaborate;

  -- * Copyright (c) 2020 Intel Corporation.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   subtype timing_t is sys_ustdint_h.uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/timing/types.h:10

end zephyr_timing_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
