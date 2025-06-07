pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;

package zephyr_arch_arm64_lib_helpers_h is

   --  arg-macro: function read_sysreg (reg)
   --    return { uint64_t reg_val; __asm__ volatile ("mrs %0, " STRINGIFY(reg) : & "=r" (reg_val) :: & "memory"); reg_val; };
   --  arg-macro: function write_sysreg (val, reg)
   --    return { uint64_t reg_val := val; __asm__ volatile ("msr " STRINGIFY(reg) & ", %0" :: & "r" (reg_val) : & "memory"); };
   --  arg-macro: function zero_sysreg (reg)
   --    return { __asm__ volatile ("msr " STRINGIFY(reg) & ", xzr" ::: & "memory"); };
   --  unsupported macro: MAKE_REG_HELPER(reg) static ALWAYS_INLINE uint64_t read_ ##reg(void) { return read_sysreg(reg); } static ALWAYS_INLINE void write_ ##reg(uint64_t val) { write_sysreg(val, reg); } static ALWAYS_INLINE void zero_ ##reg(void) { zero_sysreg(reg); }
   --  unsupported macro: MAKE_REG_HELPER_EL123(reg) MAKE_REG_HELPER(reg ##_el1) MAKE_REG_HELPER(reg ##_el2) MAKE_REG_HELPER(reg ##_el3)
   --  arg-macro: procedure sev ()
   --    __asm__ volatile("sev" : : : & "memory")
   --  arg-macro: procedure wfe ()
   --    __asm__ volatile("wfe" : : : & "memory")
   --  arg-macro: procedure wfi ()
   --    __asm__ volatile("wfi" : : : & "memory")
  -- * Copyright (c) 2021 Carlo Caione <ccaione@baylibre.com>
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- All the macros need a memory clobber  
   function read_ccsidr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "read_ccsidr_el1";

   procedure write_ccsidr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "write_ccsidr_el1";

   procedure zero_ccsidr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "zero_ccsidr_el1";

   function read_clidr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "read_clidr_el1";

   procedure write_clidr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "write_clidr_el1";

   procedure zero_clidr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "zero_clidr_el1";

   function read_cntfrq_el0 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "read_cntfrq_el0";

   procedure write_cntfrq_el0 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "write_cntfrq_el0";

   procedure zero_cntfrq_el0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cntfrq_el0";

   function read_cnthctl_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "read_cnthctl_el2";

   procedure write_cnthctl_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "write_cnthctl_el2";

   procedure zero_cnthctl_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cnthctl_el2";

   function read_cnthp_ctl_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "read_cnthp_ctl_el2";

   procedure write_cnthp_ctl_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "write_cnthp_ctl_el2";

   procedure zero_cnthp_ctl_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cnthp_ctl_el2";

   function read_cnthps_ctl_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "read_cnthps_ctl_el2";

   procedure write_cnthps_ctl_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "write_cnthps_ctl_el2";

   procedure zero_cnthps_ctl_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cnthps_ctl_el2";

   function read_cntv_ctl_el0 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "read_cntv_ctl_el0";

   procedure write_cntv_ctl_el0 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "write_cntv_ctl_el0";

   procedure zero_cntv_ctl_el0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cntv_ctl_el0";

   function read_cntv_cval_el0 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "read_cntv_cval_el0";

   procedure write_cntv_cval_el0 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "write_cntv_cval_el0";

   procedure zero_cntv_cval_el0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cntv_cval_el0";

   function read_cntvct_el0 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "read_cntvct_el0";

   procedure write_cntvct_el0 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "write_cntvct_el0";

   procedure zero_cntvct_el0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cntvct_el0";

   function read_cntvoff_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "read_cntvoff_el2";

   procedure write_cntvoff_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "write_cntvoff_el2";

   procedure zero_cntvoff_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cntvoff_el2";

   function read_currentel return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "read_currentel";

   procedure write_currentel (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "write_currentel";

   procedure zero_currentel  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "zero_currentel";

   function read_csselr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "read_csselr_el1";

   procedure write_csselr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "write_csselr_el1";

   procedure zero_csselr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "zero_csselr_el1";

   function read_daif return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "read_daif";

   procedure write_daif (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "write_daif";

   procedure zero_daif  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "zero_daif";

   function read_hcr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "read_hcr_el2";

   procedure write_hcr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "write_hcr_el2";

   procedure zero_hcr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "zero_hcr_el2";

   function read_id_aa64pfr0_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "read_id_aa64pfr0_el1";

   procedure write_id_aa64pfr0_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "write_id_aa64pfr0_el1";

   procedure zero_id_aa64pfr0_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "zero_id_aa64pfr0_el1";

   function read_id_aa64mmfr0_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "read_id_aa64mmfr0_el1";

   procedure write_id_aa64mmfr0_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "write_id_aa64mmfr0_el1";

   procedure zero_id_aa64mmfr0_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "zero_id_aa64mmfr0_el1";

   function read_mpidr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "read_mpidr_el1";

   procedure write_mpidr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "write_mpidr_el1";

   procedure zero_mpidr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "zero_mpidr_el1";

   function read_par_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "read_par_el1";

   procedure write_par_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "write_par_el1";

   procedure zero_par_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "zero_par_el1";

   function read_scr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "read_scr_el3";

   procedure write_scr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "write_scr_el3";

   procedure zero_scr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "zero_scr_el3";

   function read_tpidrro_el0 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "read_tpidrro_el0";

   procedure write_tpidrro_el0 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "write_tpidrro_el0";

   procedure zero_tpidrro_el0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "zero_tpidrro_el0";

   function read_vmpidr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "read_vmpidr_el2";

   procedure write_vmpidr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "write_vmpidr_el2";

   procedure zero_vmpidr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "zero_vmpidr_el2";

   function read_sp_el0 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "read_sp_el0";

   procedure write_sp_el0 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "write_sp_el0";

   procedure zero_sp_el0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "zero_sp_el0";

   function read_actlr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "read_actlr_el1";

   procedure write_actlr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "write_actlr_el1";

   procedure zero_actlr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "zero_actlr_el1";

   function read_actlr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "read_actlr_el2";

   procedure write_actlr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "write_actlr_el2";

   procedure zero_actlr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "zero_actlr_el2";

   function read_actlr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "read_actlr_el3";

   procedure write_actlr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "write_actlr_el3";

   procedure zero_actlr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "zero_actlr_el3";

   function read_cpacr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "read_cpacr_el1";

   procedure write_cpacr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "write_cpacr_el1";

   procedure zero_cpacr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cpacr_el1";

   function read_cpacr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "read_cpacr_el2";

   procedure write_cpacr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "write_cpacr_el2";

   procedure zero_cpacr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cpacr_el2";

   function read_cpacr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "read_cpacr_el3";

   procedure write_cpacr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "write_cpacr_el3";

   procedure zero_cpacr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cpacr_el3";

   function read_cptr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "read_cptr_el1";

   procedure write_cptr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "write_cptr_el1";

   procedure zero_cptr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cptr_el1";

   function read_cptr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "read_cptr_el2";

   procedure write_cptr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "write_cptr_el2";

   procedure zero_cptr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cptr_el2";

   function read_cptr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "read_cptr_el3";

   procedure write_cptr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "write_cptr_el3";

   procedure zero_cptr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "zero_cptr_el3";

   function read_elr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "read_elr_el1";

   procedure write_elr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "write_elr_el1";

   procedure zero_elr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "zero_elr_el1";

   function read_elr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "read_elr_el2";

   procedure write_elr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "write_elr_el2";

   procedure zero_elr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "zero_elr_el2";

   function read_elr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "read_elr_el3";

   procedure write_elr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "write_elr_el3";

   procedure zero_elr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "zero_elr_el3";

   function read_esr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "read_esr_el1";

   procedure write_esr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "write_esr_el1";

   procedure zero_esr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "zero_esr_el1";

   function read_esr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "read_esr_el2";

   procedure write_esr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "write_esr_el2";

   procedure zero_esr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "zero_esr_el2";

   function read_esr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "read_esr_el3";

   procedure write_esr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "write_esr_el3";

   procedure zero_esr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "zero_esr_el3";

   function read_far_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "read_far_el1";

   procedure write_far_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "write_far_el1";

   procedure zero_far_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "zero_far_el1";

   function read_far_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "read_far_el2";

   procedure write_far_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "write_far_el2";

   procedure zero_far_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "zero_far_el2";

   function read_far_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "read_far_el3";

   procedure write_far_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "write_far_el3";

   procedure zero_far_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "zero_far_el3";

   function read_mair_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "read_mair_el1";

   procedure write_mair_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "write_mair_el1";

   procedure zero_mair_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "zero_mair_el1";

   function read_mair_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "read_mair_el2";

   procedure write_mair_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "write_mair_el2";

   procedure zero_mair_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "zero_mair_el2";

   function read_mair_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "read_mair_el3";

   procedure write_mair_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "write_mair_el3";

   procedure zero_mair_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "zero_mair_el3";

   function read_sctlr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "read_sctlr_el1";

   procedure write_sctlr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "write_sctlr_el1";

   procedure zero_sctlr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "zero_sctlr_el1";

   function read_sctlr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "read_sctlr_el2";

   procedure write_sctlr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "write_sctlr_el2";

   procedure zero_sctlr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "zero_sctlr_el2";

   function read_sctlr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "read_sctlr_el3";

   procedure write_sctlr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "write_sctlr_el3";

   procedure zero_sctlr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "zero_sctlr_el3";

   function read_spsr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "read_spsr_el1";

   procedure write_spsr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "write_spsr_el1";

   procedure zero_spsr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "zero_spsr_el1";

   function read_spsr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "read_spsr_el2";

   procedure write_spsr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "write_spsr_el2";

   procedure zero_spsr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "zero_spsr_el2";

   function read_spsr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "read_spsr_el3";

   procedure write_spsr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "write_spsr_el3";

   procedure zero_spsr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "zero_spsr_el3";

   function read_tcr_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "read_tcr_el1";

   procedure write_tcr_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "write_tcr_el1";

   procedure zero_tcr_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "zero_tcr_el1";

   function read_tcr_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "read_tcr_el2";

   procedure write_tcr_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "write_tcr_el2";

   procedure zero_tcr_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "zero_tcr_el2";

   function read_tcr_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "read_tcr_el3";

   procedure write_tcr_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "write_tcr_el3";

   procedure zero_tcr_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "zero_tcr_el3";

   function read_ttbr0_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "read_ttbr0_el1";

   procedure write_ttbr0_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "write_ttbr0_el1";

   procedure zero_ttbr0_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "zero_ttbr0_el1";

   function read_ttbr0_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "read_ttbr0_el2";

   procedure write_ttbr0_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "write_ttbr0_el2";

   procedure zero_ttbr0_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "zero_ttbr0_el2";

   function read_ttbr0_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "read_ttbr0_el3";

   procedure write_ttbr0_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "write_ttbr0_el3";

   procedure zero_ttbr0_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "zero_ttbr0_el3";

   function read_vbar_el1 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "read_vbar_el1";

   procedure write_vbar_el1 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "write_vbar_el1";

   procedure zero_vbar_el1  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "zero_vbar_el1";

   function read_vbar_el2 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "read_vbar_el2";

   procedure write_vbar_el2 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "write_vbar_el2";

   procedure zero_vbar_el2  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "zero_vbar_el2";

   function read_vbar_el3 return sys_ustdint_h.uint64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "read_vbar_el3";

   procedure write_vbar_el3 (val : sys_ustdint_h.uint64_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "write_vbar_el3";

   procedure zero_vbar_el3  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "zero_vbar_el3";

  -- Armv8-R aarch64 mpu registers  
   procedure enable_debug_exceptions  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "enable_debug_exceptions";

   procedure disable_debug_exceptions  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "disable_debug_exceptions";

   procedure enable_serror_exceptions  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "enable_serror_exceptions";

   procedure disable_serror_exceptions  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "disable_serror_exceptions";

   procedure enable_irq  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "enable_irq";

   procedure disable_irq  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "disable_irq";

   procedure enable_fiq  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "enable_fiq";

   procedure disable_fiq  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "disable_fiq";

   function is_el_implemented (el : unsigned) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "is_el_implemented";

   function is_el_highest_implemented return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "is_el_highest_implemented";

   function is_el2_sec_supported return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "is_el2_sec_supported";

   function is_in_secure_state return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/arch/arm64/lib_helpers.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "is_in_secure_state";

  -- We cannot read SCR_EL3 from EL2 or EL1  
end zephyr_arch_arm64_lib_helpers_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
