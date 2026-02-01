pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with System;
limited with zephyr_fs_fs_h;

package zephyr_fs_fs_interface_h is

   MAX_FILE_NAME : constant := 12;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:59

  -- * Copyright (c) 2016 Intel Corporation.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- No in-tree file system supports name longer than 255 characters  
  -- Enabled FAT driver, without LFN, restricts name length to 12 characters  
  -- Select from enabled file systems  
  -- Use standard 8.3 when no filesystem is explicitly selected  
  -- Type for fs_open flags  
   subtype fs_mode_t is sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:66

  --*
  -- * @addtogroup file_system_api
  -- * @{
  --  

  --*
  -- * @brief File object representing an open file
  -- *
  -- * The object needs to be initialized with fs_file_t_init().
  --  

  --* Pointer to file object structure  
   type fs_file_t is record
      filep : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:82
      mp : access constant zephyr_fs_fs_h.fs_mount_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:84
      flags : aliased fs_mode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:86
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:80

  --* Pointer to mount point structure  
  --* Open/create flags  
  --*
  -- * @brief Directory object representing an open directory
  -- *
  -- * The object needs to be initialized with fs_dir_t_init().
  --  

  --* Pointer to directory object structure  
   type fs_dir_t is record
      dirp : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:96
      mp : access constant zephyr_fs_fs_h.fs_mount_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:98
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs_interface.h:94

  --* Pointer to mount point structure  
  --*
  -- * @}
  --  

end zephyr_fs_fs_interface_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
