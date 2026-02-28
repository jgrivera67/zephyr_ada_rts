pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package sys_ulocale_h is

  -- Copyright (c) 2016 Corinna Vinschen <corinna@vinschen.de>  
  -- Definition of opaque POSIX-1.2008 type locale_t for userspace.  
   subtype locale_t is int;  -- /Users/jgrivera/my-projects/third-party/zephyr-sdk/arm-zephyr-eabi/picolibc/include/sys/_locale.h:7

end sys_ulocale_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
