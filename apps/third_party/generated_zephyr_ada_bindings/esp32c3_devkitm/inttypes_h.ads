pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Strings;
with System;

package inttypes_h is

   --  unsupported macro: PRId8 __PRI8(d)
   --  unsupported macro: PRIi8 __PRI8(i)
   --  unsupported macro: PRIo8 __PRI8(o)
   --  unsupported macro: PRIu8 __PRI8(u)
   --  unsupported macro: PRIx8 __PRI8(x)
   --  unsupported macro: PRIX8 __PRI8(X)
   --  unsupported macro: SCNd8 __SCN8(d)
   --  unsupported macro: SCNi8 __SCN8(i)
   --  unsupported macro: SCNo8 __SCN8(o)
   --  unsupported macro: SCNu8 __SCN8(u)
   --  unsupported macro: SCNx8 __SCN8(x)
   --  unsupported macro: PRIdLEAST8 __PRI8LEAST(d)
   --  unsupported macro: PRIiLEAST8 __PRI8LEAST(i)
   --  unsupported macro: PRIoLEAST8 __PRI8LEAST(o)
   --  unsupported macro: PRIuLEAST8 __PRI8LEAST(u)
   --  unsupported macro: PRIxLEAST8 __PRI8LEAST(x)
   --  unsupported macro: PRIXLEAST8 __PRI8LEAST(X)
   --  unsupported macro: SCNdLEAST8 __SCN8LEAST(d)
   --  unsupported macro: SCNiLEAST8 __SCN8LEAST(i)
   --  unsupported macro: SCNoLEAST8 __SCN8LEAST(o)
   --  unsupported macro: SCNuLEAST8 __SCN8LEAST(u)
   --  unsupported macro: SCNxLEAST8 __SCN8LEAST(x)
   --  unsupported macro: PRIdFAST8 __PRI8FAST(d)
   --  unsupported macro: PRIiFAST8 __PRI8FAST(i)
   --  unsupported macro: PRIoFAST8 __PRI8FAST(o)
   --  unsupported macro: PRIuFAST8 __PRI8FAST(u)
   --  unsupported macro: PRIxFAST8 __PRI8FAST(x)
   --  unsupported macro: PRIXFAST8 __PRI8FAST(X)
   --  unsupported macro: SCNdFAST8 __SCN8FAST(d)
   --  unsupported macro: SCNiFAST8 __SCN8FAST(i)
   --  unsupported macro: SCNoFAST8 __SCN8FAST(o)
   --  unsupported macro: SCNuFAST8 __SCN8FAST(u)
   --  unsupported macro: SCNxFAST8 __SCN8FAST(x)
   --  unsupported macro: PRId16 __PRI16(d)
   --  unsupported macro: PRIi16 __PRI16(i)
   --  unsupported macro: PRIo16 __PRI16(o)
   --  unsupported macro: PRIu16 __PRI16(u)
   --  unsupported macro: PRIx16 __PRI16(x)
   --  unsupported macro: PRIX16 __PRI16(X)
   --  unsupported macro: SCNd16 __SCN16(d)
   --  unsupported macro: SCNi16 __SCN16(i)
   --  unsupported macro: SCNo16 __SCN16(o)
   --  unsupported macro: SCNu16 __SCN16(u)
   --  unsupported macro: SCNx16 __SCN16(x)
   --  unsupported macro: PRIdLEAST16 __PRI16LEAST(d)
   --  unsupported macro: PRIiLEAST16 __PRI16LEAST(i)
   --  unsupported macro: PRIoLEAST16 __PRI16LEAST(o)
   --  unsupported macro: PRIuLEAST16 __PRI16LEAST(u)
   --  unsupported macro: PRIxLEAST16 __PRI16LEAST(x)
   --  unsupported macro: PRIXLEAST16 __PRI16LEAST(X)
   --  unsupported macro: SCNdLEAST16 __SCN16LEAST(d)
   --  unsupported macro: SCNiLEAST16 __SCN16LEAST(i)
   --  unsupported macro: SCNoLEAST16 __SCN16LEAST(o)
   --  unsupported macro: SCNuLEAST16 __SCN16LEAST(u)
   --  unsupported macro: SCNxLEAST16 __SCN16LEAST(x)
   --  unsupported macro: PRIdFAST16 __PRI16FAST(d)
   --  unsupported macro: PRIiFAST16 __PRI16FAST(i)
   --  unsupported macro: PRIoFAST16 __PRI16FAST(o)
   --  unsupported macro: PRIuFAST16 __PRI16FAST(u)
   --  unsupported macro: PRIxFAST16 __PRI16FAST(x)
   --  unsupported macro: PRIXFAST16 __PRI16FAST(X)
   --  unsupported macro: SCNdFAST16 __SCN16FAST(d)
   --  unsupported macro: SCNiFAST16 __SCN16FAST(i)
   --  unsupported macro: SCNoFAST16 __SCN16FAST(o)
   --  unsupported macro: SCNuFAST16 __SCN16FAST(u)
   --  unsupported macro: SCNxFAST16 __SCN16FAST(x)
   --  unsupported macro: PRId32 __PRI32(d)
   --  unsupported macro: PRIi32 __PRI32(i)
   --  unsupported macro: PRIo32 __PRI32(o)
   --  unsupported macro: PRIu32 __PRI32(u)
   --  unsupported macro: PRIx32 __PRI32(x)
   --  unsupported macro: PRIX32 __PRI32(X)
   --  unsupported macro: SCNd32 __SCN32(d)
   --  unsupported macro: SCNi32 __SCN32(i)
   --  unsupported macro: SCNo32 __SCN32(o)
   --  unsupported macro: SCNu32 __SCN32(u)
   --  unsupported macro: SCNx32 __SCN32(x)
   --  unsupported macro: PRIdLEAST32 __PRI32LEAST(d)
   --  unsupported macro: PRIiLEAST32 __PRI32LEAST(i)
   --  unsupported macro: PRIoLEAST32 __PRI32LEAST(o)
   --  unsupported macro: PRIuLEAST32 __PRI32LEAST(u)
   --  unsupported macro: PRIxLEAST32 __PRI32LEAST(x)
   --  unsupported macro: PRIXLEAST32 __PRI32LEAST(X)
   --  unsupported macro: SCNdLEAST32 __SCN32LEAST(d)
   --  unsupported macro: SCNiLEAST32 __SCN32LEAST(i)
   --  unsupported macro: SCNoLEAST32 __SCN32LEAST(o)
   --  unsupported macro: SCNuLEAST32 __SCN32LEAST(u)
   --  unsupported macro: SCNxLEAST32 __SCN32LEAST(x)
   --  unsupported macro: PRIdFAST32 __PRI32FAST(d)
   --  unsupported macro: PRIiFAST32 __PRI32FAST(i)
   --  unsupported macro: PRIoFAST32 __PRI32FAST(o)
   --  unsupported macro: PRIuFAST32 __PRI32FAST(u)
   --  unsupported macro: PRIxFAST32 __PRI32FAST(x)
   --  unsupported macro: PRIXFAST32 __PRI32FAST(X)
   --  unsupported macro: SCNdFAST32 __SCN32FAST(d)
   --  unsupported macro: SCNiFAST32 __SCN32FAST(i)
   --  unsupported macro: SCNoFAST32 __SCN32FAST(o)
   --  unsupported macro: SCNuFAST32 __SCN32FAST(u)
   --  unsupported macro: SCNxFAST32 __SCN32FAST(x)
   --  unsupported macro: PRId64 __PRI64(d)
   --  unsupported macro: PRIi64 __PRI64(i)
   --  unsupported macro: PRIo64 __PRI64(o)
   --  unsupported macro: PRIu64 __PRI64(u)
   --  unsupported macro: PRIx64 __PRI64(x)
   --  unsupported macro: PRIX64 __PRI64(X)
   --  unsupported macro: SCNd64 __SCN64(d)
   --  unsupported macro: SCNi64 __SCN64(i)
   --  unsupported macro: SCNo64 __SCN64(o)
   --  unsupported macro: SCNu64 __SCN64(u)
   --  unsupported macro: SCNx64 __SCN64(x)
   --  unsupported macro: PRIdLEAST64 __PRI64LEAST(d)
   --  unsupported macro: PRIiLEAST64 __PRI64LEAST(i)
   --  unsupported macro: PRIoLEAST64 __PRI64LEAST(o)
   --  unsupported macro: PRIuLEAST64 __PRI64LEAST(u)
   --  unsupported macro: PRIxLEAST64 __PRI64LEAST(x)
   --  unsupported macro: PRIXLEAST64 __PRI64LEAST(X)
   --  unsupported macro: SCNdLEAST64 __SCN64LEAST(d)
   --  unsupported macro: SCNiLEAST64 __SCN64LEAST(i)
   --  unsupported macro: SCNoLEAST64 __SCN64LEAST(o)
   --  unsupported macro: SCNuLEAST64 __SCN64LEAST(u)
   --  unsupported macro: SCNxLEAST64 __SCN64LEAST(x)
   --  unsupported macro: PRIdFAST64 __PRI64FAST(d)
   --  unsupported macro: PRIiFAST64 __PRI64FAST(i)
   --  unsupported macro: PRIoFAST64 __PRI64FAST(o)
   --  unsupported macro: PRIuFAST64 __PRI64FAST(u)
   --  unsupported macro: PRIxFAST64 __PRI64FAST(x)
   --  unsupported macro: PRIXFAST64 __PRI64FAST(X)
   --  unsupported macro: SCNdFAST64 __SCN64FAST(d)
   --  unsupported macro: SCNiFAST64 __SCN64FAST(i)
   --  unsupported macro: SCNoFAST64 __SCN64FAST(o)
   --  unsupported macro: SCNuFAST64 __SCN64FAST(u)
   --  unsupported macro: SCNxFAST64 __SCN64FAST(x)
   --  unsupported macro: PRIdMAX __PRIMAX(d)
   --  unsupported macro: PRIiMAX __PRIMAX(i)
   --  unsupported macro: PRIoMAX __PRIMAX(o)
   --  unsupported macro: PRIuMAX __PRIMAX(u)
   --  unsupported macro: PRIxMAX __PRIMAX(x)
   --  unsupported macro: PRIXMAX __PRIMAX(X)
   --  unsupported macro: SCNdMAX __SCNMAX(d)
   --  unsupported macro: SCNiMAX __SCNMAX(i)
   --  unsupported macro: SCNoMAX __SCNMAX(o)
   --  unsupported macro: SCNuMAX __SCNMAX(u)
   --  unsupported macro: SCNxMAX __SCNMAX(x)
   --  unsupported macro: PRIdPTR __PRIPTR(d)
   --  unsupported macro: PRIiPTR __PRIPTR(i)
   --  unsupported macro: PRIoPTR __PRIPTR(o)
   --  unsupported macro: PRIuPTR __PRIPTR(u)
   --  unsupported macro: PRIxPTR __PRIPTR(x)
   --  unsupported macro: PRIXPTR __PRIPTR(X)
   --  unsupported macro: SCNdPTR __SCNPTR(d)
   --  unsupported macro: SCNiPTR __SCNPTR(i)
   --  unsupported macro: SCNoPTR __SCNPTR(o)
   --  unsupported macro: SCNuPTR __SCNPTR(u)
   --  unsupported macro: SCNxPTR __SCNPTR(x)
  -- * Copyright (c) 2004, 2005 by
  -- * Ralf Corsepius, Ulm/Germany. All rights reserved.
  -- *
  -- * Permission to use, copy, modify, and distribute this software
  -- * is freely granted, provided that this notice is preserved.
  --  

  --*
  -- *  @file  inttypes.h
  --  

   type imaxdiv_t is record
      quot : aliased sys_ustdint_h.intmax_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:26
      c_rem : aliased sys_ustdint_h.intmax_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:27
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:28

  -- * Try to avoid defining wchar_t by using __WCHAR_TYPE__ when
  -- * available.
  --  

   subtype u_wchar_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:36

  -- 8-bit types  
  -- NOTICE: scanning 8-bit types requires use of the hh specifier
  -- * which is only supported on picolibc platforms that
  -- * are built with C99 I/O format support enabled.  If the flag in
  -- * picolibc.h hasn't been set during configuration to indicate this, the 8-bit
  -- * scanning format macros are disabled here as they result in undefined
  -- * behaviour which can include memory overwrite.  Overriding the flag after the
  -- * library has been built is not recommended as it will expose the underlying
  -- * undefined behaviour.
  --  

  -- Macros below are only enabled for a newlib built with C99 I/O format support.  
  -- Macros below are only enabled for a newlib built with C99 I/O format support.  
  -- Macros below are only enabled for a newlib built with C99 I/O format support.  
  -- 16-bit types  
  -- 32-bit types  
  -- 64-bit types  
  -- max-bit types  
  -- ptr types  
   function imaxabs (arg1 : sys_ustdint_h.intmax_t) return sys_ustdint_h.intmax_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "imaxabs";

   function imaxdiv (uu_numer : sys_ustdint_h.intmax_t; uu_denomer : sys_ustdint_h.intmax_t) return imaxdiv_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "imaxdiv";

   function strtoimax
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return sys_ustdint_h.intmax_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "strtoimax";

   function strtoumax
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return sys_ustdint_h.uintmax_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "strtoumax";

   function wcstoimax
     (arg1 : access u_wchar_t;
      arg2 : System.Address;
      arg3 : int) return sys_ustdint_h.intmax_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "wcstoimax";

   function wcstoumax
     (arg1 : access u_wchar_t;
      arg2 : System.Address;
      arg3 : int) return sys_ustdint_h.uintmax_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/inttypes.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "wcstoumax";

end inttypes_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
