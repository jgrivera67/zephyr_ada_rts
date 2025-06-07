pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package zephyr_arch_arm64_thread_stack_h is

   ARCH_STACK_PTR_ALIGN : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread_stack.h:12
   --  unsupported macro: Z_ARM64_STACK_BASE_ALIGN ARCH_STACK_PTR_ALIGN
   --  unsupported macro: Z_ARM64_STACK_SIZE_ALIGN ARCH_STACK_PTR_ALIGN

   Z_ARM64_STACK_GUARD_SIZE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread_stack.h:26
   --  unsupported macro: Z_ARM64_K_STACK_BASE_ALIGN ARCH_STACK_PTR_ALIGN
   --  arg-macro: procedure ARCH_THREAD_STACK_OBJ_ALIGN (size)
   --    Z_ARM64_STACK_BASE_ALIGN
   --  arg-macro: procedure ARCH_THREAD_STACK_SIZE_ADJUST (size)
   --    ROUND_UP((size), Z_ARM64_STACK_SIZE_ALIGN)
   --  unsupported macro: ARCH_THREAD_STACK_RESERVED CONFIG_PRIVILEGED_STACK_SIZE + Z_ARM64_STACK_GUARD_SIZE
   --  unsupported macro: ARCH_KERNEL_STACK_RESERVED Z_ARM64_STACK_GUARD_SIZE
   --  unsupported macro: ARCH_KERNEL_STACK_OBJ_ALIGN Z_ARM64_K_STACK_BASE_ALIGN

  -- * Copyright (c) 2020 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * [ see also comments in arch/arm64/core/thread.c ]
  -- *
  -- * High memory addresses
  -- *
  -- * +-------------------+ <- thread.stack_info.start + thread.stack_info.size
  -- * |       TLS         |
  -- * +-------------------+ <- initial sp (computable with thread.stack_info.delta)
  -- * |                   |
  -- * |    Used stack     |
  -- * |                   |
  -- * +...................+ <- thread's current stack pointer
  -- * |                   |
  -- * |   Unused stack    |
  -- * |                   |
  -- * +-------------------+ <- thread.stack_info.start
  -- * | Privileged stack  | } K_(THREAD|KERNEL)_STACK_RESERVED
  -- * +-------------------+ <- thread stack limit (update on every context switch)
  -- * |    Stack guard    | } Z_ARM64_STACK_GUARD_SIZE (protected by MMU/MPU)
  -- * +-------------------+ <- thread.stack_obj
  -- *
  -- * Low Memory addresses
  --  

  -- thread stack  
  -- kernel stack  
   pragma Compile_Time_Warning (True, "packed layout may be incorrect");
   subtype anon_array2472 is Interfaces.C.char_array (0 .. 4095);
   type z_arm64_thread_stack_header is record
      privilege_stack : anon_array2472;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread_stack.h:68
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 16;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/thread_stack.h:67

end zephyr_arch_arm64_thread_stack_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
