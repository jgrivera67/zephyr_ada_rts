pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with stddef_h;
with Interfaces.C.Extensions;

package stdlib_h is

   EXIT_FAILURE : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:92
   EXIT_SUCCESS : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:93
   --  unsupported macro: RAND_MAX __RAND_MAX
   --  unsupported macro: MB_CUR_MAX __locale_mb_cur_max()

   ATEXIT_MAX : constant := 32;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:108

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

  -- * stdlib.h
  -- *
  -- * Definitions for common types, variables, and functions.
  --  

  -- quotient  
  -- remainder  
   type div_t is record
      quot : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:69
      c_rem : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:70
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:71

  -- quotient  
  -- remainder  
   type ldiv_t is record
      quot : aliased long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:75
      c_rem : aliased long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:76
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:77

  -- quotient  
  -- remainder  
   type lldiv_t is record
      quot : aliased Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:82
      c_rem : aliased Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:83
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:84

   type uu_compar_fn_t is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:89

   --  skipped func __locale_mb_cur_max

   procedure c_abort  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "abort";

   function c_abs (arg1 : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "abs";

   function atexit (uu_func : access procedure) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "atexit";

   function atof (uu_nptr : Interfaces.C.Strings.chars_ptr) return double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "atof";

   function atoi (uu_nptr : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "atoi";

   function atol (uu_nptr : Interfaces.C.Strings.chars_ptr) return long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "atol";

   function bsearch
     (uu_key : System.Address;
      uu_base : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t;
      u_compar : uu_compar_fn_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "bsearch";

   function calloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "calloc";

   function div (uu_numer : int; uu_denom : int) return div_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "div";

   procedure c_exit (uu_status : int)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "exit";

   function getenv (uu_string : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "getenv";

   --  skipped func _findenv

  -- getsubopt(3) external variable  
   suboptarg : Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "suboptarg";

   function getsubopt
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "getsubopt";

   function labs (arg1 : long) return long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "labs";

   function ldiv (uu_numer : long; uu_denom : long) return ldiv_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "ldiv";

   function malloc (arg1 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "malloc";

   function valloc (arg1 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "valloc";

   function mblen (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "mblen";

   function mbtowc
     (arg1 : access stddef_h.wchar_t;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "mbtowc";

   function wctomb (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.wchar_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "wctomb";

   function mbstowcs
     (arg1 : access stddef_h.wchar_t;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "mbstowcs";

   function wcstombs
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access stddef_h.wchar_t;
      arg3 : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "wcstombs";

   function mkdtemp (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "mkdtemp";

   function mkstemp (arg1 : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemp";

   procedure qsort
     (uu_base : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t;
      u_compar : uu_compar_fn_t)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "qsort";

   function rand return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "rand";

   function realloc (arg1 : System.Address; arg2 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "realloc";

   procedure srand (uu_seed : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "srand";

   function strtod (uu_n : Interfaces.C.Strings.chars_ptr; uu_end_PTR : System.Address) return double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "strtod";

   function strfromd
     (str : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr;
      fp : double) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "strfromd";

   function strtof (uu_n : Interfaces.C.Strings.chars_ptr; uu_end_PTR : System.Address) return float  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "strtof";

   function strfromf
     (str : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr;
      fp : float) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf";

   function strfroml
     (str : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr;
      fp : long_double) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "strfroml";

  -- the following strtodf interface is deprecated...use strtof instead  
   function strtol
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "strtol";

   function strtoul
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return unsigned_long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "strtoul";

   function c_system (uu_string : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "system";

   --  skipped func _Exit

   function setenv
     (uu_string : Interfaces.C.Strings.chars_ptr;
      uu_value : Interfaces.C.Strings.chars_ptr;
      uu_overwrite : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "setenv";

   --  skipped func __itoa

   --  skipped func __utoa

   function rand_r (uu_seed : access unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "rand_r";

   function atoll (uu_nptr : Interfaces.C.Strings.chars_ptr) return Long_Long_Integer  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "atoll";

   function llabs (arg1 : Long_Long_Integer) return Long_Long_Integer  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "llabs";

   function lldiv (uu_numer : Long_Long_Integer; uu_denom : Long_Long_Integer) return lldiv_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "lldiv";

   function strtoll
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return Long_Long_Integer  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "strtoll";

   function strtoull
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return Extensions.unsigned_long_long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "strtoull";

   function unsetenv (uu_string : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "unsetenv";

   function posix_memalign
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "posix_memalign";

   --  skipped func __dtoa

   --  skipped func __ldtoa

   --  skipped func __eprintf

  -- There are two common qsort_r variants.  If you request
  --   _BSD_SOURCE, you get the BSD version; otherwise you get the GNU
  --   version.  We want that #undef qsort_r will still let you
  --   invoke the underlying function, but that requires gcc support.  

  -- On platforms where long double equals double.   
   function strtold (uu_n : Interfaces.C.Strings.chars_ptr; uu_end_PTR : System.Address) return long_double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "strtold";

  -- * If we're in a mode greater than C99, expose C11 functions.
  --  

   function aligned_alloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "aligned_alloc";

   function at_quick_exit (arg1 : access procedure) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "at_quick_exit";

   procedure quick_exit (arg1 : int)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdlib.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "quick_exit";

end stdlib_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
