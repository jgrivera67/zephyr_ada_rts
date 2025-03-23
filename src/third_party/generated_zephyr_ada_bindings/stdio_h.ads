pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with sys_utypes_h;
with Interfaces.C.Strings;
with stddef_h;
with stdarg_h;
with System;
with sys_types_h;

package stdio_h is

   --  arg-macro: procedure FDEV_SETUP_CLOSE (put, get, flush, _close, rwflag)
   --    { .file := FDEV_SETUP_STREAM(put, get, flush, (rwflag) or __SCLOSE), .close := (_close), }
   --  arg-macro: procedure FDEV_SETUP_EXT (put, get, flush, close, _seek, _setvbuf, rwflag)
   --    { .cfile := FDEV_SETUP_CLOSE(put, get, flush, close, (rwflag) or __SEXT), .seek := (_seek), .setvbuf := (_setvbuf), }
   --  unsupported macro: stdin stdin
   --  unsupported macro: stdout stdout
   --  unsupported macro: stderr stderr
   EOF : constant := (-1);  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:156
   --  arg-macro: procedure fdev_setup_stream (stream, p, g, fl, f)
   --    do { (stream).flags := f; (stream).put := p; (stream).get := g; (stream).flush := fl; } while(0)
   --  arg-macro: procedure FDEV_SETUP_STREAM (p, g, fl, f)
   --    { .flags := (f), .put := (p), .get := (g), .flush := (fl), }
   --  arg-macro: function fdev_close (f)
   --    return fflush(f);
   --  arg-macro: procedure putc (__c, __stream)
   --    fputc(__c, __stream)
   --  arg-macro: procedure putchar (__c)
   --    fputc(__c, stdout)
   --  arg-macro: procedure getc (__stream)
   --    fgetc(__stream)
   --  arg-macro: procedure getchar ()
   --    fgetc(stdin)
   --  arg-macro: function clearerr (s)
   --    return (s).flags &= ~(__SERR or __SEOF);
   --  arg-macro: function feof (s)
   --    return (s).flags and __SEOF;
   --  arg-macro: function ferror (s)
   --    return (s).flags and __SERR;

   SEEK_SET : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:277

   SEEK_CUR : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:280

   SEEK_END : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:283

   BUFSIZ : constant := 512;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:288

   FOPEN_MAX : constant := 32;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:296

   FILENAME_MAX : constant := 1024;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:299

   L_tmpnam : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:330

   P_tmpdir : aliased constant String := "" & ASCII.NUL;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:335

   TMP_MAX : constant := 32;  --  /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:341
   --  arg-macro: function printf_float (x)
   --    return (double) (x);

  -- Copyright (c) 2002, 2005, 2007 Joerg Wunsch
  --   All rights reserved.
  --   Portions of documentation Copyright (c) 1990, 1991, 1993
  --   The Regents of the University of California.
  --   All rights reserved.
  --   Redistribution and use in source and binary forms, with or without
  --   modification, are permitted provided that the following conditions are met:
  --   * Redistributions of source code must retain the above copyright
  --     notice, this list of conditions and the following disclaimer.
  --   * Redistributions in binary form must reproduce the above copyright
  --     notice, this list of conditions and the following disclaimer in
  --     the documentation and/or other materials provided with the
  --     distribution.
  --   * Neither the name of the copyright holders nor the names of
  --     contributors may be used to endorse or promote products derived
  --     from this software without specific prior written permission.
  --  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  --  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  --  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  --  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  --  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  --  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  --  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  --  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  --  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  --  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  --  POSSIBILITY OF SUCH DAMAGE.
  --  $Id: stdio.h 2527 2016-10-27 20:41:22Z joerg_wunsch $
  -- 

  -- * This is an internal structure of the library that is subject to be
  -- * changed without warnings at any time.  Please do *never* reference
  -- * elements of it beyond by using the official interfaces provided.
  --  

  -- * Use 32-bit ungetc storage when doing atomic ungetc on RISC-V and
  -- * MicroBlaze, which have 4-byte swap intrinsics but not 2-byte swap
  -- * intrinsics. This increases the size of the __file struct by four
  -- * bytes.
  --  

   subtype uu_ungetc_t is sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:77

  -- ungetc() buffer  
   type uu_file;
   type uu_file is record
      unget : aliased uu_ungetc_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:85
      flags : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:86
      put : access function (arg1 : char; arg2 : access uu_file) return int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:95
      get : access function (arg1 : access uu_file) return int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:96
      flush : access function (arg1 : access uu_file) return int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:97
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:84

  -- flags, see below  
  -- function to write one char to device  
  -- function to read one char from device  
  -- function to flush output to device  
  -- * This variant includes a 'close' function which is
  -- * invoked from fclose when the __SCLOSE bit is set
  --  

  -- main file struct  
   type uu_file_close is record
      file : aliased uu_file;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:105
      close : access function (arg1 : access uu_file) return int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:106
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:104

  -- function to close file  
  -- close file struct  
   type uu_file_ext is record
      cfile : aliased uu_file_close;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:116
      seek : access function
           (arg1 : access uu_file;
            arg2 : sys_utypes_h.uu_off_t;
            arg3 : int) return sys_utypes_h.uu_off_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:117
      setvbuf : access function
           (arg1 : access uu_file;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : int;
            arg4 : stddef_h.size_t) return int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:115

  --@{ 
  --*
  --   \c FILE is the opaque structure that is passed around between the
  --   various standard IO functions.
  -- 

   subtype FILE is uu_FILE;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:135

  --*
  --   This symbol is defined when stdin/stdout/stderr are global
  --   variables. When undefined, the old __iob array is used which
  --   contains the pointers instead
  -- 

   stdin : constant access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "stdin";

   stdout : constant access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "stdout";

   stderr : constant access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "stderr";

  -- The stdin, stdout, and stderr symbols are described as macros in the C
  -- * standard.  

  --*
  -- * Return code for an error condition during device read.
  -- *
  -- * To be used in the get function of fdevopen().
  --  

  --*
  -- * Return code for an end-of-file condition during device read.
  -- *
  -- * To be used in the get function of fdevopen().
  --  

   function fdevopen
     (uu_put : access function (arg1 : char; arg2 : access FILE) return int;
      uu_get : access function (arg1 : access FILE) return int;
      uu_flush : access function (arg1 : access FILE) return int) return access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "fdevopen";

   function fclose (uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "fclose";

   function fflush (stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "fflush";

   function fputc (uu_c : int; uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "fputc";

   function putc (uu_c : int; uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "putc";

   function putchar (uu_c : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "putchar";

   function printf (uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "printf";

   function fprintf (uu_stream : access FILE; uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "fprintf";

   function vprintf (uu_fmt : Interfaces.C.Strings.chars_ptr; uu_ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "vprintf";

   function vfprintf
     (uu_stream : access FILE;
      uu_fmt : Interfaces.C.Strings.chars_ptr;
      uu_ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "vfprintf";

   function sprintf (uu_s : Interfaces.C.Strings.chars_ptr; uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "sprintf";

   function snprintf
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_n : stddef_h.size_t;
      uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "snprintf";

   function vsprintf
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_fmt : Interfaces.C.Strings.chars_ptr;
      ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "vsprintf";

   function vsnprintf
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_n : stddef_h.size_t;
      uu_fmt : Interfaces.C.Strings.chars_ptr;
      ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "vsnprintf";

   function asprintf (strp : System.Address; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "asprintf";

   function vasprintf
     (strp : System.Address;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "vasprintf";

   function fputs (uu_str : Interfaces.C.Strings.chars_ptr; uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "fputs";

   function puts (uu_str : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "puts";

   function fwrite
     (uu_ptr : System.Address;
      uu_size : stddef_h.size_t;
      uu_nmemb : stddef_h.size_t;
      uu_stream : access FILE) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "fwrite";

   function fgetc (uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "fgetc";

   function getc (uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "getc";

   function getchar return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "getchar";

   function ungetc (uu_c : int; uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "ungetc";

   function scanf (uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "scanf";

   function fscanf (uu_stream : access FILE; uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "fscanf";

   function vscanf (uu_fmt : Interfaces.C.Strings.chars_ptr; uu_ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "vscanf";

   function vfscanf
     (uu_stream : access FILE;
      uu_fmt : Interfaces.C.Strings.chars_ptr;
      uu_ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "vfscanf";

   function sscanf (uu_buf : Interfaces.C.Strings.chars_ptr; uu_fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "sscanf";

   function vsscanf
     (uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_fmt : Interfaces.C.Strings.chars_ptr;
      ap : stdarg_h.va_list) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "vsscanf";

   function fgets
     (uu_str : Interfaces.C.Strings.chars_ptr;
      uu_size : int;
      uu_stream : access FILE) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "fgets";

   function gets (uu_str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gets";

   function fread
     (uu_ptr : System.Address;
      uu_size : stddef_h.size_t;
      uu_nmemb : stddef_h.size_t;
      uu_stream : access FILE) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "fread";

   procedure clearerr (uu_stream : access FILE)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "clearerr";

  -- fast inlined version of clearerr()  
   function feof (uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "feof";

  -- fast inlined version of feof()  
   function ferror (uu_stream : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "ferror";

  -- fast inlined version of ferror()  
  -- only mentioned for libstdc++ support, not implemented in library  
  -- * We don't have any way of knowing any underlying POSIX limits,
  -- * so just use a reasonably small values here
  --  

   subtype fpos_t is sys_utypes_h.u_fpos_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:302

   function fgetpos (stream : access FILE; pos : access fpos_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "fgetpos";

   function fopen (path : Interfaces.C.Strings.chars_ptr; mode : Interfaces.C.Strings.chars_ptr) return access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "fopen";

   function freopen
     (path : Interfaces.C.Strings.chars_ptr;
      mode : Interfaces.C.Strings.chars_ptr;
      stream : access FILE) return access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "freopen";

   function fdopen (arg1 : int; arg2 : Interfaces.C.Strings.chars_ptr) return access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "fdopen";

   function fmemopen
     (buf : System.Address;
      size : stddef_h.size_t;
      mode : Interfaces.C.Strings.chars_ptr) return access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "fmemopen";

   function fseek
     (stream : access FILE;
      offset : long;
      whence : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "fseek";

   function fseeko
     (stream : access FILE;
      offset : sys_utypes_h.uu_off_t;
      whence : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "fseeko";

   function fsetpos (stream : access FILE; pos : access fpos_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "fsetpos";

   function ftell (stream : access FILE) return long  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "ftell";

   function ftello (stream : access FILE) return sys_utypes_h.uu_off_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "ftello";

   function fileno (arg1 : access FILE) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "fileno";

   procedure perror (s : Interfaces.C.Strings.chars_ptr)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "perror";

   function remove (pathname : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "remove";

   function rename (oldpath : Interfaces.C.Strings.chars_ptr; newpath : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "rename";

   procedure rewind (stream : access FILE)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "rewind";

   procedure setbuf (stream : access FILE; buf : Interfaces.C.Strings.chars_ptr)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "setbuf";

   procedure setbuffer
     (stream : access FILE;
      buf : Interfaces.C.Strings.chars_ptr;
      size : stddef_h.size_t)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "setbuffer";

   procedure setlinebuf (stream : access FILE)  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "setlinebuf";

   function setvbuf
     (stream : access FILE;
      buf : Interfaces.C.Strings.chars_ptr;
      mode : int;
      size : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "setvbuf";

   function tmpfile return access FILE  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "tmpfile";

   function tmpnam (s : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "tmpnam";

   function getline
     (lineptr : System.Address;
      n : access stddef_h.size_t;
      stream : access FILE) return sys_types_h.ssize_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "getline";

   function getdelim
     (lineptr : System.Address;
      n : access stddef_h.size_t;
      delim : int;
      stream : access FILE) return sys_types_h.ssize_t  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/stdio.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "getdelim";

  -- * The format of tmpnam names is TXXXXXX, which works with mktemp
  --  

  -- * tmpnam files are created in the current directory
  --  

  -- * We don't have any way of knowing any underlying POSIX limits,
  -- * so just use a reasonably small value here
  --  

  --@} 
   --  skipped func __printf_float

end stdio_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
