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
   subtype uu_int8_t is signed_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:41

   subtype uu_uint8_t is unsigned_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:43

   subtype uu_int16_t is short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:55

   subtype uu_uint16_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:57

   subtype uu_int32_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:77

   subtype uu_uint32_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:79

   subtype uu_int64_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:103

   subtype uu_uint64_t is Extensions.unsigned_long_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:105

  -- GCC has __LONG_LONG_MAX__  
  -- POSIX mandates LLONG_MAX in <limits.h>  
   subtype uu_int_least8_t is signed_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:134

   subtype uu_uint_least8_t is unsigned_char;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:136

   subtype uu_int_least16_t is short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:160

   subtype uu_uint_least16_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:162

   subtype uu_int_least32_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:182

   subtype uu_uint_least32_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:184

   subtype uu_int_least64_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:200

   subtype uu_uint_least64_t is Extensions.unsigned_long_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:202

   subtype uu_intmax_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:214

   subtype uu_uintmax_t is Extensions.unsigned_long_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:222

   subtype uu_intptr_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:230

   subtype uu_uintptr_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/machine/_default_types.h:232

end machine_udefault_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
