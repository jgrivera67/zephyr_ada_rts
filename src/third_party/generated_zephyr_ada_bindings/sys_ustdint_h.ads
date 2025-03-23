pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with machine_udefault_types_h;

package sys_ustdint_h is

  -- * Copyright (c) 2004, 2005 by
  -- * Ralf Corsepius, Ulm/Germany. All rights reserved.
  -- *
  -- * Permission to use, copy, modify, and distribute this software
  -- * is freely granted, provided that this notice is preserved.
  --  

   subtype int8_t is machine_udefault_types_h.uu_int8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:20

   subtype uint8_t is machine_udefault_types_h.uu_uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:24

   subtype int16_t is machine_udefault_types_h.uu_int16_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:32

   subtype uint16_t is machine_udefault_types_h.uu_uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:36

   subtype int32_t is machine_udefault_types_h.uu_int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:44

   subtype uint32_t is machine_udefault_types_h.uu_uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:48

   subtype int64_t is machine_udefault_types_h.uu_int64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:56

   subtype uint64_t is machine_udefault_types_h.uu_uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:60

   subtype intmax_t is machine_udefault_types_h.uu_intmax_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:67

   subtype uintmax_t is machine_udefault_types_h.uu_uintmax_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:72

   subtype intptr_t is machine_udefault_types_h.uu_intptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:77

   subtype uintptr_t is machine_udefault_types_h.uu_uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:82

end sys_ustdint_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
