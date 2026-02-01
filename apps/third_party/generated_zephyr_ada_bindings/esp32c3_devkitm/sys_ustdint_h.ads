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

   subtype int8_t is machine_udefault_types_h.uu_int8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:18

   subtype uint8_t is machine_udefault_types_h.uu_uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:22

   subtype int16_t is machine_udefault_types_h.uu_int16_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:30

   subtype uint16_t is machine_udefault_types_h.uu_uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:34

   subtype int32_t is machine_udefault_types_h.uu_int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:42

   subtype uint32_t is machine_udefault_types_h.uu_uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:46

   subtype int64_t is machine_udefault_types_h.uu_int64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:54

   subtype uint64_t is machine_udefault_types_h.uu_uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:58

   subtype intmax_t is machine_udefault_types_h.uu_intmax_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:65

   subtype uintmax_t is machine_udefault_types_h.uu_uintmax_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:70

   subtype intptr_t is machine_udefault_types_h.uu_intptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:75

   subtype uintptr_t is machine_udefault_types_h.uu_uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/_stdint.h:80

end sys_ustdint_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
