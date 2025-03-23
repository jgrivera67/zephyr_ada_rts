pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;

package zephyr_sys_atomic_types_h is

  -- Copyright (c) 1997-2015, Wind River Systems, Inc.
  -- * Copyright (c) 2021 Intel Corporation
  -- * Copyright (c) 2023 Nordic Semiconductor ASA
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

   subtype atomic_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_types.h:15

   subtype atomic_val_t is atomic_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_types.h:16

   type atomic_ptr_t is new System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_types.h:17

   subtype atomic_ptr_val_t is atomic_ptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic_types.h:18

end zephyr_sys_atomic_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
