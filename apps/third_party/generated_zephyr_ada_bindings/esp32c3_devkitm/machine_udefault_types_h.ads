pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package machine_udefault_types_h is

  -- *  Copyright (c) 2007 Patrick Mansfield <patmans@us.ibm.com>
  --  

  -- * Guess on types by examining *_MIN / *_MAX defines.
  --  

  -- GCC >= 3.3.0 has __<val>__ implicitly defined.  
  -- Fall back to POSIX versions from <limits.h>  
  -- Check if "long long" is 64bit wide  
  -- Modern GCCs provide __LONG_LONG_MAX__, SUSv3 wants LLONG_MAX  
  -- Check if "long" is 64bit or 32bit wide  
  -- Determine the width of integers if the compiler doesn't provide __X_WIDTH__ macros.  
  -- Determine the size of types if the compiler doesn't provide __SIZEOF_X__ macros.  
  -- Select type of fixed width integers if the compiler doesn't specify them.  
   subtype uu_int8_t is signed_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:210

   subtype uu_uint8_t is unsigned_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:215

   subtype uu_int16_t is short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:219

   subtype uu_uint16_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:224

   subtype uu_int32_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:228

   subtype uu_uint32_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:233

   subtype uu_int64_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:237

   subtype uu_uint64_t is Extensions.unsigned_long_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:242

   subtype uu_int_least8_t is signed_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:246

   subtype uu_uint_least8_t is unsigned_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:248

   subtype uu_int_least16_t is short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:272

   subtype uu_uint_least16_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:274

   subtype uu_int_least32_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:294

   subtype uu_uint_least32_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:296

   subtype uu_int_least64_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:312

   subtype uu_uint_least64_t is Extensions.unsigned_long_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:314

   subtype uu_intmax_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:326

   subtype uu_uintmax_t is Extensions.unsigned_long_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:334

   subtype uu_intptr_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:342

   subtype uu_uintptr_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:344

end machine_udefault_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
