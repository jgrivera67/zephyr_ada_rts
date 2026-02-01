pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with machine_udefault_types_h;
with sys_utypes_h;
with Interfaces.C.Strings;
with machine_utypes_h;

package sys_types_h is

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

  -- unified sys/types.h:
  --   start with sef's sysvi386 version.
  --   merge go32 version -- a few ifdefs.
  --   h8300hms, h8300xray, and sysvnecv70 disagree on the following types:
  --   typedef int gid_t;
  --   typedef int uid_t;
  --   typedef int dev_t;
  --   typedef int ino_t;
  --   typedef int mode_t;
  --   typedef int caddr_t;
  --   however, these aren't "reasonable" values, the sysvi386 ones make far
  --   more sense, and should work sufficiently well (in particular, h8300
  --   doesn't have a stat, and the necv70 doesn't matter.) -- eichin
  --

  -- BSD types permitted by POSIX and always exposed as in Glibc.  Only provided
  --   for backward compatibility with BSD code.  The uintN_t standard types should
  --   be preferred in new code.

   subtype u_int8_t is machine_udefault_types_h.uu_uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:55

   subtype u_int16_t is machine_udefault_types_h.uu_uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:58

   subtype u_int32_t is machine_udefault_types_h.uu_uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:61

   subtype u_int64_t is machine_udefault_types_h.uu_uint64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:64

   subtype register_t is machine_udefault_types_h.uu_intptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:66

  -- base type for internet address
  -- also defined in mingw/gmon.h and in w32api/winsock[2].h
  -- System V compatibility
  -- System V compatibility
  -- System V compatibility
   subtype blkcnt_t is sys_utypes_h.uu_blkcnt_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:123

   subtype blksize_t is sys_utypes_h.uu_blksize_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:128

   subtype daddr_t is sys_utypes_h.uu_daddr_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:142

   type caddr_t is new Interfaces.C.Strings.chars_ptr;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:145

   subtype fsblkcnt_t is sys_utypes_h.uu_fsblkcnt_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:150

   subtype fsfilcnt_t is sys_utypes_h.uu_fsfilcnt_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:151

  -- can hold a uid_t or pid_t
   subtype id_t is sys_utypes_h.uu_id_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:156

  -- inode number
   subtype ino_t is sys_utypes_h.uu_ino_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:161

   subtype ssize_t is machine_utypes_h.u_ssize_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:172

  -- file offset
   subtype off_t is sys_utypes_h.uu_off_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:177

  -- 64-bit file offset
   subtype off64_t is sys_utypes_h.uu_off64_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:182

  -- device number or struct cdev
   subtype dev_t is sys_utypes_h.uu_dev_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:187

  -- user id
   subtype uid_t is sys_utypes_h.uu_uid_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:192

  -- group id
   subtype gid_t is sys_utypes_h.uu_gid_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:197

  -- process id
    --  *** FIX ***
   subtype pid_t is sys_utypes_h.uu_pid_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:202

  -- IPC key
   subtype key_t is sys_utypes_h.uu_key_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:207

  -- permissions
   subtype mode_t is sys_utypes_h.uu_mode_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:212

  -- link count
   subtype nlink_t is sys_utypes_h.uu_nlink_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:217

   subtype clockid_t is sys_utypes_h.uu_clockid_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:222

   subtype timer_t is sys_utypes_h.uu_timer_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:230

  -- microseconds (unsigned)
   --  *** FIX ***
   subtype useconds_t is sys_utypes_h.uu_useconds_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:238

   subtype suseconds_t is sys_utypes_h.uu_suseconds_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/aarch64-zephyr-elf/picolibc/include/sys/types.h:243

end sys_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
