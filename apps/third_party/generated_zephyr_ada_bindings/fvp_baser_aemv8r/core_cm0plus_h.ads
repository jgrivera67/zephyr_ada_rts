pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with sys_ustdint_h;

package core_cm0plus_h is

   APSR_N_Pos : constant := 31;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:225
   --  unsupported macro: APSR_N_Msk (1UL << APSR_N_Pos)

   APSR_Z_Pos : constant := 30;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:228
   --  unsupported macro: APSR_Z_Msk (1UL << APSR_Z_Pos)

   APSR_C_Pos : constant := 29;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:231
   --  unsupported macro: APSR_C_Msk (1UL << APSR_C_Pos)

   APSR_V_Pos : constant := 28;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:234
   --  unsupported macro: APSR_V_Msk (1UL << APSR_V_Pos)

   IPSR_ISR_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:252
   IPSR_ISR_Msk : constant := (16#1FF# );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:253

   xPSR_N_Pos : constant := 31;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:276
   --  unsupported macro: xPSR_N_Msk (1UL << xPSR_N_Pos)

   xPSR_Z_Pos : constant := 30;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:279
   --  unsupported macro: xPSR_Z_Msk (1UL << xPSR_Z_Pos)

   xPSR_C_Pos : constant := 29;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:282
   --  unsupported macro: xPSR_C_Msk (1UL << xPSR_C_Pos)

   xPSR_V_Pos : constant := 28;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:285
   --  unsupported macro: xPSR_V_Msk (1UL << xPSR_V_Pos)

   xPSR_T_Pos : constant := 24;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:288
   --  unsupported macro: xPSR_T_Msk (1UL << xPSR_T_Pos)

   xPSR_ISR_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:291
   xPSR_ISR_Msk : constant := (16#1FF# );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:292

   CONTROL_SPSEL_Pos : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:310
   --  unsupported macro: CONTROL_SPSEL_Msk (1UL << CONTROL_SPSEL_Pos)

   CONTROL_nPRIV_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:313
   CONTROL_nPRIV_Msk : constant := (1 );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:314

   SCB_CPUID_IMPLEMENTER_Pos : constant := 24;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:374
   --  unsupported macro: SCB_CPUID_IMPLEMENTER_Msk (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)

   SCB_CPUID_VARIANT_Pos : constant := 20;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:377
   --  unsupported macro: SCB_CPUID_VARIANT_Msk (0xFUL << SCB_CPUID_VARIANT_Pos)

   SCB_CPUID_ARCHITECTURE_Pos : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:380
   --  unsupported macro: SCB_CPUID_ARCHITECTURE_Msk (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)

   SCB_CPUID_PARTNO_Pos : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:383
   --  unsupported macro: SCB_CPUID_PARTNO_Msk (0xFFFUL << SCB_CPUID_PARTNO_Pos)

   SCB_CPUID_REVISION_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:386
   SCB_CPUID_REVISION_Msk : constant := (16#F# );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:387

   SCB_ICSR_NMIPENDSET_Pos : constant := 31;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:390
   --  unsupported macro: SCB_ICSR_NMIPENDSET_Msk (1UL << SCB_ICSR_NMIPENDSET_Pos)

   SCB_ICSR_PENDSVSET_Pos : constant := 28;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:393
   --  unsupported macro: SCB_ICSR_PENDSVSET_Msk (1UL << SCB_ICSR_PENDSVSET_Pos)

   SCB_ICSR_PENDSVCLR_Pos : constant := 27;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:396
   --  unsupported macro: SCB_ICSR_PENDSVCLR_Msk (1UL << SCB_ICSR_PENDSVCLR_Pos)

   SCB_ICSR_PENDSTSET_Pos : constant := 26;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:399
   --  unsupported macro: SCB_ICSR_PENDSTSET_Msk (1UL << SCB_ICSR_PENDSTSET_Pos)

   SCB_ICSR_PENDSTCLR_Pos : constant := 25;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:402
   --  unsupported macro: SCB_ICSR_PENDSTCLR_Msk (1UL << SCB_ICSR_PENDSTCLR_Pos)

   SCB_ICSR_ISRPREEMPT_Pos : constant := 23;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:405
   --  unsupported macro: SCB_ICSR_ISRPREEMPT_Msk (1UL << SCB_ICSR_ISRPREEMPT_Pos)

   SCB_ICSR_ISRPENDING_Pos : constant := 22;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:408
   --  unsupported macro: SCB_ICSR_ISRPENDING_Msk (1UL << SCB_ICSR_ISRPENDING_Pos)

   SCB_ICSR_VECTPENDING_Pos : constant := 12;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:411
   --  unsupported macro: SCB_ICSR_VECTPENDING_Msk (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)

   SCB_ICSR_VECTACTIVE_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:414
   SCB_ICSR_VECTACTIVE_Msk : constant := (16#1FF# );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:415

   SCB_VTOR_TBLOFF_Pos : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:419
   --  unsupported macro: SCB_VTOR_TBLOFF_Msk (0xFFFFFFUL << SCB_VTOR_TBLOFF_Pos)

   SCB_AIRCR_VECTKEY_Pos : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:424
   --  unsupported macro: SCB_AIRCR_VECTKEY_Msk (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)

   SCB_AIRCR_VECTKEYSTAT_Pos : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:427
   --  unsupported macro: SCB_AIRCR_VECTKEYSTAT_Msk (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)

   SCB_AIRCR_ENDIANNESS_Pos : constant := 15;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:430
   --  unsupported macro: SCB_AIRCR_ENDIANNESS_Msk (1UL << SCB_AIRCR_ENDIANNESS_Pos)

   SCB_AIRCR_SYSRESETREQ_Pos : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:433
   --  unsupported macro: SCB_AIRCR_SYSRESETREQ_Msk (1UL << SCB_AIRCR_SYSRESETREQ_Pos)

   SCB_AIRCR_VECTCLRACTIVE_Pos : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:436
   --  unsupported macro: SCB_AIRCR_VECTCLRACTIVE_Msk (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)

   SCB_SCR_SEVONPEND_Pos : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:440
   --  unsupported macro: SCB_SCR_SEVONPEND_Msk (1UL << SCB_SCR_SEVONPEND_Pos)

   SCB_SCR_SLEEPDEEP_Pos : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:443
   --  unsupported macro: SCB_SCR_SLEEPDEEP_Msk (1UL << SCB_SCR_SLEEPDEEP_Pos)

   SCB_SCR_SLEEPONEXIT_Pos : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:446
   --  unsupported macro: SCB_SCR_SLEEPONEXIT_Msk (1UL << SCB_SCR_SLEEPONEXIT_Pos)

   SCB_CCR_STKALIGN_Pos : constant := 9;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:450
   --  unsupported macro: SCB_CCR_STKALIGN_Msk (1UL << SCB_CCR_STKALIGN_Pos)

   SCB_CCR_UNALIGN_TRP_Pos : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:453
   --  unsupported macro: SCB_CCR_UNALIGN_TRP_Msk (1UL << SCB_CCR_UNALIGN_TRP_Pos)

   SCB_SHCSR_SVCALLPENDED_Pos : constant := 15;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:457
   --  unsupported macro: SCB_SHCSR_SVCALLPENDED_Msk (1UL << SCB_SHCSR_SVCALLPENDED_Pos)

   SysTick_CTRL_COUNTFLAG_Pos : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:482
   --  unsupported macro: SysTick_CTRL_COUNTFLAG_Msk (1UL << SysTick_CTRL_COUNTFLAG_Pos)

   SysTick_CTRL_CLKSOURCE_Pos : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:485
   --  unsupported macro: SysTick_CTRL_CLKSOURCE_Msk (1UL << SysTick_CTRL_CLKSOURCE_Pos)

   SysTick_CTRL_TICKINT_Pos : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:488
   --  unsupported macro: SysTick_CTRL_TICKINT_Msk (1UL << SysTick_CTRL_TICKINT_Pos)

   SysTick_CTRL_ENABLE_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:491
   SysTick_CTRL_ENABLE_Msk : constant := (1 );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:492

   SysTick_LOAD_RELOAD_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:495
   SysTick_LOAD_RELOAD_Msk : constant := (16#FFFFFF# );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:496

   SysTick_VAL_CURRENT_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:499
   SysTick_VAL_CURRENT_Msk : constant := (16#FFFFFF# );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:500

   SysTick_CALIB_NOREF_Pos : constant := 31;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:503
   --  unsupported macro: SysTick_CALIB_NOREF_Msk (1UL << SysTick_CALIB_NOREF_Pos)

   SysTick_CALIB_SKEW_Pos : constant := 30;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:506
   --  unsupported macro: SysTick_CALIB_SKEW_Msk (1UL << SysTick_CALIB_SKEW_Pos)

   SysTick_CALIB_TENMS_Pos : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:509
   SysTick_CALIB_TENMS_Msk : constant := (16#FFFFFF# );  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:510

   SCS_BASE : constant := (16#E000E000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:649
   --  unsupported macro: SysTick_BASE (SCS_BASE + 0x0010UL)
   --  unsupported macro: NVIC_BASE (SCS_BASE + 0x0100UL)
   --  unsupported macro: SCB_BASE (SCS_BASE + 0x0D00UL)
   --  unsupported macro: SCB ((SCB_Type *) SCB_BASE )
   --  unsupported macro: SysTick ((SysTick_Type *) SysTick_BASE )
   --  unsupported macro: NVIC ((NVIC_Type *) NVIC_BASE )
   --  unsupported macro: SCB_AIRCR_ENDIANESS_Pos SCB_AIRCR_ENDIANNESS_Pos
   --  unsupported macro: SCB_AIRCR_ENDIANESS_Msk SCB_AIRCR_ENDIANNESS_Msk
   --  unsupported macro: NVIC_SetPriorityGrouping __NVIC_SetPriorityGrouping
   --  unsupported macro: NVIC_GetPriorityGrouping __NVIC_GetPriorityGrouping
   --  unsupported macro: NVIC_EnableIRQ __NVIC_EnableIRQ
   --  unsupported macro: NVIC_GetEnableIRQ __NVIC_GetEnableIRQ
   --  unsupported macro: NVIC_DisableIRQ __NVIC_DisableIRQ
   --  unsupported macro: NVIC_GetPendingIRQ __NVIC_GetPendingIRQ
   --  unsupported macro: NVIC_SetPendingIRQ __NVIC_SetPendingIRQ
   --  unsupported macro: NVIC_ClearPendingIRQ __NVIC_ClearPendingIRQ
   --  unsupported macro: NVIC_SetPriority __NVIC_SetPriority
   --  unsupported macro: NVIC_GetPriority __NVIC_GetPriority
   --  unsupported macro: NVIC_SystemReset __NVIC_SystemReset
   --  unsupported macro: NVIC_SetVector __NVIC_SetVector
   --  unsupported macro: NVIC_GetVector __NVIC_GetVector

   NVIC_USER_IRQ_OFFSET : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:733

   EXC_RETURN_HANDLER : constant := (16#FFFFFFF1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:737
   EXC_RETURN_THREAD_MSP : constant := (16#FFFFFFF9#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:738
   EXC_RETURN_THREAD_PSP : constant := (16#FFFFFFFD#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:739

  -- * Copyright (c) 2009-2024 Arm Limited. All rights reserved.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  -- *
  -- * Licensed under the Apache License, Version 2.0 (the License); you may
  -- * not use this file except in compliance with the License.
  -- * You may obtain a copy of the License at
  -- *
  -- * www.apache.org/licenses/LICENSE-2.0
  -- *
  -- * Unless required by applicable law or agreed to in writing, software
  -- * distributed under the License is distributed on an AS IS BASIS, WITHOUT
  -- * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  -- * See the License for the specific language governing permissions and
  -- * limitations under the License.
  --  

  -- * CMSIS Cortex-M0+ Core Peripheral Access Layer Header File
  --  

  -- disable pedantic warning due to unnamed structs/unions  
  --*
  --  \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  --  CMSIS violates the following MISRA-C:2004 rules:
  --   \li Required Rule 8.5, object/function definition in header file.<br>
  --     Function definitions in header files are used to allow 'inlining'.
  --   \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  --     Unions are used for effective representation of core registers.
  --   \li Advisory Rule 19.7, Function-like macro defined.<br>
  --     Function-like macros are used to allow more efficient code.
  --  

  --******************************************************************************
  -- *                 CMSIS definitions
  -- ***************************************************************************** 

  --*
  --  \ingroup Cortex-M0+
  --  @{
  --  

  -- CMSIS CM0+ definitions  
  --* __FPU_USED indicates whether an FPU is used or not.
  --    This core does not support an FPU at all
  -- 

  -- CMSIS compiler specific defines  
  -- check device defines and use defaults  
  -- IO definitions (access restrictions to peripheral registers)  
  --*
  --    \defgroup CMSIS_glob_defs CMSIS Global Defines
  --    <strong>IO Type Qualifiers</strong> are used
  --    \li to specify the access to peripheral variables.
  --    \li for automatic generation of peripheral register debug information.
  -- 

  -- following defines should be used for structure members  
  --@} end of group Cortex-M0+  
  --******************************************************************************
  -- *                 Register Abstraction
  --  Core Register contain:
  --  - Core Register
  --  - Core NVIC Register
  --  - Core SCB Register
  --  - Core SysTick Register
  --  - Core MPU Register
  -- ***************************************************************************** 

  --*
  --  \defgroup CMSIS_core_register Defines and Type Definitions
  --  \brief Type definitions and defines for Cortex-M processor based devices.
  -- 

  --*
  --  \ingroup    CMSIS_core_register
  --  \defgroup   CMSIS_CORE  Status and Control Registers
  --  \brief      Core Register type definitions.
  --  @{
  --  

  --*
  --  \brief  Union type to access the Application Program Status Register (APSR).
  --  

  --!< bit:  0..27  Reserved  
  --!< bit:     28  Overflow condition code flag  
  --!< bit:     29  Carry condition code flag  
  --!< bit:     30  Zero condition code flag  
  --!< bit:     31  Negative condition code flag  
  --!< Structure used for bit  access  
  --!< Type      used for word access  
   type anon_struct1800 is record
      u_reserved0 : Extensions.Unsigned_28;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:215
      V : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:216
      C : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:217
      Z : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:218
      N : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:219
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;
   type APSR_Type (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b : aliased anon_struct1800;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:220
         when others =>
            w : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:221
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:222

  --* \brief APSR Register Definitions  
  --*
  --  \brief  Union type to access the Interrupt Program Status Register (IPSR).
  --  

  --!< bit:  0.. 8  Exception number  
  --!< bit:  9..31  Reserved  
  --!< Structure used for bit  access  
  --!< Type      used for word access  
   type anon_struct1805 is record
      ISR : Extensions.Unsigned_9;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:245
      u_reserved0 : Extensions.Unsigned_23;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:246
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;
   type IPSR_Type (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b : aliased anon_struct1805;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:247
         when others =>
            w : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:248
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:249

  --* \brief IPSR Register Definitions  
  --*
  --  \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
  --  

  --!< bit:  0.. 8  Exception number  
  --!< bit:  9..23  Reserved  
  --!< bit:     24  Thumb bit        (read 0)  
  --!< bit: 25..27  Reserved  
  --!< bit:     28  Overflow condition code flag  
  --!< bit:     29  Carry condition code flag  
  --!< bit:     30  Zero condition code flag  
  --!< bit:     31  Negative condition code flag  
  --!< Structure used for bit  access  
  --!< Type      used for word access  
   type anon_struct1810 is record
      ISR : Extensions.Unsigned_9;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:263
      u_reserved0 : Extensions.Unsigned_15;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:264
      T : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:265
      u_reserved1 : Extensions.Unsigned_3;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:266
      V : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:267
      C : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:268
      Z : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:269
      N : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:270
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;
   type xPSR_Type (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b : aliased anon_struct1810;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:271
         when others =>
            w : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:272
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:273

  --* \brief xPSR Register Definitions  
  --*
  --  \brief  Union type to access the Control Registers (CONTROL).
  --  

  --!< bit:      0  Execution privilege in Thread mode  
  --!< bit:      1  Stack to be used  
  --!< bit:  2..31  Reserved  
  --!< Structure used for bit  access  
  --!< Type      used for word access  
   type anon_struct1815 is record
      nPRIV : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:302
      SPSEL : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:303
      u_reserved1 : Extensions.Unsigned_30;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:304
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;
   type CONTROL_Type (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            b : aliased anon_struct1815;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:305
         when others =>
            w : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:306
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:307

  --* \brief CONTROL Register Definitions  
  --@} end of group CMSIS_CORE  
  --*
  --  \ingroup    CMSIS_core_register
  --  \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
  --  \brief      Type definitions for the NVIC Registers
  --  @{
  --  

  --*
  --  \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
  --  

  --!< Offset: 0x000 (R/W)  Interrupt Set Enable Register  
  --!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register  
  --!< Offset: 0x100 (R/W)  Interrupt Set Pending Register  
  --!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register  
  --!< Offset: 0x300 (R/W)  Interrupt Priority Register  
   type anon_array1823 is array (0 .. 0) of aliased sys_ustdint_h.uint32_t;
   type anon_array1826 is array (0 .. 30) of aliased sys_ustdint_h.uint32_t;
   type anon_array1829 is array (0 .. 63) of aliased sys_ustdint_h.uint32_t;
   type anon_array1833 is array (0 .. 7) of aliased sys_ustdint_h.uint32_t;
   type NVIC_Type is record
      ISER : aliased anon_array1823;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:331
      RESERVED0 : aliased anon_array1826;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:332
      ICER : aliased anon_array1823;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:333
      RESERVED1 : aliased anon_array1826;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:334
      ISPR : aliased anon_array1823;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:335
      RESERVED2 : aliased anon_array1826;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:336
      ICPR : aliased anon_array1823;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:337
      RESERVED3 : aliased anon_array1826;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:338
      RESERVED4 : aliased anon_array1829;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:339
      IPR : aliased anon_array1833;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:340
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:341

  --@} end of group CMSIS_NVIC  
  --*
  --  \ingroup  CMSIS_core_register
  --  \defgroup CMSIS_SCB     System Control Block (SCB)
  --  \brief    Type definitions for the System Control Block Registers
  --  @{
  --  

  --*
  --  \brief  Structure type to access the System Control Block (SCB).
  --  

  --!< Offset: 0x000 (R/ )  CPUID Base Register  
  --!< Offset: 0x004 (R/W)  Interrupt Control and State Register  
  --!< Offset: 0x008 (R/W)  Vector Table Offset Register  
  --!< Offset: 0x00C (R/W)  Application Interrupt and Reset Control Register  
  --!< Offset: 0x010 (R/W)  System Control Register  
  --!< Offset: 0x014 (R/W)  Configuration Control Register  
  --!< Offset: 0x01C (R/W)  System Handlers Priority Registers. [0] is RESERVED  
  --!< Offset: 0x024 (R/W)  System Handler Control and State Register  
   type anon_array1841 is array (0 .. 1) of aliased sys_ustdint_h.uint32_t;
   type SCB_Type is record
      CPUID : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:358
      ICSR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:359
      VTOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:361
      AIRCR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:365
      SCR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:366
      CCR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:367
      RESERVED1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:368
      SHPR : aliased anon_array1841;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:369
      SHCSR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:370
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:371

  --* \brief SCB CPUID Register Definitions  
  --* \brief SCB Interrupt Control State Register Definitions  
  --* \brief SCB Vector Table Offset Register Definitions  
  --* \brief SCB Application Interrupt and Reset Control Register Definitions  
  --* \brief SCB System Control Register Definitions  
  --* \brief SCB Configuration Control Register Definitions  
  --* \brief SCB System Handler Control and State Register Definitions  
  --@} end of group CMSIS_SCB  
  --*
  --  \ingroup  CMSIS_core_register
  --  \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
  --  \brief    Type definitions for the System Timer Registers.
  --  @{
  --  

  --*
  --  \brief  Structure type to access the System Timer (SysTick).
  --  

  --!< Offset: 0x000 (R/W)  SysTick Control and Status Register  
  --!< Offset: 0x004 (R/W)  SysTick Reload Value Register  
  --!< Offset: 0x008 (R/W)  SysTick Current Value Register  
  --!< Offset: 0x00C (R/ )  SysTick Calibration Register  
   type SysTick_Type is record
      CTRL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:475
      LOAD : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:476
      VAL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:477
      CALIB : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:478
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:479

  --* \brief SysTick Control / Status Register Definitions  
  --* \brief SysTick Reload Register Definitions  
  --* \brief SysTick Current Register Definitions  
  --* \brief SysTick Calibration Register Definitions  
  --@} end of group CMSIS_SysTick  
  --*
  --  \ingroup  CMSIS_core_register
  --  \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
  --  \brief    Type definitions for the Memory Protection Unit (MPU)
  --  @{
  --  

  --*
  --  \brief  Structure type to access the Memory Protection Unit (MPU).
  --  

  --!< Offset: 0x000 (R/ )  MPU Type Register  
  --!< Offset: 0x004 (R/W)  MPU Control Register  
  --!< Offset: 0x008 (R/W)  MPU Region Number Register  
  --!< Offset: 0x00C (R/W)  MPU Region Base Address Register  
  --!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Register  
  --* \brief MPU Type Register Definitions  
  --* \brief MPU Control Register Definitions  
  --* \brief MPU Region Number Register Definitions  
  --* \brief MPU Region Base Address Register Definitions  
  --* \brief MPU Region Attribute and Size Register Definitions  
  --@} end of group CMSIS_MPU  
  --*
  --  \ingroup  CMSIS_core_register
  --  \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
  --  \brief    Cortex-M0+ Core Debug Registers (DCB registers, SHCSR, and DFSR) are only accessible over DAP and not via processor.
  --            Therefore they are not covered by the Cortex-M0+ header file.
  --  @{
  --  

  --@} end of group CMSIS_CoreDebug  
  --*
  --  \ingroup    CMSIS_core_register
  --  \defgroup   CMSIS_core_bitfield     Core register bit field macros
  --  \brief      Macros for use with bit field definitions (xxx_Pos, xxx_Msk).
  --  @{
  --  

  --*
  --  \brief   Mask and shift a bit field value for use in a register bit range.
  --  \param[in] field  Name of the register bit field.
  --  \param[in] value  Value of the bit field. This parameter is interpreted as an uint32_t type.
  --  \return           Masked and shifted value.
  -- 

  --*
  --  \brief     Mask and shift a register value to extract a bit field value.
  --  \param[in] field  Name of the register bit field.
  --  \param[in] value  Value of register. This parameter is interpreted as an uint32_t type.
  --  \return           Masked and shifted bit field value.
  -- 

  --@} end of group CMSIS_core_bitfield  
  --*
  --  \ingroup    CMSIS_core_register
  --  \defgroup   CMSIS_core_base     Core Definitions
  --  \brief      Definitions for base addresses, unions, and structures.
  --  @{
  --  

  -- Memory mapping of Core Hardware  
  --@}  
  --*
  --  \defgroup   CMSIS_deprecated_aliases     Backwards Compatibility Aliases
  --  \brief      Alias definitions present for backwards compatibility for deprecated symbols.
  --  @{
  --  

  --@}  
  --******************************************************************************
  -- *                Hardware Abstraction Layer
  --  Core Function Interface contains:
  --  - Core NVIC Functions
  --  - Core SysTick Functions
  --  - Core Register Access Functions
  -- ***************************************************************************** 

  --*
  --  \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
  -- 

  -- ##########################   NVIC functions  ####################################  
  --*
  --  \ingroup  CMSIS_Core_FunctionInterface
  --  \defgroup CMSIS_Core_NVICFunctions NVIC Functions
  --  \brief    Functions that manage interrupts and exceptions via the NVIC.
  --  @{
  --  

  --        NVIC_GetActive              not available for Cortex-M0+  
  -- The following EXC_RETURN values are saved the LR on exception entry  
  -- Interrupt Priorities are WORD accessible only under Armv6-M                   
  -- The following MACROS handle generation of the register offset and byte masks  
  --*
  --  \brief   Enable Interrupt
  --  \details Enables a device specific interrupt in the NVIC interrupt controller.
  --  \param [in]      IRQn  Device specific interrupt number.
  --  \note    IRQn must not be negative.
  --  

   --  skipped func __NVIC_EnableIRQ

  --*
  --  \brief   Get Interrupt Enable status
  --  \details Returns a device specific interrupt enable status from the NVIC interrupt controller.
  --  \param [in]      IRQn  Device specific interrupt number.
  --  \return             0  Interrupt is not enabled.
  --  \return             1  Interrupt is enabled.
  --  \note    IRQn must not be negative.
  --  

   --  skipped func __NVIC_GetEnableIRQ

  --*
  --  \brief   Disable Interrupt
  --  \details Disables a device specific interrupt in the NVIC interrupt controller.
  --  \param [in]      IRQn  Device specific interrupt number.
  --  \note    IRQn must not be negative.
  --  

   --  skipped func __NVIC_DisableIRQ

  --*
  --  \brief   Get Pending Interrupt
  --  \details Reads the NVIC pending register and returns the pending bit for the specified device specific interrupt.
  --  \param [in]      IRQn  Device specific interrupt number.
  --  \return             0  Interrupt status is not pending.
  --  \return             1  Interrupt status is pending.
  --  \note    IRQn must not be negative.
  --  

   --  skipped func __NVIC_GetPendingIRQ

  --*
  --  \brief   Set Pending Interrupt
  --  \details Sets the pending bit of a device specific interrupt in the NVIC pending register.
  --  \param [in]      IRQn  Device specific interrupt number.
  --  \note    IRQn must not be negative.
  --  

   --  skipped func __NVIC_SetPendingIRQ

  --*
  --  \brief   Clear Pending Interrupt
  --  \details Clears the pending bit of a device specific interrupt in the NVIC pending register.
  --  \param [in]      IRQn  Device specific interrupt number.
  --  \note    IRQn must not be negative.
  --  

   --  skipped func __NVIC_ClearPendingIRQ

  --*
  --  \brief   Set Interrupt Priority
  --  \details Sets the priority of a device specific interrupt or a processor exception.
  --           The interrupt number can be positive to specify a device specific interrupt,
  --           or negative to specify a processor exception.
  --  \param [in]      IRQn  Interrupt number.
  --  \param [in]  priority  Priority to set.
  --  \note    The priority cannot be set for every processor exception.
  --  

   --  skipped func __NVIC_SetPriority

  --*
  --  \brief   Get Interrupt Priority
  --  \details Reads the priority of a device specific interrupt or a processor exception.
  --           The interrupt number can be positive to specify a device specific interrupt,
  --           or negative to specify a processor exception.
  --  \param [in]   IRQn  Interrupt number.
  --  \return             Interrupt Priority.
  --                      Value is aligned automatically to the implemented priority bits of the microcontroller.
  --  

   --  skipped func __NVIC_GetPriority

  --*
  --  \brief   Encode Priority
  --  \details Encodes the priority for an interrupt with the given priority group,
  --           preemptive priority value, and subpriority value.
  --           In case of a conflict between priority grouping and available
  --           priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
  --  \param [in]     PriorityGroup  Used priority group.
  --  \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
  --  \param [in]       SubPriority  Subpriority value (starting from 0).
  --  \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
  --  

   function NVIC_EncodePriority
     (PriorityGroup : sys_ustdint_h.uint32_t;
      PreemptPriority : sys_ustdint_h.uint32_t;
      SubPriority : sys_ustdint_h.uint32_t) return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:915
   with Import => True, 
        Convention => C, 
        External_Name => "NVIC_EncodePriority";

  -- only values 0..7 are used           
  --*
  --  \brief   Decode Priority
  --  \details Decodes an interrupt priority value with a given priority group to
  --           preemptive priority value and subpriority value.
  --           In case of a conflict between priority grouping and available
  --           priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.
  --  \param [in]         Priority   Priority value, which can be retrieved with the function \ref NVIC_GetPriority().
  --  \param [in]     PriorityGroup  Used priority group.
  --  \param [out] pPreemptPriority  Preemptive priority value (starting from 0).
  --  \param [out]     pSubPriority  Subpriority value (starting from 0).
  --  

   procedure NVIC_DecodePriority
     (Priority : sys_ustdint_h.uint32_t;
      PriorityGroup : sys_ustdint_h.uint32_t;
      pPreemptPriority : access sys_ustdint_h.uint32_t;
      pSubPriority : access sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:942
   with Import => True, 
        Convention => C, 
        External_Name => "NVIC_DecodePriority";

  -- only values 0..7 are used           
  --*
  --  \brief   Set Interrupt Vector
  --  \details Sets an interrupt vector in SRAM based interrupt vector table.
  --           The interrupt number can be positive to specify a device specific interrupt,
  --           or negative to specify a processor exception.
  --           VTOR must been relocated to SRAM before.
  --           If VTOR is not present address 0 must be mapped to SRAM.
  --  \param [in]   IRQn      Interrupt number
  --  \param [in]   vector    Address of interrupt handler function
  --  

   --  skipped func __NVIC_SetVector

  -- point to 1st user interrupt  
  -- use pointer arithmetic to access vector  
  -- ARM Application Note 321 states that the M0+ does not require the architectural barrier  
  --*
  --  \brief   Get Interrupt Vector
  --  \details Reads an interrupt vector from interrupt vector table.
  --           The interrupt number can be positive to specify a device specific interrupt,
  --           or negative to specify a processor exception.
  --  \param [in]   IRQn      Interrupt number.
  --  \return                 Address of interrupt handler function
  --  

   --  skipped func __NVIC_GetVector

  -- point to 1st user interrupt  
  -- use pointer arithmetic to access vector  
  --*
  --  \brief   System Reset
  --  \details Initiates a system reset request to reset the MCU.
  --  

   --  skipped func __NVIC_SystemReset

  -- Ensure all outstanding memory accesses included
  --                                                                       buffered write are completed before reset  

  -- Ensure completion of memory access  
  -- wait until reset  
  --@} end of CMSIS_Core_NVICFunctions  
  -- ##########################  MPU functions  ####################################  
  -- ##########################  FPU functions  ####################################  
  --*
  --  \ingroup  CMSIS_Core_FunctionInterface
  --  \defgroup CMSIS_Core_FpuFunctions FPU Functions
  --  \brief    Function that provides FPU type.
  --  @{
  --  

  --*
  --  \brief   get FPU type
  --  \details returns the FPU type
  --  \returns
  --   - \b  0: No FPU
  --   - \b  1: Single precision FPU
  --   - \b  2: Double + Single precision FPU
  --  

   function SCB_GetFPUType return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:1043
   with Import => True, 
        Convention => C, 
        External_Name => "SCB_GetFPUType";

  -- No FPU  
  --@} end of CMSIS_Core_FpuFunctions  
  -- ##################################    SysTick function  ############################################  
  --*
  --  \ingroup  CMSIS_Core_FunctionInterface
  --  \defgroup CMSIS_Core_SysTickFunctions SysTick Functions
  --  \brief    Functions that configure the System.
  --  @{
  --  

  --*
  --  \brief   System Tick Configuration
  --  \details Initializes the System Timer and its interrupt, and starts the System Tick Timer.
  --           Counter is in free running mode to generate periodic interrupts.
  --  \param [in]  ticks  Number of ticks between two interrupts.
  --  \return          0  Function succeeded.
  --  \return          1  Function failed.
  --  \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
  --           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
  --           must contain a vendor-specific implementation of this function.
  --  

   function SysTick_Config (ticks : sys_ustdint_h.uint32_t) return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/core_cm0plus.h:1074
   with Import => True, 
        Convention => C, 
        External_Name => "SysTick_Config";

  -- Reload value impossible  
  -- set reload register  
  -- set Priority for Systick Interrupt  
  -- Load the SysTick Counter Value  
  -- Enable SysTick IRQ and SysTick Timer  
  -- Function successful  
  --@} end of CMSIS_Core_SysTickFunctions  
end core_cm0plus_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
