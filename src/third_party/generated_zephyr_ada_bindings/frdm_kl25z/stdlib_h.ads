pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package stdlib_h is

   EXIT_FAILURE : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:89
   EXIT_SUCCESS : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:90
   --  unsupported macro: RAND_MAX __RAND_MAX
   --  unsupported macro: MB_CUR_MAX __locale_mb_cur_max()

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
      quot : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:66
      c_rem : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:67
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:68

  -- quotient  
  -- remainder  
   type ldiv_t is record
      quot : aliased long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:72
      c_rem : aliased long;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:74

  -- quotient  
  -- remainder  
   type lldiv_t is record
      quot : aliased Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:79
      c_rem : aliased Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:81

   type uu_compar_fn_t is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:86

   --  skipped func __locale_mb_cur_max

  -- Declare free up here so it can be used with __malloc_like  
   --  skipped func _Exit

   procedure c_abort  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "abort";

   function c_abs (arg1 : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "abs";

   function aligned_alloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "aligned_alloc";

   function at_quick_exit (arg1 : access procedure) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "at_quick_exit";

   function atexit (uu_func : access procedure) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "atexit";

   function atof (uu_nptr : Interfaces.C.Strings.chars_ptr) return double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "atof";

   function atoi (uu_nptr : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "atoi";

   function atol (uu_nptr : Interfaces.C.Strings.chars_ptr) return long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "atol";

   function atoll (uu_nptr : Interfaces.C.Strings.chars_ptr) return Long_Long_Integer  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "atoll";

   function bsearch
     (uu_key : System.Address;
      uu_base : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t;
      u_compar : uu_compar_fn_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "bsearch";

   function calloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "calloc";

   function div (uu_numer : int; uu_denom : int) return div_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "div";

   procedure c_exit (uu_status : int)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "exit";

   function getenv (uu_string : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "getenv";

  -- getsubopt(3) external variable  
   suboptarg : Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "suboptarg";

   function getsubopt
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "getsubopt";

   function labs (arg1 : long) return long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "labs";

   function ldiv (uu_numer : long; uu_denom : long) return ldiv_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "ldiv";

   function llabs (arg1 : Long_Long_Integer) return Long_Long_Integer  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "llabs";

   function lldiv (uu_numer : Long_Long_Integer; uu_denom : Long_Long_Integer) return lldiv_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "lldiv";

   function malloc (arg1 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "malloc";

   function mblen (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "mblen";

   function mbstowcs
     (arg1 : access stddef_h.wchar_t;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "mbstowcs";

   function mbtowc
     (arg1 : access stddef_h.wchar_t;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "mbtowc";

   function mkdtemp (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "mkdtemp";

   function mkstemp (arg1 : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemp";

   function posix_memalign
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "posix_memalign";

   procedure quick_exit (arg1 : int)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "quick_exit";

   procedure qsort
     (uu_base : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t;
      u_compar : uu_compar_fn_t)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "qsort";

  -- There are two common qsort_r variants.  If you request
  --   _BSD_SOURCE, you get the BSD version; otherwise you get the GNU
  --   version.  We want that #undef qsort_r will still let you
  --   invoke the underlying function, but that requires gcc support.  

   function rand return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "rand";

   function rand_r (uu_seed : access unsigned) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "rand_r";

   function realloc (arg1 : System.Address; arg2 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "realloc";

   function setenv
     (uu_string : Interfaces.C.Strings.chars_ptr;
      uu_value : Interfaces.C.Strings.chars_ptr;
      uu_overwrite : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "setenv";

   procedure srand (uu_seed : unsigned)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "srand";

   function strtod (uu_n : Interfaces.C.Strings.chars_ptr; uu_end_PTR : System.Address) return double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "strtod";

   function strfromd
     (str : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr;
      fp : double) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "strfromd";

   function strtof (uu_n : Interfaces.C.Strings.chars_ptr; uu_end_PTR : System.Address) return float  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "strtof";

   function strfromf
     (str : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr;
      fp : float) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf";

   function strfroml
     (str : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr;
      fp : long_double) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "strfroml";

  -- the following strtodf interface is deprecated...use strtof instead  
   function strtol
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "strtol";

   function strtold (uu_n : Interfaces.C.Strings.chars_ptr; uu_end_PTR : System.Address) return long_double  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "strtold";

   function strtoll
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return Long_Long_Integer  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "strtoll";

   function strtoul
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return unsigned_long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "strtoul";

   function strtoull
     (uu_n : Interfaces.C.Strings.chars_ptr;
      uu_end_PTR : System.Address;
      uu_base : int) return Extensions.unsigned_long_long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "strtoull";

   function c_system (uu_string : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "system";

   function unsetenv (uu_string : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "unsetenv";

   function wcstombs
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access stddef_h.wchar_t;
      arg3 : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "wcstombs";

   function wctomb (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : stddef_h.wchar_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "wctomb";

   function valloc (arg1 : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/stdlib.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "valloc";

  -- XSI Legacy option group  
  -- Random newlib APIs  
end stdlib_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
