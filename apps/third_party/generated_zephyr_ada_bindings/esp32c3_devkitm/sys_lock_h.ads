pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package sys_lock_h is

  -- Copyright (c) 2002 Jeff Johnston  <jjohnstn@redhat.com>  
  -- dummy lock routines for single-threaded aps  
   type uu_lock is null record;   -- incomplete struct

   type u_LOCK_T is access all uu_lock;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.17.1/riscv64-zephyr-elf/picolibc/include/sys/lock.h:27

   --  skipped func __retarget_lock_init

   --  skipped func __retarget_lock_init_recursive

   --  skipped func __retarget_lock_close

   --  skipped func __retarget_lock_close_recursive

   --  skipped func __retarget_lock_acquire

   --  skipped func __retarget_lock_acquire_recursive

   --  skipped func __retarget_lock_release

   --  skipped func __retarget_lock_release_recursive

end sys_lock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
