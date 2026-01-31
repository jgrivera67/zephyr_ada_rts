pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package system_MKL25Z4_h is

   DISABLE_WDOG : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:117

   CPU_XTAL_CLK_HZ : constant := 8000000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:124
   CPU_INT_SLOW_CLK_HZ : constant := 32768;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:125
   CPU_INT_FAST_CLK_HZ : constant := 4000000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:126

   SYSTEM_SMC_PMPROT_VALUE : constant := 16#2A#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:132

   DEFAULT_SYSTEM_CLOCK : constant := 20971520;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:134

  --** ###################################################################
  --**     Processors:          MKL25Z128VFM4
  --**                          MKL25Z128VFT4
  --**                          MKL25Z128VLH4
  --**                          MKL25Z128VLK4
  --**                          MKL25Z32VFM4
  --**                          MKL25Z32VFT4
  --**                          MKL25Z32VLH4
  --**                          MKL25Z32VLK4
  --**                          MKL25Z64VFM4
  --**                          MKL25Z64VFT4
  --**                          MKL25Z64VLH4
  --**                          MKL25Z64VLK4
  --**
  --**     Compilers:           Keil ARM C/C++ Compiler
  --**                          Freescale C/C++ for Embedded ARM
  --**                          GNU C Compiler
  --**                          IAR ANSI C/C++ Compiler for ARM
  --**                          MCUXpresso Compiler
  --**
  --**     Reference manual:    KL25P80M48SF0RM, Rev.3, Sep 2012
  --**     Version:             rev. 2.5, 2015-02-19
  --**     Build:               b170112
  --**
  --**     Abstract:
  --**         Provides a system configuration function and a global variable that
  --**         contains the system frequency. It configures the device and initializes
  --**         the oscillator (PLL) that is part of the microcontroller device.
  --**
  --**     Copyright (c) 2016 Freescale Semiconductor, Inc.
  --**     Copyright 2016 - 2017 NXP
  --**     Redistribution and use in source and binary forms, with or without modification,
  --**     are permitted provided that the following conditions are met:
  --**
  --**     o Redistributions of source code must retain the above copyright notice, this list
  --**       of conditions and the following disclaimer.
  --**
  --**     o Redistributions in binary form must reproduce the above copyright notice, this
  --**       list of conditions and the following disclaimer in the documentation and/or
  --**       other materials provided with the distribution.
  --**
  --**     o Neither the name of the copyright holder nor the names of its
  --**       contributors may be used to endorse or promote products derived from this
  --**       software without specific prior written permission.
  --**
  --**     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  --**     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  --**     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  --**     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
  --**     ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  --**     (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  --**     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
  --**     ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  --**     (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  --**     SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  --**
  --**     http:                 www.nxp.com
  --**     mail:                 support@nxp.com
  --**
  --**     Revisions:
  --**     - rev. 1.0 (2012-06-13)
  --**         Initial version.
  --**     - rev. 1.1 (2012-06-21)
  --**         Update according to reference manual rev. 1.
  --**     - rev. 1.2 (2012-08-01)
  --**         Device type UARTLP changed to UART0.
  --**     - rev. 1.3 (2012-10-04)
  --**         Update according to reference manual rev. 3.
  --**     - rev. 1.4 (2012-11-22)
  --**         MCG module - bit LOLS in MCG_S register renamed to LOLS0.
  --**         NV registers - bit EZPORT_DIS in NV_FOPT register removed.
  --**     - rev. 1.5 (2013-04-05)
  --**         Changed start of doxygen comment.
  --**     - rev. 2.0 (2013-10-29)
  --**         Register accessor macros added to the memory map.
  --**         Symbols for Processor Expert memory map compatibility added to the memory map.
  --**         Startup file for gcc has been updated according to CMSIS 3.2.
  --**         System initialization updated.
  --**     - rev. 2.1 (2014-07-16)
  --**         Module access macro module_BASES replaced by module_BASE_PTRS.
  --**         System initialization and startup updated.
  --**     - rev. 2.2 (2014-08-22)
  --**         System initialization updated - default clock config changed.
  --**     - rev. 2.3 (2014-08-28)
  --**         Update of startup files - possibility to override DefaultISR added.
  --**     - rev. 2.4 (2014-10-14)
  --**         Interrupt INT_LPTimer renamed to INT_LPTMR0.
  --**     - rev. 2.5 (2015-02-19)
  --**         Renamed interrupt vector LLW to LLWU.
  --**
  --** ###################################################################
  -- 

  --!
  -- * @file MKL25Z4
  -- * @version 2.5
  -- * @date 2015-02-19
  -- * @brief Device specific configuration file for MKL25Z4 (header file)
  -- *
  -- * Provides a system configuration function and a global variable that contains
  -- * the system frequency. It configures the device and initializes the oscillator
  -- * (PLL) that is part of the microcontroller device.
  --  

  -- Define clock source values  
  -- RTC oscillator setting  
  -- Low power mode enable  
  -- SMC_PMPROT: AVLP=1,ALLS=1,AVLLS=1  
  --*
  -- * @brief System clock frequency (core clock)
  -- *
  -- * The system clock frequency supplied to the SysTick timer and the processor
  -- * core clock. This variable can be used by the user application to setup the
  -- * SysTick timer or configure other parameters. It may also be used by debugger to
  -- * query the frequency of the debug timer or configure the trace clock speed
  -- * SystemCoreClock is initialized with a correct predefined value.
  --  

   SystemCoreClock : aliased sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "SystemCoreClock";

  --*
  -- * @brief Setup the microcontroller system.
  -- *
  -- * Typically this function configures the oscillator (PLL) that is part of the
  -- * microcontroller device. For systems with variable clock speed it also updates
  -- * the variable SystemCoreClock. SystemInit is called from startup_device file.
  --  

   procedure SystemInit  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "SystemInit";

  --*
  -- * @brief Updates the SystemCoreClock variable.
  -- *
  -- * It must be called whenever the core clock is changed during program
  -- * execution. SystemCoreClockUpdate() evaluates the clock register settings and calculates
  -- * the current core clock.
  --  

   procedure SystemCoreClockUpdate  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/system_MKL25Z4.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "SystemCoreClockUpdate";

end system_MKL25Z4_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
