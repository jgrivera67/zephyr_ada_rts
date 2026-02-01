pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with machine_udefault_types_h;
with Interfaces.C.Extensions;

package stdint_h is

   --  unsupported macro: INTPTR_MIN (-__INTPTR_MAX__ - 1)
   --  unsupported macro: INTPTR_MAX (__INTPTR_MAX__)
   --  unsupported macro: UINTPTR_MAX (__UINTPTR_MAX__)
   --  unsupported macro: INT8_MIN (-__INT8_MAX__ - 1)
   --  unsupported macro: INT8_MAX (__INT8_MAX__)
   --  unsupported macro: UINT8_MAX (__UINT8_MAX__)
   --  unsupported macro: INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)
   --  unsupported macro: INT_LEAST8_MAX (__INT_LEAST8_MAX__)
   --  unsupported macro: UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)
   --  unsupported macro: INT16_MIN (-__INT16_MAX__ - 1)
   --  unsupported macro: INT16_MAX (__INT16_MAX__)
   --  unsupported macro: UINT16_MAX (__UINT16_MAX__)
   --  unsupported macro: INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)
   --  unsupported macro: INT_LEAST16_MAX (__INT_LEAST16_MAX__)
   --  unsupported macro: UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)
   --  unsupported macro: INT32_MIN (-__INT32_MAX__ - 1)
   --  unsupported macro: INT32_MAX (__INT32_MAX__)
   --  unsupported macro: UINT32_MAX (__UINT32_MAX__)
   --  unsupported macro: INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)
   --  unsupported macro: INT_LEAST32_MAX (__INT_LEAST32_MAX__)
   --  unsupported macro: UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)
   --  unsupported macro: INT64_MIN (-__INT64_MAX__ - 1)
   --  unsupported macro: INT64_MAX (__INT64_MAX__)
   --  unsupported macro: UINT64_MAX (__UINT64_MAX__)
   --  unsupported macro: INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)
   --  unsupported macro: INT_LEAST64_MAX (__INT_LEAST64_MAX__)
   --  unsupported macro: UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)
   --  unsupported macro: INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)
   --  unsupported macro: INT_FAST8_MAX (__INT_FAST8_MAX__)
   --  unsupported macro: UINT_FAST8_MAX (__UINT_FAST8_MAX__)
   --  unsupported macro: INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)
   --  unsupported macro: INT_FAST16_MAX (__INT_FAST16_MAX__)
   --  unsupported macro: UINT_FAST16_MAX (__UINT_FAST16_MAX__)
   --  unsupported macro: INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)
   --  unsupported macro: INT_FAST32_MAX (__INT_FAST32_MAX__)
   --  unsupported macro: UINT_FAST32_MAX (__UINT_FAST32_MAX__)
   --  unsupported macro: INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)
   --  unsupported macro: INT_FAST64_MAX (__INT_FAST64_MAX__)
   --  unsupported macro: UINT_FAST64_MAX (__UINT_FAST64_MAX__)
   --  unsupported macro: INTMAX_MAX (__INTMAX_MAX__)
   --  unsupported macro: INTMAX_MIN (-INTMAX_MAX - 1)
   --  unsupported macro: UINTMAX_MAX (__UINTMAX_MAX__)
   --  unsupported macro: SIZE_MAX (__SIZE_MAX__)
   --  unsupported macro: SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)
   --  unsupported macro: SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))
   --  unsupported macro: PTRDIFF_MAX (__PTRDIFF_MAX__)
   --  unsupported macro: PTRDIFF_MIN (-PTRDIFF_MAX - 1)
   --  unsupported macro: WCHAR_MIN (__WCHAR_MIN__)
   --  unsupported macro: WCHAR_MAX (__WCHAR_MAX__)
   --  unsupported macro: WINT_MAX (__WINT_MAX__)
   --  unsupported macro: WINT_MIN (__WINT_MIN__)
   --  arg-macro: procedure INT8_C (x)
   --    __INT8_C(x)
   --  arg-macro: procedure UINT8_C (x)
   --    __UINT8_C(x)
   --  arg-macro: procedure INT16_C (x)
   --    __INT16_C(x)
   --  arg-macro: procedure UINT16_C (x)
   --    __UINT16_C(x)
   --  arg-macro: procedure INT32_C (x)
   --    __INT32_C(x)
   --  arg-macro: procedure UINT32_C (x)
   --    __UINT32_C(x)
   --  arg-macro: procedure INT64_C (x)
   --    __INT64_C(x)
   --  arg-macro: procedure UINT64_C (x)
   --    __UINT64_C(x)
   --  arg-macro: procedure INTMAX_C (x)
   --    __INTMAX_C(x)
   --  arg-macro: procedure UINTMAX_C (x)
   --    __UINTMAX_C(x)
  -- * Copyright (c) 2004, 2005 by
  -- * Ralf Corsepius, Ulm/Germany. All rights reserved.
  -- *
  -- * Permission to use, copy, modify, and distribute this software
  -- * is freely granted, provided that this notice is preserved.
  --  

   subtype int_least8_t is machine_udefault_types_h.uu_int_least8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:20

   subtype uint_least8_t is machine_udefault_types_h.uu_uint_least8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:21

   subtype int_least16_t is machine_udefault_types_h.uu_int_least16_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:26

   subtype uint_least16_t is machine_udefault_types_h.uu_uint_least16_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:27

   subtype int_least32_t is machine_udefault_types_h.uu_int_least32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:32

   subtype uint_least32_t is machine_udefault_types_h.uu_uint_least32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:33

   subtype int_least64_t is machine_udefault_types_h.uu_int_least64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:38

   subtype uint_least64_t is machine_udefault_types_h.uu_uint_least64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:39

  -- * Fastest minimum-width integer types
  -- *
  -- * Assume int to be the fastest type for all types with a width 
  -- * less than __INT_MAX__ rsp. INT_MAX
  --  

   subtype int_fast8_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:50

   subtype uint_fast8_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:51

   subtype int_fast16_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:60

   subtype uint_fast16_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:61

   subtype int_fast32_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:70

   subtype uint_fast32_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:71

   subtype int_fast64_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:80

   subtype uint_fast64_t is Extensions.unsigned_long_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdint.h:81

  -- * Fall back to [u]int_least<N>_t for [u]int_fast<N>_t types
  -- * not having been defined, yet.
  -- * Leave undefined, if [u]int_least<N>_t should not be available.
  --  

  -- * Fallback to hardcoded values, 
  -- * should be valid on cpu's with 32bit int/32bit void*
  --  

  -- Limits of Specified-Width Integer Types  
  -- All relevant GCC versions prefer long to long long for intmax_t.   
  -- All relevant GCC versions prefer long to long long for intmax_t.   
  -- This must match size_t in stddef.h, currently long unsigned int  
  -- This must match sig_atomic_t in <signal.h> (currently int)  
  -- This must match ptrdiff_t  in <stddef.h> (currently long int)  
  -- This must match definition in <wchar.h>  
  -- This must match definition in <wchar.h>  
  -- wint_t is unsigned int on almost all GCC targets.   
  --* Macros for minimum-width integer constant expressions  
  --* Macros for greatest-width integer constant expression  
  -- could be defined by the user
end stdint_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
