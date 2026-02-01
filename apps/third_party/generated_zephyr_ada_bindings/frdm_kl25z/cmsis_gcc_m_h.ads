pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package cmsis_gcc_m_h is

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

  -- * CMSIS-Core(M) Compiler GCC Header File
  --  

  -- #########################  Startup and Lowlevel Init  ########################  
  --*
  --  \brief   Initializes data and bss sections
  --  \details This default implementations initialized all data and additional bss
  --           sections relying on .copy.table and .zero.table specified properly
  --           in the used linker script.
  --  

  -- ###########################  Core Function Access  ###########################  
  --* \ingroup  CMSIS_Core_FunctionInterface
  --    \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  --  @{
  --  

  --*
  --  \brief   Get Control Register
  --  \details Returns the content of the Control Register.
  --  \return               Control Register value
  --  

   --  skipped func __get_CONTROL

  --*
  --  \brief   Get Control Register (non-secure)
  --  \details Returns the content of the non-secure Control Register when in secure mode.
  --  \return               non-secure Control Register value
  --  

  --*
  --  \brief   Set Control Register
  --  \details Writes the given value to the Control Register.
  --  \param [in]    control  Control Register value to set
  --  

   --  skipped func __set_CONTROL

  --*
  --  \brief   Set Control Register (non-secure)
  --  \details Writes the given value to the non-secure Control Register when in secure state.
  --  \param [in]    control  Control Register value to set
  --  

  --*
  --  \brief   Get IPSR Register
  --  \details Returns the content of the IPSR Register.
  --  \return               IPSR Register value
  --  

   --  skipped func __get_IPSR

  --*
  --  \brief   Get APSR Register
  --  \details Returns the content of the APSR Register.
  --  \return               APSR Register value
  --  

   --  skipped func __get_APSR

  --*
  --  \brief   Get xPSR Register
  --  \details Returns the content of the xPSR Register.
  --  \return               xPSR Register value
  --  

   --  skipped func __get_xPSR

  --*
  --  \brief   Get Process Stack Pointer
  --  \details Returns the current value of the Process Stack Pointer (PSP).
  --  \return               PSP Register value
  --  

   --  skipped func __get_PSP

  --*
  --  \brief   Get Process Stack Pointer (non-secure)
  --  \details Returns the current value of the non-secure Process Stack Pointer (PSP) when in secure state.
  --  \return               PSP Register value
  --  

  --*
  --  \brief   Set Process Stack Pointer
  --  \details Assigns the given value to the Process Stack Pointer (PSP).
  --  \param [in]    topOfProcStack  Process Stack Pointer value to set
  --  

   --  skipped func __set_PSP

  --*
  --  \brief   Set Process Stack Pointer (non-secure)
  --  \details Assigns the given value to the non-secure Process Stack Pointer (PSP) when in secure state.
  --  \param [in]    topOfProcStack  Process Stack Pointer value to set
  --  

  --*
  --  \brief   Get Main Stack Pointer
  --  \details Returns the current value of the Main Stack Pointer (MSP).
  --  \return               MSP Register value
  --  

   --  skipped func __get_MSP

  --*
  --  \brief   Get Main Stack Pointer (non-secure)
  --  \details Returns the current value of the non-secure Main Stack Pointer (MSP) when in secure state.
  --  \return               MSP Register value
  --  

  --*
  --  \brief   Set Main Stack Pointer
  --  \details Assigns the given value to the Main Stack Pointer (MSP).
  --  \param [in]    topOfMainStack  Main Stack Pointer value to set
  --  

   --  skipped func __set_MSP

  --*
  --  \brief   Set Main Stack Pointer (non-secure)
  --  \details Assigns the given value to the non-secure Main Stack Pointer (MSP) when in secure state.
  --  \param [in]    topOfMainStack  Main Stack Pointer value to set
  --  

  --*
  --  \brief   Get Stack Pointer (non-secure)
  --  \details Returns the current value of the non-secure Stack Pointer (SP) when in secure state.
  --  \return               SP Register value
  --  

  --*
  --  \brief   Set Stack Pointer (non-secure)
  --  \details Assigns the given value to the non-secure Stack Pointer (SP) when in secure state.
  --  \param [in]    topOfStack  Stack Pointer value to set
  --  

  --*
  --  \brief   Get Priority Mask
  --  \details Returns the current state of the priority mask bit from the Priority Mask Register.
  --  \return               Priority Mask value
  --  

   --  skipped func __get_PRIMASK

  --*
  --  \brief   Get Priority Mask (non-secure)
  --  \details Returns the current state of the non-secure priority mask bit from the Priority Mask Register when in secure state.
  --  \return               Priority Mask value
  --  

  --*
  --  \brief   Set Priority Mask
  --  \details Assigns the given value to the Priority Mask Register.
  --  \param [in]    priMask  Priority Mask
  --  

   --  skipped func __set_PRIMASK

  --*
  --  \brief   Set Priority Mask (non-secure)
  --  \details Assigns the given value to the non-secure Priority Mask Register when in secure state.
  --  \param [in]    priMask  Priority Mask
  --  

  --*
  --  \brief   Get Base Priority
  --  \details Returns the current value of the Base Priority register.
  --  \return               Base Priority register value
  --  

  --*
  --  \brief   Get Base Priority (non-secure)
  --  \details Returns the current value of the non-secure Base Priority register when in secure state.
  --  \return               Base Priority register value
  --  

  --*
  --  \brief   Set Base Priority
  --  \details Assigns the given value to the Base Priority register.
  --  \param [in]    basePri  Base Priority value to set
  --  

  --*
  --  \brief   Set Base Priority (non-secure)
  --  \details Assigns the given value to the non-secure Base Priority register when in secure state.
  --  \param [in]    basePri  Base Priority value to set
  --  

  --*
  --  \brief   Set Base Priority with condition
  --  \details Assigns the given value to the Base Priority register only if BASEPRI masking is disabled,
  --           or the new value increases the BASEPRI priority level.
  --  \param [in]    basePri  Base Priority value to set
  --  

  --*
  --  \brief   Get Fault Mask
  --  \details Returns the current value of the Fault Mask register.
  --  \return               Fault Mask register value
  --  

  --*
  --  \brief   Get Fault Mask (non-secure)
  --  \details Returns the current value of the non-secure Fault Mask register when in secure state.
  --  \return               Fault Mask register value
  --  

  --*
  --  \brief   Set Fault Mask
  --  \details Assigns the given value to the Fault Mask register.
  --  \param [in]    faultMask  Fault Mask value to set
  --  

  --*
  --  \brief   Set Fault Mask (non-secure)
  --  \details Assigns the given value to the non-secure Fault Mask register when in secure state.
  --  \param [in]    faultMask  Fault Mask value to set
  --  

  --*
  --  \brief   Get Process Stack Pointer Limit
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence zero is returned always in non-secure
  --  mode.
  --  \details Returns the current value of the Process Stack Pointer Limit (PSPLIM).
  --  \return               PSPLIM Register value
  --  

  -- without main extensions, the non-secure PSPLIM is RAZ/WI  
  --*
  --  \brief   Get Process Stack Pointer Limit (non-secure)
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence zero is returned always.
  --  \details Returns the current value of the non-secure Process Stack Pointer Limit (PSPLIM) when in secure state.
  --  \return               PSPLIM Register value
  --  

  -- without main extensions, the non-secure PSPLIM is RAZ/WI  
  --*
  --  \brief   Set Process Stack Pointer Limit
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence the write is silently ignored in non-secure
  --  mode.
  --  \details Assigns the given value to the Process Stack Pointer Limit (PSPLIM).
  --  \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
  --  

  -- without main extensions, the non-secure PSPLIM is RAZ/WI  
  --*
  --  \brief   Set Process Stack Pointer (non-secure)
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence the write is silently ignored.
  --  \details Assigns the given value to the non-secure Process Stack Pointer Limit (PSPLIM) when in secure state.
  --  \param [in]    ProcStackPtrLimit  Process Stack Pointer Limit value to set
  --  

  -- without main extensions, the non-secure PSPLIM is RAZ/WI  
  --*
  --  \brief   Get Main Stack Pointer Limit
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence zero is returned always.
  --  \details Returns the current value of the Main Stack Pointer Limit (MSPLIM).
  --  \return               MSPLIM Register value
  --  

  -- without main extensions, the non-secure MSPLIM is RAZ/WI  
  --*
  --  \brief   Get Main Stack Pointer Limit (non-secure)
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence zero is returned always.
  --  \details Returns the current value of the non-secure Main Stack Pointer Limit(MSPLIM) when in secure state.
  --  \return               MSPLIM Register value
  --  

  -- without main extensions, the non-secure MSPLIM is RAZ/WI  
  --*
  --  \brief   Set Main Stack Pointer Limit
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence the write is silently ignored.
  --  \details Assigns the given value to the Main Stack Pointer Limit (MSPLIM).
  --  \param [in]    MainStackPtrLimit  Main Stack Pointer Limit value to set
  --  

  -- without main extensions, the non-secure MSPLIM is RAZ/WI  
  --*
  --  \brief   Set Main Stack Pointer Limit (non-secure)
  --  Devices without ARMv8-M Main Extensions (i.e. Cortex-M23) lack the non-secure
  --  Stack Pointer Limit register hence the write is silently ignored.
  --  \details Assigns the given value to the non-secure Main Stack Pointer Limit (MSPLIM) when in secure state.
  --  \param [in]    MainStackPtrLimit  Main Stack Pointer value to set
  --  

  -- without main extensions, the non-secure MSPLIM is RAZ/WI  
  --* @} end of CMSIS_Core_RegAccFunctions  
end cmsis_gcc_m_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
