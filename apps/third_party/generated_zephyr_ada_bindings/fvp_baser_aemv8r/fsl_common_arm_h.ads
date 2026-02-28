pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with MKL25Z4_h;
with fsl_common_h;
with sys_ustdint_h;

package fsl_common_arm_h is

   --  arg-macro: procedure SDK_ATOMIC_LOCAL_ADD (addr, val)
   --    do { uint32_t s_atomicOldInt; s_atomicOldInt := DisableGlobalIRQ(); *(addr) += (val); EnableGlobalIRQ(s_atomicOldInt); } while (false)
   --  arg-macro: procedure SDK_ATOMIC_LOCAL_SUB (addr, val)
   --    do { uint32_t s_atomicOldInt; s_atomicOldInt := DisableGlobalIRQ(); *(addr) -= (val); EnableGlobalIRQ(s_atomicOldInt); } while (false)
   --  arg-macro: procedure SDK_ATOMIC_LOCAL_SET (addr, bits)
   --    do { uint32_t s_atomicOldInt; s_atomicOldInt := DisableGlobalIRQ(); *(addr) |= (bits); EnableGlobalIRQ(s_atomicOldInt); } while (false)
   --  arg-macro: procedure SDK_ATOMIC_LOCAL_CLEAR (addr, bits)
   --    do { uint32_t s_atomicOldInt; s_atomicOldInt := DisableGlobalIRQ(); *(addr) &= ~(bits); EnableGlobalIRQ(s_atomicOldInt); } while (false)
   --  arg-macro: procedure SDK_ATOMIC_LOCAL_TOGGLE (addr, bits)
   --    do { uint32_t s_atomicOldInt; s_atomicOldInt := DisableGlobalIRQ(); *(addr) ^= (bits); EnableGlobalIRQ(s_atomicOldInt); } while (false)
   --  arg-macro: procedure SDK_ATOMIC_LOCAL_CLEAR_AND_SET (addr, clearBits, setBits)
   --    do { uint32_t s_atomicOldInt; s_atomicOldInt := DisableGlobalIRQ(); *(addr) := (*(addr) and ~(clearBits)) or (setBits); EnableGlobalIRQ(s_atomicOldInt); } while (false)
   --  arg-macro: procedure SDK_ATOMIC_LOCAL_COMPARE_AND_SET (addr, expected, newValue)
   --    _SDK_AtomicLocalCompareAndSet((uint32_t *)addr, (uint32_t)expected, (uint32_t)newValue)
   --  arg-macro: procedure SDK_ATOMIC_LOCAL_TEST_AND_SET (addr, newValue)
   --    _SDK_AtomicTestAndSet((uint32_t *)addr, (uint32_t)newValue)
   --  arg-macro: function USEC_TO_COUNT (us, clockFreqInHz)
   --    return uint64_t)(((uint64_t)(us) * (clockFreqInHz)) / 1000000;
   --  arg-macro: function COUNT_TO_USEC (count, clockFreqInHz)
   --    return uint64_t)((uint64_t)(count)*1000000 / (clockFreqInHz);
   --  arg-macro: function MSEC_TO_COUNT (ms, clockFreqInHz)
   --    return uint64_t)((uint64_t)(ms) * (clockFreqInHz) / 1000;
   --  arg-macro: function COUNT_TO_MSEC (count, clockFreqInHz)
   --    return uint64_t)((uint64_t)(count)*1000 / (clockFreqInHz);
   --  arg-macro: procedure SDK_ALIGN (var, alignbytes)
   --    var __attribute__((aligned(alignbytes)))
   --  arg-macro: function SDK_SIZEALIGN (var, alignbytes)
   --    return (unsigned int)((var) + ((alignbytes)-1)) and (unsigned int)(~(unsigned int)((alignbytes)-1));
   --  arg-macro: procedure AT_NONCACHEABLE_SECTION (var)
   --    var
   --  arg-macro: procedure AT_NONCACHEABLE_SECTION_ALIGN (var, alignbytes)
   --    SDK_ALIGN(var, alignbytes)
   --  arg-macro: procedure AT_NONCACHEABLE_SECTION_INIT (var)
   --    var
   --  arg-macro: procedure AT_NONCACHEABLE_SECTION_ALIGN_INIT (var, alignbytes)
   --    SDK_ALIGN(var, alignbytes)
   --  arg-macro: procedure AT_CACHE_LINE_SECTION (var)
   --    __attribute__((section("CacheLineData,""aw"",%nobits @"))) CACHE_LINE_DATA(var)
   --  arg-macro: procedure AT_CACHE_LINE_SECTION_INIT (var)
   --    __attribute__((section("CacheLineData.init"))) CACHE_LINE_DATA(var)
   --  arg-macro: procedure AT_QUICKACCESS_SECTION_CODE (func)
   --    __attribute__((section("CodeQuickAccess"), __noinline__)) func
   --  arg-macro: procedure AT_QUICKACCESS_SECTION_DATA (var)
   --    __attribute__((section("DataQuickAccess"))) var
   --  arg-macro: procedure AT_QUICKACCESS_SECTION_DATA_ALIGN (var, alignbytes)
   --    __attribute__((section("DataQuickAccess"))) var __attribute__((aligned(alignbytes)))
   --  arg-macro: procedure RAMFUNCTION_SECTION_CODE (func)
   --    __attribute__((section("RamFunction"))) func
   --  arg-macro: function MSDK_REG_SECURE_ADDR (x)
   --    return x;
   --  arg-macro: function MSDK_REG_NONSECURE_ADDR (x)
   --    return x;
   MSDK_HAS_DWT_CYCCNT : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:636
   --  unsupported macro: MSDK_INVALID_IRQ_HANDLER UINT32_MAX

  -- * Copyright (c) 2015-2016, Freescale Semiconductor, Inc.
  -- * Copyright 2016-2022, 2024-2025 NXP
  -- * All rights reserved.
  -- *
  -- * SPDX-License-Identifier: BSD-3-Clause
  --  

  -- * For CMSIS pack RTE.
  -- * CMSIS pack RTE generates "RTC_Components.h" which contains the statements
  -- * of the related <RTE_Components_h> element for all selected software components.
  --  

  --!
  -- * @addtogroup ksdk_common
  -- * @{
  --  

  --! @name Atomic modification
  -- *
  -- * These macros are used for atomic access, such as read-modify-write
  -- * to the peripheral registers.
  -- *
  -- * Take @ref SDK_ATOMIC_LOCAL_CLEAR_AND_SET as an example: the parameter @c addr
  -- * means the address of the peripheral register or variable you want to modify
  -- * atomically, the parameter @c clearBits is the bits to clear, the parameter
  -- * @c setBits it the bits to set.
  -- * For example, to set a 32-bit register bit1:bit0 to 0b10, use like this:
  -- *
  -- * @code
  --   volatile uint32_t * reg = (volatile uint32_t *)REG_ADDR;
  --   SDK_ATOMIC_LOCAL_CLEAR_AND_SET(reg, 0x03, 0x02);
  --   @endcode
  -- *
  -- * In this example, the register bit1:bit0 are cleared and bit1 is set, as a result,
  -- * register bit1:bit0 = 0b10.
  -- *
  -- * @note For the platforms don't support exclusive load and store, these macros
  -- * disable the global interrupt to pretect the modification.
  -- *
  -- * @note These macros only guarantee the local processor atomic operations. For
  -- * the multi-processor devices, use hardware semaphore such as SEMA42 to
  -- * guarantee exclusive access if necessary.
  -- *
  -- * @{
  --  

  --!
  -- * @def SDK_ATOMIC_LOCAL_ADD(addr, val)
  -- * Add value \a val from the variable at address \a address.
  -- *
  -- * @def SDK_ATOMIC_LOCAL_SUB(addr, val)
  -- * Subtract value \a val to the variable at address \a address.
  -- *
  -- * @def SDK_ATOMIC_LOCAL_SET(addr, bits)
  -- * Set the bits specifiled by \a bits to the variable at address \a address.
  -- *
  -- * @def SDK_ATOMIC_LOCAL_CLEAR(addr, bits)
  -- * Clear the bits specifiled by \a bits to the variable at address \a address.
  -- *
  -- * @def SDK_ATOMIC_LOCAL_TOGGLE(addr, bits)
  -- * Toggle the bits specifiled by \a bits to the variable at address \a address.
  -- *
  -- * @def SDK_ATOMIC_LOCAL_CLEAR_AND_SET(addr, clearBits, setBits)
  -- * For the variable at address \a address, clear the bits specifiled by \a clearBits
  -- * and set the bits specifiled by \a setBits.
  -- * @def SDK_ATOMIC_LOCAL_COMPARE_AND_SET(addr, expected, newValue)
  -- * For the variable at address \a address, check whether the value equal to \a expected. If value same as \a expected
  -- * then update \a newValue to address and return \b true , else return \b false .
  -- *
  -- * @def SDK_ATOMIC_LOCAL_TEST_AND_SET(addr, newValue)
  -- * For the variable at address \a address, set as \a newValue value and return old value.
  --  

  -- clang-format off  
  -- clang-format on  
  -- If the LDREX and STREX are supported, use them.  
  --! @}  
  --! @name Timer utilities  
  --! @{  
  --! Macro to convert a microsecond period to raw count value  
  --! Macro to convert a raw count value to microsecond  
  --! Macro to convert a millisecond period to raw count value  
  --! Macro to convert a raw count value to millisecond  
  --! @}  
  --! @name ISR exit barrier
  -- * @{
  -- *
  -- * ARM errata 838869, affects Cortex-M4, Cortex-M4F Store immediate overlapping
  -- * exception return operation might vector to incorrect interrupt.
  -- * For Cortex-M7, if core speed much faster than peripheral register write speed,
  -- * the peripheral interrupt flags may be still set after exiting ISR, this results to
  -- * the same error similar with errata 83869.
  --  

  --! @}  
  --! @name Alignment variable definition macros  
  --! @{  
  -- * Workaround to disable MISRA C message suppress warnings for IAR compiler.
  -- * http:/ /supp.iar.com/Support/?note=24725
  --  

  --! Macro to define a variable with alignbytes alignment  
  --! Macro to define a variable with alignbytes alignment  
  --! Macro to define a variable with alignbytes alignment  
  --! Macro to define a variable with L1 d-cache line size alignment  
  --! Macro to define a variable with L2 cache line size alignment  
  --! Macro to change a value to a given size aligned value  
  --! @}  
  --!
  -- * @name Non-cacheable region definition macros
  -- *
  -- * For initialized non-zero non-cacheable variables, please use "AT_NONCACHEABLE_SECTION_INIT(var) ={xx};" or
  -- * "AT_NONCACHEABLE_SECTION_ALIGN_INIT(var) ={xx};" in your projects to define them. For zero-inited non-cacheable
  -- * variables, please use "AT_NONCACHEABLE_SECTION(var);" or "AT_NONCACHEABLE_SECTION_ALIGN(var);" to define them,
  -- * these zero-inited variables will be initialized to zero in system startup.
  -- *
  -- * @note For GCC, when the non-cacheable section is required, please define "__STARTUP_INITIALIZE_NONCACHEDATA"
  -- * in your projects to make sure the non-cacheable section variables will be initialized in system startup.
  -- *
  -- * @{
  --  

  --!
  -- * @def AT_NONCACHEABLE_SECTION(var)
  -- * Define a variable \a var, and place it in non-cacheable section.
  -- *
  -- * @def AT_NONCACHEABLE_SECTION_ALIGN(var, alignbytes)
  -- * Define a variable \a var, and place it in non-cacheable section, the start address
  -- * of the variable is aligned to \a alignbytes.
  -- *
  -- * @def AT_NONCACHEABLE_SECTION_INIT(var)
  -- * Define a variable \a var with initial value, and place it in non-cacheable section.
  -- *
  -- * @def AT_NONCACHEABLE_SECTION_ALIGN_INIT(var, alignbytes)
  -- * Define a variable \a var with initial value, and place it in non-cacheable section,
  -- * the start address of the variable is aligned to \a alignbytes.
  --  

  -- For GCC, when the non-cacheable section is required, please define "__STARTUP_INITIALIZE_NONCACHEDATA"
  -- * in your projects to make sure the non-cacheable section variables will be initialized in system startup.
  --  

  --! @}  
  --!
  -- * @name Cache line region definition macros
  -- *
  -- * For initialized non-zero cache line variables, please use "AT_CACHE_LINE_SECTION_INIT(var) ={xx};"
  -- * For zero-inited cache line variables, please use "AT_CACHE_LINE_SECTION(var);"
  -- *
  -- * @note This section is applicable to cached memory only, say external sdram, cached ocram, etc.
  -- *       Please avoid to use this section for none-cached memory, say TCM.
  -- *       So only those targets, which utilize the cached memory, say flexspi_nor_sdram_debug, support 
  -- *       this kind of section.
  -- * @{
  --  

  --!
  -- * @def AT_CACHE_LINE_SECTION(var)
  -- * Define a variable \a var, which is cache line size aligned and be placed in CacheLineData section.
  -- *
  -- * @def AT_CACHE_LINE_SECTION_INIT(var)
  -- * Define a variable \a var with initial value, which is cache line size aligned and be placed in CacheLineData.init section.
  --  

  --! @}  
  --!
  -- * @name Time sensitive region
  -- * @{
  --  

  --!
  -- * @def AT_QUICKACCESS_SECTION_CODE(func)
  -- * Place function in a section which can be accessed quickly by core.
  -- *
  -- * @def AT_QUICKACCESS_SECTION_DATA(var)
  -- * Place data in a section which can be accessed quickly by core.
  -- *
  -- * @def AT_QUICKACCESS_SECTION_DATA_ALIGN(var, alignbytes)
  -- * Place data in a section which can be accessed quickly by core, and the variable
  -- * address is set to align with \a alignbytes.
  --  

  --! @}  
  --!
  -- * @name Ram Function
  -- * @{
  -- *
  -- * @def RAMFUNCTION_SECTION_CODE(func)
  -- * Place function in ram.
  --  

  --! @}  
  --!
  -- * @def MSDK_REG_SECURE_ADDR(x)
  -- * Convert the register address to the one used in secure mode.
  -- *
  -- * @def MSDK_REG_NONSECURE_ADDR(x)
  -- * Convert the register address to the one used in non-secure mode.
  --  

  --!
  -- * @brief The chip supports DWT CYCCNT or not.
  --  

  --!
  -- * @brief Invalid IRQ handler address.
  --  

  -- * The fsl_clock.h is included here because it needs MAKE_VERSION/MAKE_STATUS/status_t
  -- * defined in previous of this file.
  --  

  -- * Chip level peripheral reset API, for MCUs that implement peripheral reset control external to a peripheral
  --  

  --******************************************************************************
  -- * API
  -- ***************************************************************************** 

  --!
  -- * @brief Enable specific interrupt.
  -- *
  -- * Enable LEVEL1 interrupt. For some devices, there might be multiple interrupt
  -- * levels. For example, there are NVIC and intmux. Here the interrupts connected
  -- * to NVIC are the LEVEL1 interrupts, because they are routed to the core directly.
  -- * The interrupts connected to intmux are the LEVEL2 interrupts, they are routed
  -- * to NVIC first then routed to core.
  -- *
  -- * This function only enables the LEVEL1 interrupts. The number of LEVEL1 interrupts
  -- * is indicated by the feature macro FSL_FEATURE_NUMBER_OF_LEVEL1_INT_VECTORS.
  -- *
  -- * @param interrupt The IRQ number.
  -- * @retval kStatus_Success Interrupt enabled successfully
  -- * @retval kStatus_Fail Failed to enable the interrupt
  --  

   function EnableIRQ (interrupt : MKL25Z4_h.IRQn_Type) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:691
   with Import => True, 
        Convention => C, 
        External_Name => "EnableIRQ";

  --!
  -- * @brief Disable specific interrupt.
  -- *
  -- * Disable LEVEL1 interrupt. For some devices, there might be multiple interrupt
  -- * levels. For example, there are NVIC and intmux. Here the interrupts connected
  -- * to NVIC are the LEVEL1 interrupts, because they are routed to the core directly.
  -- * The interrupts connected to intmux are the LEVEL2 interrupts, they are routed
  -- * to NVIC first then routed to core.
  -- *
  -- * This function only disables the LEVEL1 interrupts. The number of LEVEL1 interrupts
  -- * is indicated by the feature macro FSL_FEATURE_NUMBER_OF_LEVEL1_INT_VECTORS.
  -- *
  -- * @param interrupt The IRQ number.
  -- * @retval kStatus_Success Interrupt disabled successfully
  -- * @retval kStatus_Fail Failed to disable the interrupt
  --  

   function DisableIRQ (interrupt : MKL25Z4_h.IRQn_Type) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:741
   with Import => True, 
        Convention => C, 
        External_Name => "DisableIRQ";

  --!
  -- * @brief Enable the IRQ, and also set the interrupt priority.
  -- *
  -- * Only handle LEVEL1 interrupt. For some devices, there might be multiple interrupt
  -- * levels. For example, there are NVIC and intmux. Here the interrupts connected
  -- * to NVIC are the LEVEL1 interrupts, because they are routed to the core directly.
  -- * The interrupts connected to intmux are the LEVEL2 interrupts, they are routed
  -- * to NVIC first then routed to core.
  -- *
  -- * This function only handles the LEVEL1 interrupts. The number of LEVEL1 interrupts
  -- * is indicated by the feature macro FSL_FEATURE_NUMBER_OF_LEVEL1_INT_VECTORS.
  -- *
  -- * @param interrupt The IRQ to Enable.
  -- * @param priNum Priority number set to interrupt controller register.
  -- * @retval kStatus_Success Interrupt priority set successfully
  -- * @retval kStatus_Fail Failed to set the interrupt priority.
  --  

   function EnableIRQWithPriority (interrupt : MKL25Z4_h.IRQn_Type; priNum : sys_ustdint_h.uint8_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:792
   with Import => True, 
        Convention => C, 
        External_Name => "EnableIRQWithPriority";

  --!
  -- * @brief Set the IRQ priority.
  -- *
  -- * Only handle LEVEL1 interrupt. For some devices, there might be multiple interrupt
  -- * levels. For example, there are NVIC and intmux. Here the interrupts connected
  -- * to NVIC are the LEVEL1 interrupts, because they are routed to the core directly.
  -- * The interrupts connected to intmux are the LEVEL2 interrupts, they are routed
  -- * to NVIC first then routed to core.
  -- *
  -- * This function only handles the LEVEL1 interrupts. The number of LEVEL1 interrupts
  -- * is indicated by the feature macro FSL_FEATURE_NUMBER_OF_LEVEL1_INT_VECTORS.
  -- *
  -- * @param interrupt The IRQ to set.
  -- * @param priNum Priority number set to interrupt controller register.
  -- *
  -- * @retval kStatus_Success Interrupt priority set successfully
  -- * @retval kStatus_Fail Failed to set the interrupt priority.
  --  

   function IRQ_SetPriority (interrupt : MKL25Z4_h.IRQn_Type; priNum : sys_ustdint_h.uint8_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:840
   with Import => True, 
        Convention => C, 
        External_Name => "IRQ_SetPriority";

  --!
  -- * @brief Clear the pending IRQ flag.
  -- *
  -- * Only handle LEVEL1 interrupt. For some devices, there might be multiple interrupt
  -- * levels. For example, there are NVIC and intmux. Here the interrupts connected
  -- * to NVIC are the LEVEL1 interrupts, because they are routed to the core directly.
  -- * The interrupts connected to intmux are the LEVEL2 interrupts, they are routed
  -- * to NVIC first then routed to core.
  -- *
  -- * This function only handles the LEVEL1 interrupts. The number of LEVEL1 interrupts
  -- * is indicated by the feature macro FSL_FEATURE_NUMBER_OF_LEVEL1_INT_VECTORS.
  -- *
  -- * @param interrupt The flag which IRQ to clear.
  -- *
  -- * @retval kStatus_Success Interrupt priority set successfully
  -- * @retval kStatus_Fail Failed to set the interrupt priority.
  --  

   function IRQ_ClearPendingIRQ (interrupt : MKL25Z4_h.IRQn_Type) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:885
   with Import => True, 
        Convention => C, 
        External_Name => "IRQ_ClearPendingIRQ";

  --!
  -- * @brief Disable the global IRQ
  -- *
  -- * Disable the global interrupt and return the current primask register. User is required to provided the primask
  -- * register for the EnableGlobalIRQ().
  -- *
  -- * @return Current primask value.
  --  

   function DisableGlobalIRQ return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:921
   with Import => True, 
        Convention => C, 
        External_Name => "DisableGlobalIRQ";

  --!
  -- * @brief Enable the global IRQ
  -- *
  -- * Set the primask register with the provided primask value but not just enable the primask. The idea is for the
  -- * convenience of integration of RTOS. some RTOS get its own management mechanism of primask. User is required to
  -- * use the EnableGlobalIRQ() and DisableGlobalIRQ() in pair.
  -- *
  -- * @param primask value of primask register to be restored. The primask value is supposed to be provided by the
  -- * DisableGlobalIRQ().
  --  

   procedure EnableGlobalIRQ (primask : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common_arm.h:947
   with Import => True, 
        Convention => C, 
        External_Name => "EnableGlobalIRQ";

  --!
  -- * @brief install IRQ handler
  -- *
  -- * @param irq IRQ number
  -- * @param irqHandler IRQ handler address
  -- * @return The old IRQ handler address, if the input @p irq is invalid, then
  -- * return value is @ref MSDK_INVALID_IRQ_HANDLER.
  --  

  -- * When FSL_FEATURE_POWERLIB_EXTEND is defined to non-zero value,
  -- * powerlib should be used instead of these functions.
  --  

  --!
  -- * @brief Enable specific interrupt for wake-up from deep-sleep mode.
  -- *
  -- * Enable the interrupt for wake-up from deep sleep mode.
  -- * Some interrupts are typically used in sleep mode only and will not occur during
  -- * deep-sleep mode because relevant clocks are stopped. However, it is possible to enable
  -- * those clocks (significantly increasing power consumption in the reduced power mode),
  -- * making these wake-ups possible.
  -- *
  -- * @note This function also enables the interrupt in the NVIC (EnableIRQ() is called internaly).
  -- *
  -- * @param interrupt The IRQ number.
  --  

  --!
  -- * @brief Disable specific interrupt for wake-up from deep-sleep mode.
  -- *
  -- * Disable the interrupt for wake-up from deep sleep mode.
  -- * Some interrupts are typically used in sleep mode only and will not occur during
  -- * deep-sleep mode because relevant clocks are stopped. However, it is possible to enable
  -- * those clocks (significantly increasing power consumption in the reduced power mode),
  -- * making these wake-ups possible.
  -- *
  -- * @note This function also disables the interrupt in the NVIC (DisableIRQ() is called internaly).
  -- *
  -- * @param interrupt The IRQ number.
  --  

  --!
  -- * @brief Enable the counter to get CPU cycles.
  --  

  --!
  -- * @brief Get the current CPU cycle count.
  -- *
  -- * @return Current CPU cycle count.
  --  

  --!< Function to get the current time stamp.  
  --!
  -- * @rief Initialize the context of the critical section measurement and assign
  -- * the function to get the current timestamp.
  -- *
  -- * @param getTimestamp The function to get the current timestamp.
  --  

  --!
  -- * @brief Disable the global IRQ with critical section ID
  -- *
  -- * Extended function of DisableGlobalIRQ. Apart from the standard operation, also check
  -- * the id of the protected critical section and mark the begining for timer.
  -- * User is required to provided the primask register for the EnableGlobalIRQEx.
  -- *
  -- * @param id The id for critical section.
  -- * @return Current primask value.
  --  

  --!
  -- * @brief Enable the global IRQ and calculate the execution time of critical section
  -- *
  -- * Extended function of EnableGlobalIRQ. Apart from the standard operation, also
  -- * marks the exit of the critical section and calculate the execution time for the section.
  -- * User is required to use the DisableGlobalIRQEx and EnableGlobalIRQEx in pair.
  -- *
  -- * @param primask value of primask register to be restored. The primask value is supposed to be provided by the
  -- * DisableGlobalIRQEx().
  --  

  -- clang-format off  
  -- clang-format on  
   --  skipped func _SDK_AtomicLocalCompareAndSet

   --  skipped func _SDK_AtomicTestAndSet

  --! @}  
end fsl_common_arm_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
