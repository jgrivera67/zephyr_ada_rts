pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_dlist_h;
with Interfaces.C.Strings;
with System;
with stddef_h;
with sys_ustdint_h;
with zephyr_fs_fs_interface_h;
with sys_types_h;

package zephyr_fs_fs_h is

   --  unsupported macro: FS_MOUNT_FLAG_NO_FORMAT BIT(0)
   --  unsupported macro: FS_MOUNT_FLAG_READ_ONLY BIT(1)
   --  unsupported macro: FS_MOUNT_FLAG_AUTOMOUNT BIT(2)
   --  unsupported macro: FS_MOUNT_FLAG_USE_DISK_ACCESS BIT(3)
   FS_O_READ : constant := 16#01#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:151

   FS_O_WRITE : constant := 16#02#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:153
   --  unsupported macro: FS_O_RDWR (FS_O_READ | FS_O_WRITE)

   FS_O_MODE_MASK : constant := 16#03#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:157

   FS_O_CREATE : constant := 16#10#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:160

   FS_O_APPEND : constant := 16#20#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:162

   FS_O_TRUNC : constant := 16#40#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:164

   FS_O_FLAGS_MASK : constant := 16#70#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:166
   --  unsupported macro: FS_O_MASK (FS_O_MODE_MASK | FS_O_FLAGS_MASK)

   FS_SEEK_SET : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:181

   FS_SEEK_CUR : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:185

   FS_SEEK_END : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:189
   --  arg-macro: function FSTAB_ENTRY_DT_MOUNT_FLAGS (node_id)
   --    return (DT_PROP(node_id, automount) ? FS_MOUNT_FLAG_AUTOMOUNT : 0) or (DT_PROP(node_id, read_only) ? FS_MOUNT_FLAG_READ_ONLY : 0) or (DT_PROP(node_id, no_format) ? FS_MOUNT_FLAG_NO_FORMAT : 0) or (DT_PROP(node_id, disk_access) ? FS_MOUNT_FLAG_USE_DISK_ACCESS : 0);
   --  arg-macro: procedure FS_FSTAB_ENTRY (node_id)
   --    _CONCAT(z_fsmp_, node_id)
   --  arg-macro: procedure FS_FSTAB_DECLARE_ENTRY (node_id)
   --    extern struct fs_mount_t FS_FSTAB_ENTRY(node_id)

  -- * Copyright (c) 2016 Intel Corporation.
  -- * Copyright (c) 2020-2024 Nordic Semiconductor ASA
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @brief File System APIs
  -- * @defgroup file_system_api File System APIs
  -- * @since 1.5
  -- * @version 1.0.0
  -- * @ingroup os_services
  -- * @{
  --  

   type fs_file_system_t is null record;   -- incomplete struct

  --*
  -- * @brief Enumeration for directory entry types
  --  

   type fs_dir_entry_type is 
     (FS_DIR_ENTRY_FILE,
      FS_DIR_ENTRY_DIR)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:33

  --* Identifier for file entry  
  --* Identifier for directory entry  
  --* @brief Enumeration to uniquely identify file system types.
  -- *
  -- * Zephyr supports in-tree file systems and external ones.  Each
  -- * requires a unique identifier used to register the file system
  -- * implementation and to associate a mount point with the file system
  -- * type.  This anonymous enum defines global identifiers for the
  -- * in-tree file systems.
  -- *
  -- * External file systems should be registered using unique identifiers
  -- * starting at @c FS_TYPE_EXTERNAL_BASE.  It is the responsibility of
  -- * applications that use external file systems to ensure that these
  -- * identifiers are unique if multiple file system implementations are
  -- * used by the application.
  --  

  --* Identifier for in-tree FatFS file system.  
  --* Identifier for in-tree LittleFS file system.  
  --* Identifier for in-tree Ext2 file system.  
  --* Base identifier for external file systems.  
  --* Flag prevents formatting device if requested file system not found  
  --* Flag makes mounted file system read-only  
  --* Flag used in pre-defined mount structures that are to be mounted
  -- * on startup.
  -- *
  -- * This flag has no impact in user-defined mount structures.
  --  

  --* Flag requests file system driver to use Disk Access API. When the flag is
  -- * set to the fs_mount_t.flags prior to fs_mount call, a file system
  -- * needs to use the Disk Access API, otherwise mount callback for the driver
  -- * should return -ENOTSUP; when the flag is not set the file system driver
  -- * should use Flash API by default, unless it only supports Disc Access API.
  -- * When file system will use Disk Access API and the flag is not set, the mount
  -- * callback for the file system should set the flag on success.
  --  

  --*
  -- * @brief File system mount info structure
  --  

  --* Entry for the fs_mount_list list  
   type fs_mount_t is record
      node : aliased zephyr_sys_dlist_h.sys_dnode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:93
      c_type : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:95
      mnt_point : Interfaces.C.Strings.chars_ptr;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:97
      fs_data : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:99
      storage_dev : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:101
      mountp_len : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:104
      fs : access constant fs_file_system_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:106
      flags : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:108
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:91

  --* File system type  
  --* Mount point directory name (ex: "/fatfs")  
  --* Pointer to file system specific data  
  --* Pointer to backend storage device  
  -- The following fields are filled by file system core  
  --* Length of Mount point string  
  --* Pointer to File system interface of the mount point  
  --* Mount flags  
  --*
  -- * @brief Structure to receive file or directory information
  -- *
  -- * Used in functions that read the directory entries to get
  -- * file or directory information.
  --  

  --*
  --	 * File/directory type (FS_DIR_ENTRY_FILE or FS_DIR_ENTRY_DIR)
  --	  

   subtype anon_array2300 is Interfaces.C.char_array (0 .. 12);
   type fs_dirent is record
      c_type : aliased fs_dir_entry_type;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:121
      name : aliased anon_array2300;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:123
      size : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:125
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:117

  --* Name of file or directory  
  --* Size of file (0 if directory).  
  --*
  -- * @brief Structure to receive volume statistics
  -- *
  -- * Used to retrieve information about total and available space
  -- * in the volume.
  --  

  --* Optimal transfer block size  
   type fs_statvfs is record
      f_bsize : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:136
      f_frsize : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:138
      f_blocks : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:140
      f_bfree : aliased unsigned_long;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:142
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:134

  --* Allocation unit size  
  --* Size of FS in f_frsize units  
  --* Number of free blocks  
  --*
  -- * @name fs_open open and creation mode flags
  -- * @{
  --  

  --* Open for read flag  
  --* Open for write flag  
  --* Open for read-write flag combination  
  --* Bitmask for read and write flags  
  --* Create file if it does not exist  
  --* Open/create file for append  
  --* Truncate the file while opening  
  --* Bitmask for open/create flags  
  --* Bitmask for open flags  
  --*
  -- * @}
  --  

  --*
  -- * @name fs_seek whence parameter values
  -- * @{
  --  

  --* Seek from the beginning of file  
  --* Seek from a current position  
  --* Seek from the end of file  
  --*
  -- * @}
  --  

  --*
  -- * @brief Get the common mount flags for an fstab entry.
  -- * @param node_id the node identifier for a child entry in a
  -- * zephyr,fstab node.
  -- * @return a value suitable for initializing an fs_mount_t flags
  -- * member.
  --  

  --*
  -- * @brief The name under which a zephyr,fstab entry mount structure is
  -- * defined.
  -- *
  -- * @param node_id the node identifier for a child entry in a zephyr,fstab node.
  --  

  --*
  -- * @brief Generate a declaration for the externally defined fstab
  -- * entry.
  -- *
  -- * This will evaluate to the name of a struct fs_mount_t object.
  -- *
  -- * @param node_id the node identifier for a child entry in a zephyr,fstab node.
  --  

  --*
  -- * @brief Initialize fs_file_t object
  -- *
  -- * Initializes the fs_file_t object; the function needs to be invoked
  -- * on object before first use with fs_open.
  -- *
  -- * @param zfp Pointer to file object
  -- *
  --  

   procedure fs_file_t_init (zfp : access zephyr_fs_fs_interface_h.fs_file_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "fs_file_t_init";

  --*
  -- * @brief Initialize fs_dir_t object
  -- *
  -- * Initializes the fs_dir_t object; the function needs to be invoked
  -- * on object before first use with fs_opendir.
  -- *
  -- * @param zdp Pointer to file object
  -- *
  --  

   procedure fs_dir_t_init (zdp : access zephyr_fs_fs_interface_h.fs_dir_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "fs_dir_t_init";

  --*
  -- * @brief Open or create file
  -- *
  -- * Opens or possibly creates a file and associates a stream with it.
  -- * Successfully opened file, when no longer in use, should be closed
  -- * with fs_close().
  -- *
  -- * @details
  -- * @p flags can be 0 or a binary combination of one or more of the following
  -- * identifiers:
  -- *   - @c FS_O_READ open for read
  -- *   - @c FS_O_WRITE open for write
  -- *   - @c FS_O_RDWR open for read/write (<tt>FS_O_READ | FS_O_WRITE</tt>)
  -- *   - @c FS_O_CREATE create file if it does not exist
  -- *   - @c FS_O_APPEND move to end of file before each write
  -- *   - @c FS_O_TRUNC truncate the file
  -- *
  -- * @warning If @p flags are set to 0 the function will open file, if it exists
  -- *          and is accessible, but you will have no read/write access to it.
  -- *
  -- * @param zfp Pointer to a file object
  -- * @param file_name The name of a file to open
  -- * @param flags The mode flags
  -- *
  -- * @retval 0 on success;
  -- * @retval -EBUSY when zfp is already used;
  -- * @retval -EINVAL when a bad file name is given;
  -- * @retval -EROFS when opening read-only file for write, or attempting to
  -- *	   create a file on a system that has been mounted with the
  -- *	   FS_MOUNT_FLAG_READ_ONLY flag;
  -- * @retval -ENOENT when the file does not exist at the path;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval -EACCES when trying to truncate a file without opening it for write.
  -- * @retval <0 an other negative errno code, depending on a file system back-end.
  --  

   function fs_open
     (zfp : access zephyr_fs_fs_interface_h.fs_file_t;
      file_name : Interfaces.C.Strings.chars_ptr;
      flags : zephyr_fs_fs_interface_h.fs_mode_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "fs_open";

  --*
  -- * @brief Close file
  -- *
  -- * Flushes the associated stream and closes the file.
  -- *
  -- * @param zfp Pointer to the file object
  -- *
  -- * @retval 0 on success;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 a negative errno code on error.
  --  

   function fs_close (zfp : access zephyr_fs_fs_interface_h.fs_file_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "fs_close";

  --*
  -- * @brief Unlink file
  -- *
  -- * Deletes the specified file or directory
  -- *
  -- * @param path Path to the file or directory to delete
  -- *
  -- * @retval 0 on success;
  -- * @retval -EINVAL when a bad file name is given;
  -- * @retval -EROFS if file is read-only, or when file system has been mounted
  -- *	   with the FS_MOUNT_FLAG_READ_ONLY flag;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_unlink (path : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "fs_unlink";

  --*
  -- * @brief Rename file or directory
  -- *
  -- * Performs a rename and / or move of the specified source path to the
  -- * specified destination.  The source path can refer to either a file or a
  -- * directory.  All intermediate directories in the destination path must
  -- * already exist.  If the source path refers to a file, the destination path
  -- * must contain a full filename path, rather than just the new parent
  -- * directory.  If an object already exists at the specified destination path,
  -- * this function causes it to be unlinked prior to the rename (i.e., the
  -- * destination gets clobbered).
  -- * @note Current implementation does not allow moving files between mount
  -- * points.
  -- *
  -- * @param from The source path
  -- * @param to The destination path
  -- *
  -- * @retval 0 on success;
  -- * @retval -EINVAL when a bad file name is given, or when rename would cause move
  -- *	   between mount points;
  -- * @retval -EROFS if file is read-only, or when file system has been mounted
  -- *	   with the FS_MOUNT_FLAG_READ_ONLY flag;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_rename (from : Interfaces.C.Strings.chars_ptr; to : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "fs_rename";

  --*
  -- * @brief Read file
  -- *
  -- * Reads up to @p size bytes of data to @p ptr pointed buffer, returns number
  -- * of bytes read.  A returned value may be lower than @p size if there were
  -- * fewer bytes available than requested.
  -- *
  -- * @param zfp Pointer to the file object
  -- * @param ptr Pointer to the data buffer
  -- * @param size Number of bytes to be read
  -- *
  -- * @retval >=0 a number of bytes read, on success;
  -- * @retval -EBADF when invoked on zfp that represents unopened/closed file;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 a negative errno code on error.
  --  

   function fs_read
     (zfp : access zephyr_fs_fs_interface_h.fs_file_t;
      ptr : System.Address;
      size : stddef_h.size_t) return sys_types_h.ssize_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "fs_read";

  --*
  -- * @brief Write file
  -- *
  -- * Attempts to write @p size number of bytes to the specified file.
  -- * If a negative value is returned from the function, the file pointer has not
  -- * been advanced.
  -- * If the function returns a non-negative number that is lower than @p size,
  -- * the global @c errno variable should be checked for an error code,
  -- * as the device may have no free space for data.
  -- *
  -- * @param zfp Pointer to the file object
  -- * @param ptr Pointer to the data buffer
  -- * @param size Number of bytes to be written
  -- *
  -- * @retval >=0 a number of bytes written, on success;
  -- * @retval -EBADF when invoked on zfp that represents unopened/closed file;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_write
     (zfp : access zephyr_fs_fs_interface_h.fs_file_t;
      ptr : System.Address;
      size : stddef_h.size_t) return sys_types_h.ssize_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "fs_write";

  --*
  -- * @brief Seek file
  -- *
  -- * Moves the file position to a new location in the file. The @p offset is added
  -- * to file position based on the @p whence parameter.
  -- *
  -- * @param zfp Pointer to the file object
  -- * @param offset Relative location to move the file pointer to
  -- * @param whence Relative location from where offset is to be calculated.
  -- * - @c FS_SEEK_SET for the beginning of the file;
  -- * - @c FS_SEEK_CUR for the current position;
  -- * - @c FS_SEEK_END for the end of the file.
  -- *
  -- * @retval 0 on success;
  -- * @retval -EBADF when invoked on zfp that represents unopened/closed file;
  -- * @retval -ENOTSUP if not supported by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_seek
     (zfp : access zephyr_fs_fs_interface_h.fs_file_t;
      offset : sys_types_h.off_t;
      whence : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "fs_seek";

  --*
  -- * @brief Get current file position.
  -- *
  -- * Retrieves and returns the current position in the file stream.
  -- *
  -- * @param zfp Pointer to the file object
  -- *
  -- * @retval >= 0 a current position in file;
  -- * @retval -EBADF when invoked on zfp that represents unopened/closed file;
  -- * @retval -ENOTSUP if not supported by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  -- *
  -- * The current revision does not validate the file object.
  --  

   function fs_tell (zfp : access zephyr_fs_fs_interface_h.fs_file_t) return sys_types_h.off_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:425
   with Import => True, 
        Convention => C, 
        External_Name => "fs_tell";

  --*
  -- * @brief Truncate or extend an open file to a given size
  -- *
  -- * Truncates the file to the new length if it is shorter than the current
  -- * size of the file. Expands the file if the new length is greater than the
  -- * current size of the file. The expanded region would be filled with zeroes.
  -- *
  -- * @note In the case of expansion, if the volume got full during the
  -- * expansion process, the function will expand to the maximum possible length
  -- * and return success.  Caller should check if the expanded size matches the
  -- * requested length.
  -- *
  -- * @param zfp Pointer to the file object
  -- * @param length New size of the file in bytes
  -- *
  -- * @retval 0 on success;
  -- * @retval -EBADF when invoked on zfp that represents unopened/closed file;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_truncate (zfp : access zephyr_fs_fs_interface_h.fs_file_t; length : sys_types_h.off_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "fs_truncate";

  --*
  -- * @brief Flush cached write data buffers of an open file
  -- *
  -- * The function flushes the cache of an open file; it can be invoked to ensure
  -- * data gets written to the storage media immediately, e.g. to avoid data loss
  -- * in case if power is removed unexpectedly.
  -- * @note Closing a file will cause caches to be flushed correctly so the
  -- * function need not be called when the file is being closed.
  -- *
  -- * @param zfp Pointer to the file object
  -- *
  -- * @retval 0 on success;
  -- * @retval -EBADF when invoked on zfp that represents unopened/closed file;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 a negative errno code on error.
  --  

   function fs_sync (zfp : access zephyr_fs_fs_interface_h.fs_file_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:465
   with Import => True, 
        Convention => C, 
        External_Name => "fs_sync";

  --*
  -- * @brief Directory create
  -- *
  -- * Creates a new directory using specified path.
  -- *
  -- * @param path Path to the directory to create
  -- *
  -- * @retval 0 on success;
  -- * @retval -EEXIST if entry of given name exists;
  -- * @retval -EROFS if @p path is within read-only directory, or when
  -- *         file system has been mounted with the FS_MOUNT_FLAG_READ_ONLY flag;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 an other negative errno code on error
  --  

   function fs_mkdir (path : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:481
   with Import => True, 
        Convention => C, 
        External_Name => "fs_mkdir";

  --*
  -- * @brief Directory open
  -- *
  -- * Opens an existing directory specified by the path.
  -- *
  -- * @param zdp Pointer to the directory object
  -- * @param path Path to the directory to open
  -- *
  -- * @retval 0 on success;
  -- * @retval -EINVAL when a bad directory path is given;
  -- * @retval -EBUSY when zdp is already used;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 a negative errno code on error.
  --  

   function fs_opendir (zdp : access zephyr_fs_fs_interface_h.fs_dir_t; path : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "fs_opendir";

  --*
  -- * @brief Directory read entry
  -- *
  -- * Reads directory entries of an open directory. In end-of-dir condition,
  -- * the function will return 0 and set the <tt>entry->name[0]</tt> to 0.
  -- *
  -- * @note: Most existing underlying file systems do not generate POSIX
  -- * special directory entries "." or "..".  For consistency the
  -- * abstraction layer will remove these from lower layer results so
  -- * higher layers see consistent results.
  -- *
  -- * @param zdp Pointer to the directory object
  -- * @param entry Pointer to zfs_dirent structure to read the entry into
  -- *
  -- * @retval 0 on success or end-of-dir;
  -- * @retval -ENOENT when no such directory found;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 a negative errno code on error.
  --  

   function fs_readdir (zdp : access zephyr_fs_fs_interface_h.fs_dir_t; c_entry : access fs_dirent) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "fs_readdir";

  --*
  -- * @brief Directory close
  -- *
  -- * Closes an open directory.
  -- *
  -- * @param zdp Pointer to the directory object
  -- *
  -- * @retval 0 on success;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 a negative errno code on error.
  --  

   function fs_closedir (zdp : access zephyr_fs_fs_interface_h.fs_dir_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:531
   with Import => True, 
        Convention => C, 
        External_Name => "fs_closedir";

  --*
  -- * @brief Mount filesystem
  -- *
  -- * Perform steps needed for mounting a file system like
  -- * calling the file system specific mount function and adding
  -- * the mount point to mounted file system list.
  -- *
  -- * @note Current implementation of ELM FAT driver allows only following mount
  -- * points: "/RAM:","/NAND:","/CF:","/SD:","/SD2:","/USB:","/USB2:","/USB3:"
  -- * or mount points that consist of single digit, e.g: "/0:", "/1:" and so forth.
  -- *
  -- * @param mp Pointer to the fs_mount_t structure.  Referenced object
  -- *	     is not changed if the mount operation failed.
  -- *	     A reference is captured in the fs infrastructure if the
  -- *	     mount operation succeeds, and the application must not
  -- *	     mutate the structure contents until fs_unmount is
  -- *	     successfully invoked on the same pointer.
  -- *
  -- * @retval 0 on success;
  -- * @retval -ENOENT when file system type has not been registered;
  -- * @retval -ENOTSUP when not supported by underlying file system driver;
  -- *         when @c FS_MOUNT_FLAG_USE_DISK_ACCESS is set but driver does not
  -- *         support it.
  -- * @retval -EROFS if system requires formatting but @c FS_MOUNT_FLAG_READ_ONLY
  -- *	   has been set;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_mount (mp : access fs_mount_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:560
   with Import => True, 
        Convention => C, 
        External_Name => "fs_mount";

  --*
  -- * @brief Unmount filesystem
  -- *
  -- * Perform steps needed to unmount a file system like
  -- * calling the file system specific unmount function and removing
  -- * the mount point from mounted file system list.
  -- *
  -- * @param mp Pointer to the fs_mount_t structure
  -- *
  -- * @retval 0 on success;
  -- * @retval -EINVAL if no system has been mounted at given mount point;
  -- * @retval -ENOTSUP when not supported by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_unmount (mp : access fs_mount_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "fs_unmount";

  --*
  -- * @brief Get path of mount point at index
  -- *
  -- * This function iterates through the list of mount points and returns
  -- * the directory name of the mount point at the given @p index.
  -- * On success @p index is incremented and @p name is set to the mount directory
  -- * name.  If a mount point with the given @p index does not exist, @p name will
  -- * be set to @c NULL.
  -- *
  -- * @param index Pointer to mount point index
  -- * @param name Pointer to pointer to path name
  -- *
  -- * @retval 0 on success;
  -- * @retval -ENOENT if there is no mount point with given index.
  --  

   function fs_readmount (index : access int; name : System.Address) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:593
   with Import => True, 
        Convention => C, 
        External_Name => "fs_readmount";

  --*
  -- * @brief File or directory status
  -- *
  -- * Checks the status of a file or directory specified by the @p path.
  -- * @note The file on a storage device may not be updated until it is closed.
  -- *
  -- * @param path Path to the file or directory
  -- * @param entry Pointer to the zfs_dirent structure to fill if the file or
  -- * directory exists.
  -- *
  -- * @retval 0 on success;
  -- * @retval -EINVAL when a bad directory or file name is given;
  -- * @retval -ENOENT when no such directory or file is found;
  -- * @retval -ENOTSUP when not supported by underlying file system driver;
  -- * @retval <0 negative errno code on error.
  --  

   function fs_stat (path : Interfaces.C.Strings.chars_ptr; c_entry : access fs_dirent) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:611
   with Import => True, 
        Convention => C, 
        External_Name => "fs_stat";

  --*
  -- * @brief Retrieves statistics of the file system volume
  -- *
  -- * Returns the total and available space in the file system volume.
  -- *
  -- * @param path Path to the mounted directory
  -- * @param stat Pointer to the zfs_statvfs structure to receive the fs
  -- * statistics.
  -- *
  -- * @retval 0 on success;
  -- * @retval -EINVAL when a bad path to a directory, or a file, is given;
  -- * @retval -ENOTSUP when not implemented by underlying file system driver;
  -- * @retval <0 an other negative errno code on error.
  --  

   function fs_statvfs (path : Interfaces.C.Strings.chars_ptr; stat : access fs_statvfs) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:627
   with Import => True, 
        Convention => C, 
        External_Name => "fs_statvfs";

  --*
  -- * @brief Create fresh file system
  -- *
  -- * @param fs_type Type of file system to create.
  -- * @param dev_id Id of storage device.
  -- * @param cfg Backend dependent init object. If NULL then default configuration is used.
  -- * @param flags Additional flags for file system implementation.
  -- *
  -- * @retval 0 on success;
  -- * @retval <0 negative errno code on error.
  --  

   function fs_mkfs
     (fs_type : int;
      dev_id : sys_ustdint_h.uintptr_t;
      cfg : System.Address;
      flags : int) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:640
   with Import => True, 
        Convention => C, 
        External_Name => "fs_mkfs";

  --*
  -- * @brief Register a file system
  -- *
  -- * Register file system with virtual file system.
  -- * Number of allowed file system types to be registered is controlled with the
  -- * CONFIG_FILE_SYSTEM_MAX_TYPES Kconfig option.
  -- *
  -- * @param type Type of file system (ex: @c FS_FATFS)
  -- * @param fs Pointer to File system
  -- *
  -- * @retval 0 on success;
  -- * @retval -EALREADY when a file system of a given type has already been registered;
  -- * @retval -ENOSCP when there is no space left, in file system registry, to add
  -- *	   this file system type.
  --  

   function fs_register (c_type : int; fs : access constant fs_file_system_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:657
   with Import => True, 
        Convention => C, 
        External_Name => "fs_register";

  --*
  -- * @brief Unregister a file system
  -- *
  -- * Unregister file system from virtual file system.
  -- *
  -- * @param type Type of file system (ex: @c FS_FATFS)
  -- * @param fs Pointer to File system
  -- *
  -- * @retval 0 on success;
  -- * @retval -EINVAL when file system of a given type has not been registered.
  --  

   function fs_unregister (c_type : int; fs : access constant fs_file_system_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/fs/fs.h:670
   with Import => True, 
        Convention => C, 
        External_Name => "fs_unregister";

  --*
  -- * @}
  --  

end zephyr_fs_fs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
