pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_lock_h;
with System;
with Interfaces.C.Strings;
with sys_utypes_h;
with Interfaces.C.Extensions;
limited with sys_ulocale_h;

package sys_reent_h is

  -- This header file provides the reentrancy.   
  -- WARNING: All identifiers here must begin with an underscore.  This file is
  --   included by stdio.h and others and we therefore must only use identifiers
  --   in the namespace allotted to us.   

   subtype uu_ULong is unsigned_long;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:23

   subtype u_flock_t is sys_lock_h.u_LOCK_T;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:36

  -- * If _REENT_SMALL is defined, we make struct _reent as small as possible,
  -- * by having nearly everything possible allocated at first use.
  --  

   type u_Bigint;
   type anon_array1366 is array (0 .. 0) of aliased uu_ULong;
   type u_Bigint is record
      u_next : access u_Bigint;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:55
      u_k : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:56
      u_maxwds : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:56
      u_sign : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:56
      u_wds : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:56
      u_x : aliased anon_array1366;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:57
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:53

  -- needed by reentrant structure  
   type uu_tm is record
      uu_tm_sec : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:63
      uu_tm_min : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:64
      uu_tm_hour : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:65
      uu_tm_mday : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:66
      uu_tm_mon : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:67
      uu_tm_year : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:68
      uu_tm_wday : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:69
      uu_tm_yday : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:70
      uu_tm_isdst : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:71
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:61

  -- * atexit() support.
  --  

  -- user fn args  
   type anon_array1369 is array (0 .. 31) of System.Address;
   type u_on_exit_args is record
      u_fnargs : anon_array1369;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:81
      u_dso_handle : anon_array1369;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:82
      u_fntypes : aliased uu_ULong;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:84
      u_is_cxa : aliased uu_ULong;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:87
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:80

  -- Bitmask is set if user function takes arguments.   
  -- type of exit routine -
  --				   Must have at least _ATEXIT_SIZE bits  

  -- Bitmask is set if function was registered via __cxa_atexit.   
  -- next in list  
  -- next index in this table  
  -- the table itself  
  -- next in list  
   type u_atexit;
   type anon_array1372 is array (0 .. 31) of access procedure;
   type u_atexit is record
      u_next : access u_atexit;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:100
      u_ind : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:101
      u_fns : anon_array1372;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:103
      the_u_on_exit_args : aliased u_on_exit_args;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:99

  -- next index in this table  
  -- Some entries may already have been called, and will be NULL.   
  -- the table itself  
  -- * Stdio buffers.
  -- *
  -- * This and __FILE are defined here because we need them for struct _reent,
  -- * but we don't want stdio.h included when stdlib.h is.
  --  

   type uu_sbuf is record
      u_base : access unsigned_char;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:117
      u_size : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:116

  -- * Stdio state variables.
  -- *
  -- * The following always hold:
  -- *
  -- *	if (_flags&(__SLBF|__SWR)) == (__SLBF|__SWR),
  -- *		_lbfsize is -_bf._size, else _lbfsize is 0
  -- *	if _flags&__SRD, _w is 0
  -- *	if _flags&__SWR, _r is 0
  -- *
  -- * This ensures that the getc and putc macros (or inline functions) never
  -- * try to write or read from a file that is in `read' or `write' mode.
  -- * (Moreover, they can, and do, automatically switch from read mode to
  -- * write mode, and back, on "r+" and "w+" files.)
  -- *
  -- * _lbfsize is used only to make the inline line-buffered output stream
  -- * code as compact as possible.
  -- *
  -- * _ub, _up, and _ur are used when ungetc() pushes back more characters
  -- * than fit in the current _bf, or when ungetc() pushes back a character
  -- * that does not match the previous one in _bf.  When this happens,
  -- * _ub._base becomes non-nil (i.e., a stream has ungetc() data iff
  -- * _ub._base!=NULL) and _up and _ur save the current values of _p and _r.
  --  

  -- Cygwin must use __sFILE64 for backward compatibility, even though
  --   it's not defining __LARGE64_FILES anymore.  To make sure that __sFILE
  --   is never defined, disable it here explicitely.  

  -- current position in (some) buffer  
   type u_reent;
   type anon_array1389 is array (0 .. 2) of aliased unsigned_char;
   type anon_array1390 is array (0 .. 0) of aliased unsigned_char;
   type uu_sFILE is record
      u_p : access unsigned_char;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:154
      u_r : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:155
      u_w : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:156
      u_flags : aliased short;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:157
      u_file : aliased short;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:158
      u_bf : aliased uu_sbuf;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:159
      u_lbfsize : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:160
      u_cookie : System.Address;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:167
      u_read : access function
           (arg1 : access u_reent;
            arg2 : System.Address;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : int) return sys_utypes_h.u_ssize_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:169
      u_write : access function
           (arg1 : access u_reent;
            arg2 : System.Address;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : int) return sys_utypes_h.u_ssize_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:171
      u_seek : access function
           (arg1 : access u_reent;
            arg2 : System.Address;
            arg3 : sys_utypes_h.u_fpos_t;
            arg4 : int) return sys_utypes_h.u_fpos_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:174
      u_close : access function (arg1 : access u_reent; arg2 : System.Address) return int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:175
      u_ub : aliased uu_sbuf;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:178
      u_up : access unsigned_char;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:179
      u_ur : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:180
      u_ubuf : aliased anon_array1389;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:183
      u_nbuf : aliased anon_array1390;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:184
      u_lb : aliased uu_sbuf;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:187
      u_blksize : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:190
      u_offset : aliased sys_utypes_h.u_off_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:191
      u_data : access u_reent;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:194
      u_lock : u_flock_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:198
      u_mbstate : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:200
      u_flags2 : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:201
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:153

  -- read space left for getc()  
  -- write space left for putc()  
  -- flags, below; this FILE is free if 0  
  -- fileno, if Unix descriptor, else -1  
  -- the buffer (at least 1 byte, if !NULL)  
  -- 0 or -_bf._size, for inline putc  
  -- operations  
  -- cookie passed to io functions  
  -- separate buffer for long sequences of ungetc()  
  -- ungetc buffer  
  -- saved _p when _p is doing ungetc data  
  -- saved _r when _r is counting ungetc data  
  -- tricks to meet minimum requirements even when malloc() fails  
  -- guarantee an ungetc() buffer  
  -- guarantee a getc() buffer  
  -- separate buffer for fgetline() when line crosses buffer boundary  
  -- buffer for fgetline()  
  -- Unix stdio files get aligned to block boundaries on fseek()  
  -- stat.st_blksize (may be != _bf._size)  
  -- current lseek offset  
  -- Here for binary compatibility? Remove?  
  -- for thread-safety locking  
  -- for wide char stdio functions.  
  -- for future use  
  -- Get custom _FILE definition.   
  -- Cygwin must use __sFILE64 for backward compatibility, even though
  --   it's not defining __LARGE64_FILES anymore.  It also has to make
  --   sure the name is the same to satisfy C++ name mangling.  Overloading
  --   _fpos64_t just fixes a build problem.  The _seek64 function is
  --   actually never used without __LARGE64_FILES being defined.  

  -- current position in (some) buffer  
  -- read space left for getc()  
  -- write space left for putc()  
  -- flags, below; this FILE is free if 0  
  -- fileno, if Unix descriptor, else -1  
  -- the buffer (at least 1 byte, if !NULL)  
  -- 0 or -_bf._size, for inline putc  
  -- operations  
  -- cookie passed to io functions  
  -- separate buffer for long sequences of ungetc()  
  -- ungetc buffer  
  -- saved _p when _p is doing ungetc data  
  -- saved _r when _r is counting ungetc data  
  -- tricks to meet minimum requirements even when malloc() fails  
  -- guarantee an ungetc() buffer  
  -- guarantee a getc() buffer  
  -- separate buffer for fgetline() when line crosses buffer boundary  
  -- buffer for fgetline()  
  -- Unix stdio files get aligned to block boundaries on fseek()  
  -- stat.st_blksize (may be != _bf._size)  
  -- for future use  
  -- current lseek offset  
  -- for thread-safety locking  
  -- for wide char stdio functions.  
   subtype uu_FILE is uu_sFILE;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:270

   type u_glue;
   type u_glue is record
      u_next : access u_glue;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:278
      u_niobs : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:279
      u_iobs : access uu_FILE;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:280
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:276

  -- * rand48 family support
  -- *
  -- * Copyright (c) 1993 Martin Birgmeier
  -- * All rights reserved.
  -- *
  -- * You may redistribute unmodified or modified versions of this source
  -- * code provided that the above copyright notice and this and the
  -- * following conditions are retained.
  -- *
  -- * This software is provided ``as is'', and comes with no warranties
  -- * of any kind. I shall in no event be liable for anything that happens
  -- * to anyone/anything when using this software.
  --  

   type anon_array1399 is array (0 .. 2) of aliased unsigned_short;
   type u_rand48 is record
      u_seed : aliased anon_array1399;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:307
      u_mult : aliased anon_array1399;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:308
      u_add : aliased unsigned_short;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:309
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:306

  -- Put this in here as well, for good luck.   
  -- How big the some arrays are.   
  -- * struct _reent
  -- *
  -- * This structure contains the thread-local objects needed by the library.
  -- * It's raison d'etre is to facilitate threads by making all library routines
  -- * reentrant.  The exit handler support and FILE maintenance use dedicated
  -- * global objects which are not included in this structure.
  --  

  -- used by mprec routines  
  -- miscellaneous reentrant data  
  -- This version of _reent is laid out with "int"s in pairs, to help
  -- * ports with 16-bit int's but 32-bit pointers, align nicely.   

  -- As an exception to the above put _errno first for binary
  --     compatibility with non _REENT_SMALL targets.   

  -- local copy of errno  
  -- FILE is a big struct and may change over time.  To try to achieve binary
  --     compatibility with future versions, put stdin,stdout,stderr here.
  --     These are pointers into member __sf defined below.   

  -- XXX  
  -- used by tmpnam  
  -- per-thread locale  
  -- used by some fp conversion routines  
  -- should be size_t  
  -- signal info  
  -- file descriptors  
  -- strtok, multibyte states  
  -- strsignal  
  -- Specify how to handle reent_check malloc failures.  
  -- Generic _REENT check macro.   
  -- Handle the dynamically allocated rand48 structure.  
  -- local copy of errno  
  -- FILE is a big struct and may change over time.  To try to achieve binary
  --     compatibility with future versions, put stdin,stdout,stderr here.
  --     These are pointers into member __sf defined below.   

  -- used by tmpnam  
  -- per-thread locale  
  -- used by mprec routines  
  -- used by some fp conversion routines  
  -- should be size_t  
   subtype anon_array1401 is Interfaces.C.char_array (0 .. 24);
   subtype anon_array1408 is Interfaces.C.char_array (0 .. 25);
   subtype anon_array1410 is Interfaces.C.char_array (0 .. 7);
   subtype anon_array1412 is Interfaces.C.char_array (0 .. 23);
   type anon_struct1406 is record
      u_strtok_last : Interfaces.C.Strings.chars_ptr;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:608
      u_asctime_buf : aliased anon_array1408;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:609
      u_localtime_buf : aliased uu_tm;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:610
      u_gamma_signgam : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:611
      u_rand_next : aliased Extensions.unsigned_long_long;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:612
      u_r48 : aliased u_rand48;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:613
      u_mblen_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:614
      u_mbtowc_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:615
      u_wctomb_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:616
      u_l64a_buf : aliased anon_array1410;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:617
      u_signal_buf : aliased anon_array1412;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:618
      u_getdate_err : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:619
      u_mbrlen_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:620
      u_mbrtowc_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:621
      u_mbsrtowcs_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:622
      u_wcrtomb_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:623
      u_wcsrtombs_state : aliased sys_utypes_h.u_mbstate_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:624
      u_h_errno : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:625
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union1405 (discr : unsigned := 0) is record
      case discr is
         when others =>
            u_reent : aliased anon_struct1406;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:634
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_reent is record
      u_errno : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:570
      u_stdin : access uu_FILE;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:575
      u_stdout : access uu_FILE;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:575
      u_stderr : access uu_FILE;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:575
      u_inc : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:577
      u_emergency : aliased anon_array1401;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:578
      u_locale : access sys_ulocale_h.uu_locale_t;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:583
      uu_cleanup : access procedure (arg1 : access u_reent);  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:589
      u_result : access u_Bigint;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:592
      u_result_k : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:593
      u_p5s : access u_Bigint;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:594
      u_freelist : System.Address;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:595
      u_cvtlen : aliased int;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:598
      u_cvtbuf : Interfaces.C.Strings.chars_ptr;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:599
      u_new : aliased anon_union1405;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:642
      u_sig_func : System.Address;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:650
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/reent.h:568

  -- signal info  
  -- * All references to struct _reent are via this pointer.
  -- * Internally, newlib routines that need to reference it should use _REENT.
  --  

  -- #define _REENT_ONLY define this to get only reentrant routines  
  -- * Since _REENT is defined as NULL, this macro ensures that calls to
  -- * CHECK_INIT() do not automatically fail.
  --  

  -- This value is used in stdlib/misc.c.  reent/reent.c has to know it
  --   as well to make sure the freelist is correctly free'd.  Therefore
  --   we define it here, rather than in stdlib/misc.c, as before.  

  -- points to head of LIFO stack  
  -- one guaranteed table, required by ANSI  
   --  skipped func _reclaim_reent

   --  skipped func _fwalk_sglue

end sys_reent_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
