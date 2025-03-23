pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package zephyr_arch_riscv_syscall_h is

   RV_ECALL_RUNTIME_EXCEPT : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:22
   RV_ECALL_IRQ_OFFLOAD : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:23
   RV_ECALL_SCHEDULE : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:24

  -- * Copyright (c) 2020 BayLibre, SAS
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief RISCV specific syscall header
  -- *
  -- * This header contains the RISCV specific syscall interface.  It is
  -- * included by the syscall interface architecture-abstraction header
  -- * (include/arch/syscall.h)
  --  

  -- * Privileged mode system calls
  --  

  -- * Syscall invocation macros. riscv-specific machine constraints used to ensure
  -- * args land in the proper registers.
  --  

   function arch_syscall_invoke6
     (arg1 : sys_ustdint_h.uintptr_t;
      arg2 : sys_ustdint_h.uintptr_t;
      arg3 : sys_ustdint_h.uintptr_t;
      arg4 : sys_ustdint_h.uintptr_t;
      arg5 : sys_ustdint_h.uintptr_t;
      arg6 : sys_ustdint_h.uintptr_t;
      call_id : sys_ustdint_h.uintptr_t) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "arch_syscall_invoke6";

   function arch_syscall_invoke5
     (arg1 : sys_ustdint_h.uintptr_t;
      arg2 : sys_ustdint_h.uintptr_t;
      arg3 : sys_ustdint_h.uintptr_t;
      arg4 : sys_ustdint_h.uintptr_t;
      arg5 : sys_ustdint_h.uintptr_t;
      call_id : sys_ustdint_h.uintptr_t) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "arch_syscall_invoke5";

   function arch_syscall_invoke4
     (arg1 : sys_ustdint_h.uintptr_t;
      arg2 : sys_ustdint_h.uintptr_t;
      arg3 : sys_ustdint_h.uintptr_t;
      arg4 : sys_ustdint_h.uintptr_t;
      call_id : sys_ustdint_h.uintptr_t) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "arch_syscall_invoke4";

   function arch_syscall_invoke3
     (arg1 : sys_ustdint_h.uintptr_t;
      arg2 : sys_ustdint_h.uintptr_t;
      arg3 : sys_ustdint_h.uintptr_t;
      call_id : sys_ustdint_h.uintptr_t) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "arch_syscall_invoke3";

   function arch_syscall_invoke2
     (arg1 : sys_ustdint_h.uintptr_t;
      arg2 : sys_ustdint_h.uintptr_t;
      call_id : sys_ustdint_h.uintptr_t) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "arch_syscall_invoke2";

   function arch_syscall_invoke1 (arg1 : sys_ustdint_h.uintptr_t; call_id : sys_ustdint_h.uintptr_t) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "arch_syscall_invoke1";

   function arch_syscall_invoke0 (call_id : sys_ustdint_h.uintptr_t) return sys_ustdint_h.uintptr_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/riscv/syscall.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "arch_syscall_invoke0";

  -- don't try accessing TLS variables if tp is not initialized  
  -- Defined in arch/riscv/core/thread.c  
end zephyr_arch_riscv_syscall_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
