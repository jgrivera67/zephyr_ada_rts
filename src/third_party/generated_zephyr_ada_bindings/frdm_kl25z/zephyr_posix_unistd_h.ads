pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
with stdio_h;
with Interfaces.C.Strings;
limited with zephyr_posix_sys_stat_h;
with sys_types_h;
with zephyr_posix_posix_types_h;

package zephyr_posix_unistd_h is

   --  arg-macro: function sysconf (x)
   --    return long)CONCAT(__z_posix_sysconf, x;
  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- File related operations  
   function close (file : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "close";

   function write
     (file : int;
      buffer : System.Address;
      count : stddef_h.size_t) return stdio_h.ssize_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "write";

   function read
     (file : int;
      buffer : System.Address;
      count : stddef_h.size_t) return stdio_h.ssize_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "read";

   function lseek
     (file : int;
      offset : stdio_h.off_t;
      whence : int) return stdio_h.off_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "lseek";

   function fsync (fd : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "fsync";

   function ftruncate (fd : int; length : stdio_h.off_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "ftruncate";

   function fdatasync (fd : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "fdatasync";

  -- File System related operations  
   function unlink (path : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "unlink";

   function stat2 (uu_path : Interfaces.C.Strings.chars_ptr; uu_sbuf : access zephyr_posix_sys_stat_h.stat) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "stat";

   function mkdir (u_path : Interfaces.C.Strings.chars_ptr; uu_mode : sys_types_h.mode_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "mkdir";

   function rmdir (path : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "rmdir";

   --  skipped func _exit

   function gethostname (buf : Interfaces.C.Strings.chars_ptr; len : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gethostname";

   function getopt
     (argc : int;
      argv : System.Address;
      optstring : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "getopt";

   optarg : Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "optarg";

   opterr : aliased int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "opterr";

   optind : aliased int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "optind";

   optopt : aliased int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "optopt";

   function getentropy (buffer : System.Address; length : stddef_h.size_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "getentropy";

   function getpid return zephyr_posix_posix_types_h.pid_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "getpid";

   function sleep (seconds : unsigned) return unsigned  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "sleep";

   function usleep (useconds : sys_types_h.useconds_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "usleep";

   function confstr
     (name : int;
      buf : Interfaces.C.Strings.chars_ptr;
      len : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/unistd.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "confstr";

end zephyr_posix_unistd_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
