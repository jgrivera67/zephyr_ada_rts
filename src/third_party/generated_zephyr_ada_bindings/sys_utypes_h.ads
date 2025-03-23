pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with machine_udefault_types_h;
with stddef_h;
with System;

package sys_utypes_h is

  --Copyright (c) 1982, 1986, 1993
  --The Regents of the University of California.  All rights reserved.
  --Redistribution and use in source and binary forms, with or without
  --modification, are permitted provided that the following conditions
  --are met:
  --1. Redistributions of source code must retain the above copyright
  --notice, this list of conditions and the following disclaimer.
  --2. Redistributions in binary form must reproduce the above copyright
  --notice, this list of conditions and the following disclaimer in the
  --documentation and/or other materials provided with the distribution.
  --3. Neither the name of the University nor the names of its contributors
  --may be used to endorse or promote products derived from this software
  --without specific prior written permission.
  --THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
  --ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  --IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  --ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
  --FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  --DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  --OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  --HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  --LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  --OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  --SUCH DAMAGE.
  --  

  -- ANSI C namespace clean utility typedefs  
  -- This file defines various typedefs needed by the system calls that support
  --   the C library.  Basically, they're just the POSIX versions with an '_'
  --   prepended.  Targets shall use <machine/_types.h> to define their own
  --   internal types if desired.
  --   There are three define patterns used for type definitions.  Lets assume
  --   xyz_t is a user type.
  --   The internal type definition uses __machine_xyz_t_defined.  It is defined by
  --   <machine/_types.h> to disable a default definition in <sys/_types.h>. It
  --   must not be used in other files.
  --   User type definitions are guarded by __xyz_t_defined in glibc and
  --   _XYZ_T_DECLARED in BSD compatible systems.
  -- 

  -- The Arm Compiler doesn't define wint_t as part of stddef.h so
  -- * define it here.
  --  

   subtype uu_blkcnt_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:66

   subtype uu_blkcnt64_t is machine_udefault_types_h.uu_int64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:67

   subtype uu_blksize_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:71

   subtype uu_fsblkcnt_t is machine_udefault_types_h.uu_uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:75

   subtype uu_fsfilcnt_t is machine_udefault_types_h.uu_uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:79

   subtype u_off_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:83

   subtype uu_pid_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:89

   subtype uu_dev_t is short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:96

   subtype uu_uid_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:104

   subtype uu_gid_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:111

   subtype uu_id_t is machine_udefault_types_h.uu_uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:116

   subtype uu_ino_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:124

   subtype uu_ino64_t is machine_udefault_types_h.uu_uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:126

   subtype uu_mode_t is machine_udefault_types_h.uu_uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:140

   subtype u_off64_t is Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:146

   subtype uu_off_t is u_off_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:152

   subtype uu_off64_t is machine_udefault_types_h.uu_uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:153

   subtype uu_loff_t is u_off64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:156

   subtype uu_key_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:159

  -- * We need fpos_t for the following, but it doesn't have a leading "_",
  -- * so we use _fpos_t instead.
  --  

  -- XXX must match off_t in <sys/types.h>  
   subtype u_fpos_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:167

  -- (and must be `long' for now)  
  -- Defined by GCC provided <stddef.h>  
   subtype uu_size_t is unsigned;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:182

  -- If __SIZE_TYPE__ is defined (gcc) we define ssize_t based on size_t.
  --   We simply change "unsigned" to "signed" for this single definition
  --   to make sure ssize_t and size_t only differ by their signedness.  

   subtype u_ssize_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:198

   subtype uu_ssize_t is u_ssize_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:209

  -- Conversion state information.   
  -- Value so far.   
   type anon_array922 is array (0 .. 3) of aliased unsigned_char;
   type anon_union1321 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_wch : aliased stddef_h.wint_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:218
         when others =>
            uu_wchb : aliased anon_array922;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:219
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_mbstate_t is record
      uu_count : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:215
      uu_value : aliased anon_union1321;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:220
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:221

  -- Iconv descriptor type  
   type u_iconv_t is new System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:226

   subtype uu_clock_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:233

   subtype uu_time_t is machine_udefault_types_h.uu_int_least64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:240

   subtype uu_clockid_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:246

   subtype uu_daddr_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:249

   subtype uu_timer_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:253

   subtype uu_sa_family_t is machine_udefault_types_h.uu_uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:256

   subtype uu_socklen_t is machine_udefault_types_h.uu_uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:260

   subtype uu_nl_item is machine_udefault_types_h.uu_int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:263

   subtype uu_nlink_t is unsigned_short;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:264

  -- microseconds (signed)  
   subtype uu_suseconds_t is long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:265

  -- microseconds (unsigned)  
   subtype uu_useconds_t is unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_types.h:266

end sys_utypes_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
