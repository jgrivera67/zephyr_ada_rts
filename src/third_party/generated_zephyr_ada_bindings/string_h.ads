pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
with Interfaces.C.Strings;
with sys_ulocale_h;

package string_h is

  --Copyright (c) 1991, 1993
  --The Regents of the University of California.  All rights reserved.
  --c) UNIX System Laboratories, Inc.
  --All or some portions of this file are derived from material licensed
  --to the University of California by American Telephone and Telegraph
  --Co. or Unix System Laboratories, Inc. and are reproduced herein with
  --the permission of UNIX System Laboratories, Inc.
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

  -- * string.h
  -- *
  -- * Definitions for memory and string functions.
  --  

   function memchr
     (arg1 : System.Address;
      arg2 : int;
      arg3 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "memchr";

   function memcmp
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "memcmp";

   function memcpy
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "memcpy";

   function memmove
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "memmove";

   function memset
     (arg1 : System.Address;
      arg2 : int;
      arg3 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "memset";

   function strcat (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "strcat";

   function strchr (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "strchr";

   function strcmp (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "strcmp";

   function strcoll (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "strcoll";

   function strcpy (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "strcpy";

   function strcspn (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "strcspn";

   function strerror (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "strerror";

   function strlen (arg1 : Interfaces.C.Strings.chars_ptr) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "strlen";

   function strncat
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "strncat";

   function strncmp
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "strncmp";

   function strncpy
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "strncpy";

   function strpbrk (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "strpbrk";

   function strrchr (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "strrchr";

   function strspn (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "strspn";

   function strstr (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "strstr";

   function strtok (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "strtok";

   function strxfrm
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "strxfrm";

   function strcoll_l
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : sys_ulocale_h.locale_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "strcoll_l";

   function strerror_l (arg1 : int; arg2 : sys_ulocale_h.locale_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "strerror_l";

   function strxfrm_l
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t;
      arg4 : sys_ulocale_h.locale_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "strxfrm_l";

   function strtok_r
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "strtok_r";

   function memccpy
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : int;
      arg4 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "memccpy";

   function stpcpy (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "stpcpy";

   function stpncpy
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "stpncpy";

   procedure free (arg1 : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "free";

   function strdup (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "strdup";

   function strndup (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "strndup";

  -- There are two common strerror_r variants.  If you request
  --   _GNU_SOURCE, you get the GNU version; otherwise you get the POSIX
  --   version.  POSIX requires that #undef strerror_r will still let you
  --   invoke the underlying function, but that requires gcc support.   

   function strerror_r
     (arg1 : int;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "__xpg_strerror_r";

  -- Reentrant version of strerror.   
   --  skipped func _strerror_r

   function strnlen (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "strnlen";

   function strsignal (uu_signo : int) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/string.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "strsignal";

  -- There are two common basename variants.  If you do NOT #include <libgen.h>
  --   and you do
  --     #define _GNU_SOURCE
  --     #include <string.h>
  --   you get the GNU version.  Otherwise you get the POSIX versionfor which you
  --   should #include <libgen.h>i for the function prototype.  POSIX requires that
  --   #undef basename will still let you invoke the underlying function.  However,
  --   this also implies that the POSIX version is used in this case.  That's made
  --   sure here.  

end string_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
