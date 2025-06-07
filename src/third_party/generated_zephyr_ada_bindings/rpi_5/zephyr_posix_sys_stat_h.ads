pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_types_h;
with sys_utimespec_h;
with Interfaces.C.Strings;

package zephyr_posix_sys_stat_h is

   --  unsupported macro: st_atime st_atim.tv_sec
   --  unsupported macro: st_ctime st_ctim.tv_sec
   --  unsupported macro: st_mtime st_mtim.tv_sec
   S_BLKSIZE : constant := 1024;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:128

   S_ISUID : constant := 8#004000#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:130
   S_ISGID : constant := 8#002000#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:131
   S_ISVTX : constant := 8#001000#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:132
   --  unsupported macro: S_IFMT _IFMT
   --  unsupported macro: S_IFDIR _IFDIR
   --  unsupported macro: S_IFCHR _IFCHR
   --  unsupported macro: S_IFBLK _IFBLK
   --  unsupported macro: S_IFREG _IFREG
   --  unsupported macro: S_IFLNK _IFLNK
   --  unsupported macro: S_IFSOCK _IFSOCK
   --  unsupported macro: S_IFIFO _IFIFO
   --  unsupported macro: S_IRWXU (S_IRUSR | S_IWUSR | S_IXUSR)

   S_IRUSR : constant := 8#000400#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:165
   S_IWUSR : constant := 8#000200#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:166
   S_IXUSR : constant := 8#000100#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:167
   --  unsupported macro: S_IRWXG (S_IRGRP | S_IWGRP | S_IXGRP)

   S_IRGRP : constant := 8#000040#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:169
   S_IWGRP : constant := 8#000020#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:170
   S_IXGRP : constant := 8#000010#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:171
   --  unsupported macro: S_IRWXO (S_IROTH | S_IWOTH | S_IXOTH)

   S_IROTH : constant := 8#000004#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:173
   S_IWOTH : constant := 8#000002#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:174
   S_IXOTH : constant := 8#000001#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:175
   --  arg-macro: function S_ISBLK (m)
   --    return ((m)and_IFMT) = _IFBLK;
   --  arg-macro: function S_ISCHR (m)
   --    return ((m)and_IFMT) = _IFCHR;
   --  arg-macro: function S_ISDIR (m)
   --    return ((m)and_IFMT) = _IFDIR;
   --  arg-macro: function S_ISFIFO (m)
   --    return ((m)and_IFMT) = _IFIFO;
   --  arg-macro: function S_ISREG (m)
   --    return ((m)and_IFMT) = _IFREG;
   --  arg-macro: function S_ISLNK (m)
   --    return ((m)and_IFMT) = _IFLNK;
   --  arg-macro: function S_ISSOCK (m)
   --    return ((m)and_IFMT) = _IFSOCK;

  -- SPDX-License-Identifier: BSD-3-Clause  
  -- * Copyright (c) 1982, 1986, 1993
  -- * The Regents of the University of California.  All rights reserved.
  -- *
  -- * Redistribution and use in source and binary forms, with or without
  -- * modification, are permitted provided that the following conditions
  -- * are met:
  -- * 1. Redistributions of source code must retain the above copyright
  -- * notice, this list of conditions and the following disclaimer.
  -- * 2. Redistributions in binary form must reproduce the above copyright
  -- * notice, this list of conditions and the following disclaimer in the
  -- * documentation and/or other materials provided with the distribution.
  -- * 3. Neither the name of the University nor the names of its contributors
  -- * may be used to endorse or promote products derived from this software
  -- * without specific prior written permission.
  -- *
  -- * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
  -- * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  -- * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  -- * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
  -- * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  -- * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  -- * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  -- * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  -- * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  -- * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  -- * SUCH DAMAGE.
  --  

  -- dj's stat defines _STAT_H_  
  -- * It is intended that the layout of this structure not change when the
  -- * sizes of any of the basic types change (short, int, long) [via a compile
  -- * time option].
  --  

   type anon_array3305 is array (0 .. 1) of aliased long;
   type stat is record
      st_dev : aliased sys_types_h.dev_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:58
      st_ino : aliased sys_types_h.ino_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:59
      st_mode : aliased sys_types_h.mode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:60
      st_nlink : aliased sys_types_h.nlink_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:61
      st_uid : aliased sys_types_h.uid_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:62
      st_gid : aliased sys_types_h.gid_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:63
      st_rdev : aliased sys_types_h.dev_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:67
      st_size : aliased sys_types_h.off_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:71
      st_atim : aliased sys_utimespec_h.timespec;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:98
      st_mtim : aliased sys_utimespec_h.timespec;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:99
      st_ctim : aliased sys_utimespec_h.timespec;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:100
      st_blksize : aliased sys_types_h.blksize_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:101
      st_blocks : aliased sys_types_h.blkcnt_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:102
      st_spare4 : aliased anon_array3305;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:57

  -- SysV/sco doesn't have the rest... But Solaris, eabi does.   
  -- * The Windows header files define _S_ forms of these, so we do too
  -- * for easier portability.
  --  

  -- Special tv_nsec values for futimens(2) and utimensat(2).  
   function chmod (uu_path : Interfaces.C.Strings.chars_ptr; uu_mode : sys_types_h.mode_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "chmod";

   function fchmod (uu_fd : int; uu_mode : sys_types_h.mode_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "fchmod";

   function fstat (uu_fd : int; uu_sbuf : access stat) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "fstat";

   function mkfifo (uu_path : Interfaces.C.Strings.chars_ptr; uu_mode : sys_types_h.mode_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "mkfifo";

   function umask (uu_mask : sys_types_h.mode_t) return sys_types_h.mode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/posix/sys/stat.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "umask";

  -- * Provide prototypes for most of the _<systemcall> names that are
  -- * provided in newlib for some compilers.
  --  

end zephyr_posix_sys_stat_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
