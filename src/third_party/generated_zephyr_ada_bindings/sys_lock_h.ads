pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package sys_lock_h is

  -- dummy lock routines for single-threaded aps  
   type uu_lock is null record;   -- incomplete struct

   type u_LOCK_T is access all uu_lock;  -- /Users/jgrivera/.local/share/alire/toolchains/gnat_riscv64_elf_14.1.3_cff3a81e/riscv64-elf/include/sys/lock.h:34

   --  skipped func __retarget_lock_init

   --  skipped func __retarget_lock_init_recursive

   --  skipped func __retarget_lock_close

   --  skipped func __retarget_lock_close_recursive

   --  skipped func __retarget_lock_acquire

   --  skipped func __retarget_lock_acquire_recursive

   --  skipped func __retarget_lock_try_acquire

   --  skipped func __retarget_lock_try_acquire_recursive

   --  skipped func __retarget_lock_release

   --  skipped func __retarget_lock_release_recursive

end sys_lock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
