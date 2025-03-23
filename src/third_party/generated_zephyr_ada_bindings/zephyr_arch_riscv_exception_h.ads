pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_arch_riscv_thread_h;

package zephyr_arch_riscv_exception_h is

  -- * Copyright (c) 2016 Jean-Paul Etienne <fractalclone@gmail.com>
  -- * Copyright (c) 2018 Foundries.io Ltd
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --

  --*
  -- * @file
  -- * @brief RISCV public exception handling
  -- *
  -- * RISCV-specific kernel exception handling interface.
  --

  -- * The name of the structure which contains soc-specific state, if
  -- * any, as well as the soc_esf_t typedef below, are part of the RISC-V
  -- * arch API.
  -- *
  -- * The contents of the struct are provided by a SOC-specific
  -- * definition in soc_context.h.
  --

  -- Forward declaration
  -- return address
   --??? type zephyr_arch_riscv_thread_h.u_callee_saved_t;
   type arch_esf is record
      ra : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:58
      t0 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:60
      t1 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:61
      t2 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:62
      t3 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:64
      t4 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:65
      t5 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:66
      t6 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:67
      a0 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:70
      a1 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:71
      a2 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:72
      a3 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:73
      a4 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:74
      a5 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:75
      a6 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:77
      a7 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:78
      mepc : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:85
      mstatus : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:86
      s0 : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:88
      csf : access zephyr_arch_riscv_thread_h.u_callee_saved_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:95
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/exception.h:57

  -- Caller-saved temporary register
  -- Caller-saved temporary register
  -- Caller-saved temporary register
  -- Caller-saved temporary register
  -- Caller-saved temporary register
  -- Caller-saved temporary register
  -- Caller-saved temporary register
  -- function argument/return value
  -- function argument
  -- function argument
  -- function argument
  -- function argument
  -- function argument
  -- function argument
  -- function argument
  -- machine cause register
  -- machine exception program counter
  -- machine status register
  -- callee-saved s0
  -- preserved (user or kernel) stack pointer
  -- pointer to callee-saved-registers
end zephyr_arch_riscv_exception_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
