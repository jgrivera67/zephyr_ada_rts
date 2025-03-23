pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package sys_ulocale_h is

  -- Copyright (c) 2016 Corinna Vinschen <corinna@vinschen.de>  
  -- Definition of opaque POSIX-1.2008 type locale_t for userspace.  
   type uu_locale_t is null record;   -- incomplete struct

   type locale_t is access all uu_locale_t;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk-0.16.8/riscv64-zephyr-elf/picolibc/include/sys/_locale.h:11

end sys_ulocale_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
