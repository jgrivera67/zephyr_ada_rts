pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package cmsis_gcc_h is

   --  unsupported macro: CMSIS_DEPRECATED __attribute__((deprecated))
  --************************************************************************ 
  --*
  -- * @file     cmsis_gcc.h
  -- * @brief    CMSIS compiler GCC header file
  -- * @version  V6.0.0
  -- * @date     27. July 2024
  -- ***************************************************************************** 

  -- * Copyright (c) 2009-2023 Arm Limited. All rights reserved.
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

  -- Fallback for __has_builtin
  -- CMSIS compiler specific defines
   type T_UINT16_WRITE is record
      v : sys_ustdint_h.uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/cmsis_gcc.h:75
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/cmsis_gcc.h:75

   type T_UINT16_READ is record
      v : sys_ustdint_h.uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/cmsis_gcc.h:83
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/cmsis_gcc.h:83

   type T_UINT32_WRITE is record
      v : sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/cmsis_gcc.h:91
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 1;  -- /Users/jgrivera/my-projects/zephyr_ada/apps/third_party/generated_zephyr_ada_bindings/frdm_kl25z/cmsis_gcc_h.ads:61

   type T_UINT32_READ is record
      v : sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/cmsis_gcc.h:99
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/cmsis_6/CMSIS/Core/Include/cmsis_gcc.h:99

  -- ##########################  Core Instruction Access  #########################  
  --* \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
  --  Access to dedicated instructions
  --  @{
  -- 

  -- Define macros for porting to both thumb1 and thumb2.
  -- * For thumb1, use low register (r0-r7), specified by constraint "l"
  -- * Otherwise, use general registers, specified by constraint "r"  

  --*
  --  \brief   No Operation
  --  \details No Operation does nothing. This instruction can be used for code alignment purposes.
  --  

  --*
  --  \brief   Wait For Interrupt
  --  \details Wait For Interrupt is a hint instruction that suspends execution until one of a number of events occurs.
  --  

  --*
  --  \brief   Wait For Event
  --  \details Wait For Event is a hint instruction that permits the processor to enter
  --           a low-power state until one of a number of events occurs.
  --  

  --*
  --  \brief   Send Event
  --  \details Send Event is a hint instruction. It causes an event to be signaled to the CPU.
  --  

  --*
  --  \brief   Instruction Synchronization Barrier
  --  \details Instruction Synchronization Barrier flushes the pipeline in the processor,
  --           so that all instructions following the ISB are fetched from cache or memory,
  --           after the instruction has been completed.
  --  

   --  skipped func __ISB

  --*
  --  \brief   Data Synchronization Barrier
  --  \details Acts as a special kind of Data Memory Barrier.
  --           It completes when all explicit memory accesses before this instruction complete.
  --  

   --  skipped func __DSB

  --*
  --  \brief   Data Memory Barrier
  --  \details Ensures the apparent order of the explicit memory operations before
  --           and after the instruction, without ensuring their completion.
  --  

   --  skipped func __DMB

  --*
  --  \brief   Reverse byte order (32 bit)
  --  \details Reverses the byte order in unsigned integer value. For example, 0x12345678 becomes 0x78563412.
  --  \param [in]    value  Value to reverse
  --  \return               Reversed value
  --  

   --  skipped func __REV

  --*
  --  \brief   Reverse byte order (16 bit)
  --  \details Reverses the byte order within each halfword of a word. For example, 0x12345678 becomes 0x34127856.
  --  \param [in]    value  Value to reverse
  --  \return               Reversed value
  --  

   --  skipped func __REV16

  --*
  --  \brief   Reverse byte order (16 bit)
  --  \details Reverses the byte order in a 16-bit value and returns the signed 16-bit result. For example, 0x0080 becomes 0x8000.
  --  \param [in]    value  Value to reverse
  --  \return               Reversed value
  --  

   --  skipped func __REVSH

  --*
  --  \brief   Rotate Right in unsigned value (32 bit)
  --  \details Rotate Right (immediate) provides the value of the contents of a register rotated by a variable number of bits.
  --  \param [in]    op1  Value to rotate
  --  \param [in]    op2  Number of Bits to rotate
  --  \return               Rotated value
  --  

   --  skipped func __ROR

  --*
  --  \brief   Breakpoint
  --  \details Causes the processor to enter Debug state.
  --           Debug tools can use this to investigate system state when the instruction at a particular address is reached.
  --  \param [in]    value  is ignored by the processor.
  --                 If required, a debugger can use it to store additional information about the breakpoint.
  --  

  --*
  --  \brief   Reverse bit order of value
  --  \details Reverses the bit order of the given value.
  --  \param [in]    value  Value to reverse
  --  \return               Reversed value
  --  

   --  skipped func __RBIT

  --sizeof(v) 
  -- extra shift needed at end  
  -- r will be reversed bits of v; first get LSB of v  
  -- shift when v's highest bits are zero  
  --*
  --  \brief   Count leading zeros
  --  \details Counts the number of leading zeros of a data value.
  --  \param [in]  value  Value to count the leading zeros
  --  \return             number of leading zeros in value
  --  

   --  skipped func __CLZ

  -- Even though __builtin_clz produces a CLZ instruction on ARM, formally
  --     __builtin_clz(0) is undefined behaviour, so handle this case specially.
  --     This guarantees ARM-compatible results if happening to compile on a non-ARM
  --     target, and ensures the compiler doesn't decide to activate any
  --     optimisations using the logic "value was passed to __builtin_clz, so it
  --     is non-zero".
  --     ARM GCC 7.3 and possibly earlier will optimise this test away, leaving a
  --     single CLZ instruction.
  --    

  --*
  --  \brief   Signed Saturate
  --  \details Saturates a signed value.
  --  \param [in]  value  Value to be saturated
  --  \param [in]    sat  Bit position to saturate to (1..32)
  --  \return             Saturated value
  --  

  --*
  --  \brief   Unsigned Saturate
  --  \details Saturates an unsigned value.
  --  \param [in]  value  Value to be saturated
  --  \param [in]    sat  Bit position to saturate to (0..31)
  --  \return             Saturated value
  --  

  --*
  --  \brief   Signed Saturate
  --  \details Saturates a signed value.
  --  \param [in]  value  Value to be saturated
  --  \param [in]    sat  Bit position to saturate to (1..32)
  --  \return             Saturated value
  --  

   --  skipped func __SSAT

  --*
  --  \brief   Unsigned Saturate
  --  \details Saturates an unsigned value.
  --  \param [in]  value  Value to be saturated
  --  \param [in]    sat  Bit position to saturate to (0..31)
  --  \return             Saturated value
  --  

   --  skipped func __USAT

  --*
  --  \brief   Remove the exclusive lock
  --  \details Removes the exclusive lock which is created by LDREX.
  --  

  --*
  --  \brief   LDR Exclusive (8 bit)
  --  \details Executes a exclusive LDR instruction for 8 bit value.
  --  \param [in]    ptr  Pointer to data
  --  \return             value of type uint8_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   STR Exclusive (8 bit)
  --  \details Executes a exclusive STR instruction for 8 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  \return          0  Function succeeded
  --  \return          1  Function failed
  --  

  --*
  --  \brief   LDR Exclusive (16 bit)
  --  \details Executes a exclusive LDR instruction for 16 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint16_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   STR Exclusive (16 bit)
  --  \details Executes a exclusive STR instruction for 16 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  \return          0  Function succeeded
  --  \return          1  Function failed
  --  

  --*
  --  \brief   LDR Exclusive (32 bit)
  --  \details Executes a exclusive LDR instruction for 32 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint32_t at (*ptr)
  --  

  --*
  --  \brief   STR Exclusive (32 bit)
  --  \details Executes a exclusive STR instruction for 32 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  \return          0  Function succeeded
  --  \return          1  Function failed
  --  

  --*
  --  \brief   Rotate Right with Extend (32 bit)
  --  \details Moves each bit of a bitstring right by one bit.
  --           The carry input is shifted in at the left end of the bitstring.
  --  \param [in]    value  Value to rotate
  --  \return               Rotated value
  --  

  --*
  --  \brief   LDRT Unprivileged (8 bit)
  --  \details Executes a Unprivileged LDRT instruction for 8 bit value.
  --  \param [in]    ptr  Pointer to data
  --  \return             value of type uint8_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   LDRT Unprivileged (16 bit)
  --  \details Executes a Unprivileged LDRT instruction for 16 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint16_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   LDRT Unprivileged (32 bit)
  --  \details Executes a Unprivileged LDRT instruction for 32 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint32_t at (*ptr)
  --  

  --*
  --  \brief   STRT Unprivileged (8 bit)
  --  \details Executes a Unprivileged STRT instruction for 8 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  

  --*
  --  \brief   STRT Unprivileged (16 bit)
  --  \details Executes a Unprivileged STRT instruction for 16 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  

  --*
  --  \brief   STRT Unprivileged (32 bit)
  --  \details Executes a Unprivileged STRT instruction for 32 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  

  --*
  --  \brief   Load-Acquire (8 bit)
  --  \details Executes a LDAB instruction for 8 bit value.
  --  \param [in]    ptr  Pointer to data
  --  \return             value of type uint8_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   Load-Acquire (16 bit)
  --  \details Executes a LDAH instruction for 16 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint16_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   Load-Acquire (32 bit)
  --  \details Executes a LDA instruction for 32 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint32_t at (*ptr)
  --  

  --*
  --  \brief   Store-Release (8 bit)
  --  \details Executes a STLB instruction for 8 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  

  --*
  --  \brief   Store-Release (16 bit)
  --  \details Executes a STLH instruction for 16 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  

  --*
  --  \brief   Store-Release (32 bit)
  --  \details Executes a STL instruction for 32 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  

  --*
  --  \brief   Load-Acquire Exclusive (8 bit)
  --  \details Executes a LDAB exclusive instruction for 8 bit value.
  --  \param [in]    ptr  Pointer to data
  --  \return             value of type uint8_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   Load-Acquire Exclusive (16 bit)
  --  \details Executes a LDAH exclusive instruction for 16 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint16_t at (*ptr)
  --  

  -- Add explicit type cast here  
  --*
  --  \brief   Load-Acquire Exclusive (32 bit)
  --  \details Executes a LDA exclusive instruction for 32 bit values.
  --  \param [in]    ptr  Pointer to data
  --  \return        value of type uint32_t at (*ptr)
  --  

  --*
  --  \brief   Store-Release Exclusive (8 bit)
  --  \details Executes a STLB exclusive instruction for 8 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  \return          0  Function succeeded
  --  \return          1  Function failed
  --  

  --*
  --  \brief   Store-Release Exclusive (16 bit)
  --  \details Executes a STLH exclusive instruction for 16 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  \return          0  Function succeeded
  --  \return          1  Function failed
  --  

  --*
  --  \brief   Store-Release Exclusive (32 bit)
  --  \details Executes a STL exclusive instruction for 32 bit values.
  --  \param [in]  value  Value to store
  --  \param [in]    ptr  Pointer to location
  --  \return          0  Function succeeded
  --  \return          1  Function failed
  --  

  --* @} 
  -- end of group CMSIS_Core_InstructionInterface  
  -- ###########################  Core Function Access  ###########################  
  --* \ingroup  CMSIS_Core_FunctionInterface
  --    \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  --  @{
  --  

  --*
  --  \brief   Enable IRQ Interrupts
  --  \details Enables IRQ interrupts by clearing special-purpose register PRIMASK.
  --           Can only be executed in Privileged modes.
  --  

   --  skipped func __enable_irq

  --*
  --  \brief   Disable IRQ Interrupts
  --  \details Disables IRQ interrupts by setting special-purpose register PRIMASK.
  --           Can only be executed in Privileged modes.
  --  

   --  skipped func __disable_irq

  --*
  --    \brief   Enable FIQ
  --  \details Enables FIQ interrupts by clearing special-purpose register FAULTMASK.
  --             Can only be executed in Privileged modes.
  --    

  --*
  --    \brief   Disable FIQ
  --    \details Disables FIQ interrupts by setting special-purpose register FAULTMASK.
  --             Can only be executed in Privileged modes.
  --    

  --*
  --  \brief   Get FPSCR
  --  \details Returns the current value of the Floating Point Status/Control register.
  --  \return               Floating Point Status/Control register value
  --  

   --  skipped func __get_FPSCR

  --*
  --  \brief   Set FPSCR
  --  \details Assigns the given value to the Floating Point Status/Control register.
  --  \param [in]    fpscr  Floating Point Status/Control value to set
  --  

   --  skipped func __set_FPSCR

  --* @} end of CMSIS_Core_RegAccFunctions  
  -- ###################  Compiler specific Intrinsics  ###########################  
  --* \defgroup CMSIS_SIMD_intrinsics CMSIS SIMD Intrinsics
  --  Access to dedicated SIMD instructions
  --  @{
  -- 

  --* @} end of group CMSIS_SIMD_intrinsics  
  -- Include the profile specific settings:
end cmsis_gcc_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
