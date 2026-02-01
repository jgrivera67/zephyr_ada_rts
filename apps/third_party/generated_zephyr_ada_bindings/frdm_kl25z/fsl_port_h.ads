pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
limited with MKL25Z4_h;
with sys_ustdint_h;

package fsl_port_h is

   FSL_COMPONENT_ID : aliased constant String := "platform.drivers.port" & ASCII.NUL;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:24
   --  unsupported macro: FSL_PORT_DRIVER_VERSION (MAKE_VERSION(2, 5, 1))

  -- * Copyright (c) 2015, Freescale Semiconductor, Inc.
  -- * Copyright 2016-2022, 2024-2025 NXP
  -- * All rights reserved.
  -- *
  -- * SPDX-License-Identifier: BSD-3-Clause
  --  

  --!
  -- * @addtogroup port
  -- * @{
  --  

  --******************************************************************************
  -- * Definitions
  -- ***************************************************************************** 

  -- Component ID definition, used by tools.  
  --! @name Driver version  
  --! @{  
  --! @brief PORT driver version.  
  --! @}  
  --! @brief Internal resistor pull feature selection  
   subtype u_port_pull is unsigned;
   u_port_pull_kPORT_PullDisable : constant u_port_pull := 0;
   u_port_pull_kPORT_PullDown : constant u_port_pull := 2;
   u_port_pull_kPORT_PullUp : constant u_port_pull := 3;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:35

  --!< Internal pull-up/down resistor is disabled.  
  --!< Internal pull-down resistor is enabled.  
  --!< Internal pull-up resistor is enabled.  
  --! @brief Internal resistor pull value selection  
  --!< Low internal pull resistor value is selected.  
  --!< High internal pull resistor value is selected.  
  --! @brief Slew rate selection  
   type u_port_slew_rate is 
     (kPORT_FastSlewRate,
      kPORT_SlowSlewRate)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:54

  --!< Fast slew rate is configured.  
  --!< Slow slew rate is configured.  
  --! @brief Open Drain feature enable/disable  
  --!< Open drain output is disabled.  
  --!< Open drain output is enabled.  
  --! @brief Passive filter feature enable/disable  
   type u_port_passive_filter_enable is 
     (kPORT_PassiveFilterDisable,
      kPORT_PassiveFilterEnable)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:72

  --!< Passive input filter is disabled.  
  --!< Passive input filter is enabled.  
  --! @brief Configures the drive strength.  
   type u_port_drive_strength is 
     (kPORT_LowDriveStrength,
      kPORT_HighDriveStrength)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:81

  --!< Low-drive strength is configured.  
  --!< High-drive strength is configured.  
  --! @brief Configures the drive strength1.  
  --!< Normal drive strength  
  --!< Double drive strength  
  --! @brief input buffer disable/enable.  
  --!< Digital input is disabled  
  --!< Digital input is enabled  
  --! @brief Digital input is not inverted or it is inverted.  
  --!< Digital input is not inverted  
  --!< Digital input is inverted  
  --! @brief Unlock/lock the pin control register field[15:0]  
  --!< Pin Control Register fields [15:0] are not locked.  
  --!< Pin Control Register fields [15:0] are locked.  
  --! @brief Pin mux selection  
   subtype u_port_mux is unsigned;
   u_port_mux_kPORT_PinDisabledOrAnalog : constant u_port_mux := 0;
   u_port_mux_kPORT_MuxAsGpio : constant u_port_mux := 1;
   u_port_mux_kPORT_MuxAlt0 : constant u_port_mux := 0;
   u_port_mux_kPORT_MuxAlt1 : constant u_port_mux := 1;
   u_port_mux_kPORT_MuxAlt2 : constant u_port_mux := 2;
   u_port_mux_kPORT_MuxAlt3 : constant u_port_mux := 3;
   u_port_mux_kPORT_MuxAlt4 : constant u_port_mux := 4;
   u_port_mux_kPORT_MuxAlt5 : constant u_port_mux := 5;
   u_port_mux_kPORT_MuxAlt6 : constant u_port_mux := 6;
   u_port_mux_kPORT_MuxAlt7 : constant u_port_mux := 7;
   u_port_mux_kPORT_MuxAlt8 : constant u_port_mux := 8;
   u_port_mux_kPORT_MuxAlt9 : constant u_port_mux := 9;
   u_port_mux_kPORT_MuxAlt10 : constant u_port_mux := 10;
   u_port_mux_kPORT_MuxAlt11 : constant u_port_mux := 11;
   u_port_mux_kPORT_MuxAlt12 : constant u_port_mux := 12;
   u_port_mux_kPORT_MuxAlt13 : constant u_port_mux := 13;
   u_port_mux_kPORT_MuxAlt14 : constant u_port_mux := 14;
   u_port_mux_kPORT_MuxAlt15 : constant u_port_mux := 15;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:126

  --!< Corresponding pin is configured as GPIO.  
  --!< Corresponding pin is disabled, but is used as an analog pin.  
  --!< Corresponding pin is configured as GPIO.  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
  --!< Chip-specific  
   subtype port_mux_t is u_port_mux;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:150

  --! @brief Configures the interrupt generation condition.  
   subtype u_port_interrupt is unsigned;
   u_port_interrupt_kPORT_InterruptOrDMADisabled : constant u_port_interrupt := 0;
   u_port_interrupt_kPORT_DMARisingEdge : constant u_port_interrupt := 1;
   u_port_interrupt_kPORT_DMAFallingEdge : constant u_port_interrupt := 2;
   u_port_interrupt_kPORT_DMAEitherEdge : constant u_port_interrupt := 3;
   u_port_interrupt_kPORT_InterruptLogicZero : constant u_port_interrupt := 8;
   u_port_interrupt_kPORT_InterruptRisingEdge : constant u_port_interrupt := 9;
   u_port_interrupt_kPORT_InterruptFallingEdge : constant u_port_interrupt := 10;
   u_port_interrupt_kPORT_InterruptEitherEdge : constant u_port_interrupt := 11;
   u_port_interrupt_kPORT_InterruptLogicOne : constant u_port_interrupt := 12;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:155

  --!< Interrupt/DMA request is disabled.  
  --!< DMA request on rising edge.  
  --!< DMA request on falling edge.  
  --!< DMA request on either edge.  
  --!< Flag sets on rising edge.  
  --!< Flag sets on falling edge.  
  --!< Flag sets on either edge.  
  --!< Interrupt when logic zero.  
  --!< Interrupt on rising edge.  
  --!< Interrupt on falling edge.  
  --!< Interrupt on either edge.  
  --!< Interrupt when logic one.  
  --!< Enable active high-trigger output.  
  --!< Enable active low-trigger output.  
   subtype port_interrupt_t is u_port_interrupt;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:177

  --! @brief Digital filter clock source selection  
  --!< Digital filters are clocked by the bus clock.  
  --!< Digital filters are clocked by the 1 kHz LPO clock.  
  --! @brief PORT digital filter feature configuration definition  
  --!< Set digital filter width  
  --!< Set digital filter clockSource  
  --! @brief PORT pin configuration structure  
  --!< No-pull/pull-down/pull-up select  
   type u_port_pin_config is record
      pullSelect : Extensions.Unsigned_2;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:201
      slewRate : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:211
      anon7786 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:217
      passiveFilterEnable : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:221
      anon7788 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:229
      driveStrength : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:233
      anon7790 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:241
      mux : Extensions.Unsigned_3;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:245
      anon7792 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:246
      anon7793 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:256
      anon7794 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:262
      anon7795 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:265
      anon7796 : Extensions.Unsigned_1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:270
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 2;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:198

  --!< Pull value select  
  --!< Fast/slow slew rate Configure  
  --!< Passive filter enable/disable  
  --!< Open drain enable/disable  
  --!< Fast/slow drive strength configure  
  --!< Normal/Double drive strength enable/disable  
  --!< Pin mux Configure  
  --!< Pin mux Configure  
  --!< Input Buffer Configure  
  --!< Invert Input Configure  
  --!< Lock/unlock the PCR field[15:0]  
   subtype port_pin_config_t is u_port_pin_config;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:272

  --! @brief PORT version information.  
  --!< Feature Specification Number.  
  --!< Minor Version Number.  
  --!< Major Version Number.  
  --! @brief PORT voltage range.  
  --!< Port voltage range is 1.71 V - 3.6 V.  
  --!< Port voltage range is 2.70 V - 3.6 V.  
  --******************************************************************************
  -- * API
  -- ***************************************************************************** 

  --! @name Configuration  
  --! @{  
  --!
  -- * @brief Get PORT version information.
  -- *
  -- * @param base PORT peripheral base pointer
  -- * @param info PORT version information
  --  

  --!
  -- * @brief Get PORT version information.
  -- *
  -- * @note : PORTA_CONFIG[RANGE] controls the voltage ranges of Port A, B, and C. Read or write PORTB_CONFIG[RANGE] and
  -- *         PORTC_CONFIG[RANGE] does not take effect.
  -- *
  -- * @param base PORT peripheral base pointer
  -- * @param range port voltage range
  --  

  --!
  -- * @brief Sets the port PCR register.
  -- *
  -- * This is an example to define an input pin or output pin PCR configuration.
  -- * @code
  -- * // Define a digital input pin PCR configuration
  -- * port_pin_config_t config = {
  -- *      kPORT_PullUp,
  -- *      kPORT_FastSlewRate,
  -- *      kPORT_PassiveFilterDisable,
  -- *      kPORT_OpenDrainDisable,
  -- *      kPORT_LowDriveStrength,
  -- *      kPORT_MuxAsGpio,
  -- *      kPORT_UnLockRegister,
  -- * };
  -- * @endcode
  -- *
  -- * @param base   PORT peripheral base pointer.
  -- * @param pin    PORT pin number.
  -- * @param config PORT PCR register configuration structure.
  --  

   procedure PORT_SetPinConfig
     (base : access MKL25Z4_h.PORT_Type;
      pin : sys_ustdint_h.uint32_t;
      config : access constant port_pin_config_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "PORT_SetPinConfig";

  --!
  -- * @brief Sets the port PCR register for multiple pins.
  -- *
  -- * This is an example to define input pins or output pins PCR configuration.
  -- * @code
  -- * Define a digital input pin PCR configuration
  -- * port_pin_config_t config = {
  -- *      kPORT_PullUp ,
  -- *      kPORT_PullEnable,
  -- *      kPORT_FastSlewRate,
  -- *      kPORT_PassiveFilterDisable,
  -- *      kPORT_OpenDrainDisable,
  -- *      kPORT_LowDriveStrength,
  -- *      kPORT_MuxAsGpio,
  -- *      kPORT_UnlockRegister,
  -- * };
  -- * @endcode
  -- *
  -- * @param base   PORT peripheral base pointer.
  -- * @param mask   PORT pin number macro.
  -- * @param config PORT PCR register configuration structure.
  --  

   procedure PORT_SetMultiplePinsConfig
     (base : access MKL25Z4_h.PORT_Type;
      mask : sys_ustdint_h.uint32_t;
      config : access constant port_pin_config_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "PORT_SetMultiplePinsConfig";

  --!
  -- * @brief Sets the port interrupt configuration in PCR register for multiple pins.
  -- *
  -- * @param base   PORT peripheral base pointer.
  -- * @param mask   PORT pin number macro.
  -- * @param config  PORT pin interrupt configuration.
  -- *        - #kPORT_InterruptOrDMADisabled: Interrupt/DMA request disabled.
  -- *        - #kPORT_DMARisingEdge : DMA request on rising edge(if the DMA requests exit).
  -- *        - #kPORT_DMAFallingEdge: DMA request on falling edge(if the DMA requests exit).
  -- *        - #kPORT_DMAEitherEdge : DMA request on either edge(if the DMA requests exit).
  -- *        - #kPORT_FlagRisingEdge : Flag sets on rising edge(if the Flag states exit).
  -- *        - #kPORT_FlagFallingEdge : Flag sets on falling edge(if the Flag states exit).
  -- *        - #kPORT_FlagEitherEdge : Flag sets on either edge(if the Flag states exit).
  -- *        - #kPORT_InterruptLogicZero  : Interrupt when logic zero.
  -- *        - #kPORT_InterruptRisingEdge : Interrupt on rising edge.
  -- *        - #kPORT_InterruptFallingEdge: Interrupt on falling edge.
  -- *        - #kPORT_InterruptEitherEdge : Interrupt on either edge.
  -- *        - #kPORT_InterruptLogicOne   : Interrupt when logic one.
  -- *        - #kPORT_ActiveHighTriggerOutputEnable : Enable active high-trigger output (if the trigger states exit).
  -- *        - #kPORT_ActiveLowTriggerOutputEnable  : Enable active low-trigger output (if the trigger states exit)..
  --  

  --!
  -- * @brief Configures the pin muxing.
  -- *
  -- * @param base  PORT peripheral base pointer.
  -- * @param pin   PORT pin number.
  -- * @param mux   pin muxing slot selection.
  -- *        - #kPORT_PinDisabledOrAnalog: Pin disabled or work in analog function.
  -- *        - #kPORT_MuxAsGpio          : Set as GPIO.
  -- *        - #kPORT_MuxAlt2            : chip-specific.
  -- *        - #kPORT_MuxAlt3            : chip-specific.
  -- *        - #kPORT_MuxAlt4            : chip-specific.
  -- *        - #kPORT_MuxAlt5            : chip-specific.
  -- *        - #kPORT_MuxAlt6            : chip-specific.
  -- *        - #kPORT_MuxAlt7            : chip-specific.
  -- * @note : This function is NOT recommended to use together with the PORT_SetPinsConfig, because
  -- *         the PORT_SetPinsConfig need to configure the pin mux anyway (Otherwise the pin mux is
  -- *         reset to zero : kPORT_PinDisabledOrAnalog).
  -- *        This function is recommended to use to reset the pin mux
  -- *
  --  

   procedure PORT_SetPinMux
     (base : access MKL25Z4_h.PORT_Type;
      pin : sys_ustdint_h.uint32_t;
      mux : port_mux_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "PORT_SetPinMux";

  --!
  -- * @brief Enables the digital filter in one port, each bit of the 32-bit register represents one pin.
  -- *
  -- * @param base    PORT peripheral base pointer.
  -- * @param mask    PORT pin number macro.
  -- * @param enable  PORT digital filter configuration.
  --  

  --!
  -- * @brief Sets the digital filter in one port, each bit of the 32-bit register represents one pin.
  -- *
  -- * @param base   PORT peripheral base pointer.
  -- * @param config PORT digital filter configuration structure.
  --  

  --! @}  
  --! @name Interrupt  
  --! @{  
  --!
  -- * @brief Configures the port pin interrupt/DMA request.
  -- *
  -- * @param base    PORT peripheral base pointer.
  -- * @param pin     PORT pin number.
  -- * @param config  PORT pin interrupt configuration.
  -- *        - #kPORT_InterruptOrDMADisabled: Interrupt/DMA request disabled.
  -- *        - #kPORT_DMARisingEdge : DMA request on rising edge(if the DMA requests exit).
  -- *        - #kPORT_DMAFallingEdge: DMA request on falling edge(if the DMA requests exit).
  -- *        - #kPORT_DMAEitherEdge : DMA request on either edge(if the DMA requests exit).
  -- *        - #kPORT_FlagRisingEdge : Flag sets on rising edge(if the Flag states exit).
  -- *        - #kPORT_FlagFallingEdge : Flag sets on falling edge(if the Flag states exit).
  -- *        - #kPORT_FlagEitherEdge : Flag sets on either edge(if the Flag states exit).
  -- *        - #kPORT_InterruptLogicZero  : Interrupt when logic zero.
  -- *        - #kPORT_InterruptRisingEdge : Interrupt on rising edge.
  -- *        - #kPORT_InterruptFallingEdge: Interrupt on falling edge.
  -- *        - #kPORT_InterruptEitherEdge : Interrupt on either edge.
  -- *        - #kPORT_InterruptLogicOne   : Interrupt when logic one.
  -- *        - #kPORT_ActiveHighTriggerOutputEnable : Enable active high-trigger output (if the trigger states exit).
  -- *        - #kPORT_ActiveLowTriggerOutputEnable  : Enable active low-trigger output (if the trigger states exit).
  --  

   procedure PORT_SetPinInterruptConfig
     (base : access MKL25Z4_h.PORT_Type;
      pin : sys_ustdint_h.uint32_t;
      config : port_interrupt_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:532
   with Import => True, 
        Convention => C, 
        External_Name => "PORT_SetPinInterruptConfig";

  --!
  -- * @brief Configures the port pin drive strength.
  -- *
  -- * @param base      PORT peripheral base pointer.
  -- * @param pin       PORT pin number.
  -- * @param strength  PORT pin drive strength
  -- *        - #kPORT_LowDriveStrength = 0U - Low-drive strength is configured.
  -- *        - #kPORT_HighDriveStrength = 1U - High-drive strength is configured.
  --  

   procedure PORT_SetPinDriveStrength
     (base : access MKL25Z4_h.PORT_Type;
      pin : sys_ustdint_h.uint32_t;
      strength : sys_ustdint_h.uint8_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:548
   with Import => True, 
        Convention => C, 
        External_Name => "PORT_SetPinDriveStrength";

  --!
  -- * @brief Enables the port pin double drive strength.
  -- *
  -- * @param base      PORT peripheral base pointer.
  -- * @param pin       PORT pin number.
  -- * @param enable  PORT pin drive strength configuration.
  --  

  --!
  -- * @brief Configures the port pin pull value.
  -- *
  -- * @param base      PORT peripheral base pointer.
  -- * @param pin       PORT pin number.
  -- * @param value  PORT pin pull value
  -- *        - #kPORT_LowPullResistor = 0U - Low internal pull resistor value is selected.
  -- *        - #kPORT_HighPullResistor = 1U - High internal pull resistor value is selected.
  --  

  --!
  -- * @brief Reads the whole port status flag.
  -- *
  -- * If a pin is configured to generate the DMA request,  the corresponding flag
  -- * is cleared automatically at the completion of the requested DMA transfer.
  -- * Otherwise, the flag remains set until a logic one is written to that flag.
  -- * If configured for a level sensitive interrupt that remains asserted, the flag
  -- * is set again immediately.
  -- *
  -- * @param base PORT peripheral base pointer.
  -- * @return Current port interrupt status flags, for example, 0x00010001 means the
  -- *         pin 0 and 16 have the interrupt.
  --  

   function PORT_GetPinsInterruptFlags (base : access MKL25Z4_h.PORT_Type) return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:605
   with Import => True, 
        Convention => C, 
        External_Name => "PORT_GetPinsInterruptFlags";

  --!
  -- * @brief Clears the multiple pin interrupt status flag.
  -- *
  -- * @param base PORT peripheral base pointer.
  -- * @param mask PORT pin number macro.
  --  

   procedure PORT_ClearPinsInterruptFlags (base : access MKL25Z4_h.PORT_Type; mask : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/port/fsl_port.h:616
   with Import => True, 
        Convention => C, 
        External_Name => "PORT_ClearPinsInterruptFlags";

  --!
  -- * @brief Get EFT detect flags.
  -- *
  -- * @param base PORT peripheral base pointer
  -- * @return EFT detect flags
  --  

  --!
  -- * @brief Enable EFT detect interrupts.
  -- *
  -- * @param base PORT peripheral base pointer
  -- * @param interrupt EFT detect interrupt
  --  

  --!
  -- * @brief Disable EFT detect interrupts.
  -- *
  -- * @param base PORT peripheral base pointer
  -- * @param interrupt EFT detect interrupt
  --  

  --!
  -- * @brief Clear all low EFT detector.
  -- *
  -- * @note : Port B and Port C pins share the same EFT detector clear control from PORTC_EDCR register. Any write to the
  -- * PORTB_EDCR does not take effect.
  -- * @param base PORT peripheral base pointer
  -- * @param interrupt EFT detect interrupt
  --  

  --!
  -- * @brief Clear all high EFT detector.
  -- *
  -- * @param base PORT peripheral base pointer
  -- * @param interrupt EFT detect interrupt
  --  

  --! @}  
  --! @} 
end fsl_port_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
