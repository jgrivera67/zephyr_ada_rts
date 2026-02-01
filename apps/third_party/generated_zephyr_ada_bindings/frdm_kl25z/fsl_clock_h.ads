pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;
with fsl_common_h;
limited with MKL25Z4_h;

package fsl_clock_h is

   MCG_CONFIG_CHECK_PARAM : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:61

   FSL_SDK_DISABLE_DRIVER_CLOCK_CONTROL : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:75
   --  unsupported macro: FSL_CLOCK_DRIVER_VERSION (MAKE_VERSION(2, 2, 1))
   --  unsupported macro: DMAMUX_CLOCKS { kCLOCK_Dmamux0 }
   --  unsupported macro: RTC_CLOCKS { kCLOCK_Rtc0 }
   --  unsupported macro: SPI_CLOCKS { kCLOCK_Spi0, kCLOCK_Spi1 }
   --  unsupported macro: PIT_CLOCKS { kCLOCK_Pit0 }
   --  unsupported macro: PORT_CLOCKS { kCLOCK_PortA, kCLOCK_PortB, kCLOCK_PortC, kCLOCK_PortD, kCLOCK_PortE }
   --  unsupported macro: TSI_CLOCKS { kCLOCK_Tsi0 }
   --  unsupported macro: DAC_CLOCKS { kCLOCK_Dac0 }
   --  unsupported macro: LPTMR_CLOCKS { kCLOCK_Lptmr0 }
   --  unsupported macro: ADC16_CLOCKS { kCLOCK_Adc0 }
   --  unsupported macro: DMA_CLOCKS { kCLOCK_Dma0 }
   --  unsupported macro: UART0_CLOCKS { kCLOCK_Uart0 }
   --  unsupported macro: UART_CLOCKS { kCLOCK_IpInvalid, kCLOCK_Uart1, kCLOCK_Uart2 }
   --  unsupported macro: TPM_CLOCKS { kCLOCK_Tpm0, kCLOCK_Tpm1, kCLOCK_Tpm2 }
   --  unsupported macro: I2C_CLOCKS { kCLOCK_I2c0, kCLOCK_I2c1 }
   --  unsupported macro: FTF_CLOCKS { kCLOCK_Ftf0 }
   --  unsupported macro: CMP_CLOCKS { kCLOCK_Cmp0 }

   LPO_CLK_FREQ : constant := 1000;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:218
   --  unsupported macro: SYS_CLK kCLOCK_CoreSysClk
   --  unsupported macro: BUS_CLK kCLOCK_BusClk
   --  unsupported macro: I2C0_CLK_SRC BUS_CLK
   --  unsupported macro: I2C1_CLK_SRC BUS_CLK
   --  unsupported macro: SPI0_CLK_SRC BUS_CLK
   --  unsupported macro: SPI1_CLK_SRC SYS_CLK
   --  unsupported macro: UART1_CLK_SRC BUS_CLK
   --  unsupported macro: UART2_CLK_SRC BUS_CLK

   CLK_GATE_REG_OFFSET_SHIFT : constant := 16;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:282
   CLK_GATE_REG_OFFSET_MASK : constant := 16#FFFF0000#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:283
   CLK_GATE_BIT_SHIFT_SHIFT : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:284
   CLK_GATE_BIT_SHIFT_MASK : constant := 16#0000FFFF#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:285
   --  arg-macro: function CLK_GATE_DEFINE (reg_offset, bit_shift)
   --    return (((reg_offset) << CLK_GATE_REG_OFFSET_SHIFT) and CLK_GATE_REG_OFFSET_MASK) or (((bit_shift) << CLK_GATE_BIT_SHIFT_SHIFT) and CLK_GATE_BIT_SHIFT_MASK);
   --  arg-macro: function CLK_GATE_ABSTRACT_REG_OFFSET (x)
   --    return ((x)andCLK_GATE_REG_OFFSET_MASK) >> CLK_GATE_REG_OFFSET_SHIFT;
   --  arg-macro: function CLK_GATE_ABSTRACT_BITS_SHIFT (x)
   --    return ((x)andCLK_GATE_BIT_SHIFT_MASK) >> CLK_GATE_BIT_SHIFT_SHIFT;

  -- * Copyright (c) 2015, Freescale Semiconductor, Inc.
  -- * Copyright (c) 2016 - 2017 , NXP
  -- * All rights reserved.
  -- *
  -- * Redistribution and use in source and binary forms, with or without modification,
  -- * are permitted provided that the following conditions are met:
  -- *
  -- * o Redistributions of source code must retain the above copyright notice, this list
  -- *   of conditions and the following disclaimer.
  -- *
  -- * o Redistributions in binary form must reproduce the above copyright notice, this
  -- *   list of conditions and the following disclaimer in the documentation and/or
  -- *   other materials provided with the distribution.
  -- *
  -- * o Neither the name of copyright holder nor the names of its
  -- *   contributors may be used to endorse or promote products derived from this
  -- *   software without specific prior written permission.
  -- *
  -- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  -- * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  -- * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  -- * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
  -- * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  -- * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  -- * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
  -- * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  -- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  -- * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  --  

  --! @addtogroup clock  
  --! @{  
  --! @file  
  --******************************************************************************
  -- * Configurations
  -- ***************************************************************************** 

  --! @brief Configures whether to check a parameter in a function.
  -- *
  -- * Some MCG settings must be changed with conditions, for example:
  -- *  1. MCGIRCLK settings, such as the source, divider, and the trim value should not change when
  -- *     MCGIRCLK is used as a system clock source.
  -- *  2. MCG_C7[OSCSEL] should not be changed  when the external reference clock is used
  -- *     as a system clock source. For example, in FBE/BLPE/PBE modes.
  -- *  3. The users should only switch between the supported clock modes.
  -- *
  -- * MCG functions check the parameter and MCG status before setting, if not allowed
  -- * to change, the functions return error. The parameter checking increases code size,
  -- * if code size is a critical requirement, change #MCG_CONFIG_CHECK_PARAM to 0 to
  -- * disable parameter checking.
  --  

  --! @brief Configure whether driver controls clock
  -- *
  -- * When set to 0, peripheral drivers will enable clock in initialize function
  -- * and disable clock in de-initialize function. When set to 1, peripheral
  -- * driver will not control the clock, application could contol the clock out of
  -- * the driver.
  -- *
  -- * @note All drivers share this feature switcher. If it is set to 1, application
  -- * should handle clock enable and disable for all drivers.
  --  

  --******************************************************************************
  -- * Definitions
  -- ***************************************************************************** 

  --! @name Driver version  
  --@{ 
  --! @brief CLOCK driver version 2.2.1.  
  --@} 
  --! @brief External XTAL0 (OSC0) clock frequency.
  -- *
  -- * The XTAL0/EXTAL0 (OSC0) clock frequency in Hz. When the clock is set up, use the
  -- * function CLOCK_SetXtal0Freq to set the value in the clock driver. For example,
  -- * if XTAL0 is 8 MHz:
  -- * @code
  -- * CLOCK_InitOsc0(...); // Set up the OSC0
  -- * CLOCK_SetXtal0Freq(80000000); // Set the XTAL0 value to the clock driver.
  -- * @endcode
  -- *
  -- * This is important for the multicore platforms where only one core needs to set up the
  -- * OSC0 using the CLOCK_InitOsc0. All other cores need to call the CLOCK_SetXtal0Freq
  -- * to get a valid clock frequency.
  --  

   g_xtal0Freq : aliased sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "g_xtal0Freq";

  --! @brief External XTAL32/EXTAL32/RTC_CLKIN clock frequency.
  -- *
  -- * The XTAL32/EXTAL32/RTC_CLKIN clock frequency in Hz. When the clock is set up, use the
  -- * function CLOCK_SetXtal32Freq to set the value in the clock driver.
  -- *
  -- * This is important for the multicore platforms where only one core needs to set up
  -- * the clock. All other cores need to call the CLOCK_SetXtal32Freq
  -- * to get a valid clock frequency.
  --  

   g_xtal32Freq : aliased sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "g_xtal32Freq";

  --! @brief Clock ip name array for DMAMUX.  
  --! @brief Clock ip name array for RTC.  
  --! @brief Clock ip name array for SPI.  
  --! @brief Clock ip name array for PIT.  
  --! @brief Clock ip name array for PORT.  
  --! @brief Clock ip name array for TSI.  
  --! @brief Clock ip name array for DAC.  
  --! @brief Clock ip name array for LPTMR.  
  --! @brief Clock ip name array for ADC16.  
  --! @brief Clock ip name array for DMA.  
  --! @brief Clock ip name array for LPSCI/UART0.  
  --! @brief Clock ip name array for UART.  
  --! @brief Clock ip name array for TPM.  
  --! @brief Clock ip name array for I2C.  
  --! @brief Clock ip name array for FTF.  
  --! @brief Clock ip name array for CMP.  
  --!
  -- * @brief LPO clock frequency.
  --  

  --! @brief Peripherals clock source definition.  
  --! @brief Clock name used to get clock frequency.  
   type u_clock_name is 
     (kCLOCK_CoreSysClk,
      kCLOCK_PlatClk,
      kCLOCK_BusClk,
      kCLOCK_FlexBusClk,
      kCLOCK_FlashClk,
      kCLOCK_PllFllSelClk,
      kCLOCK_Er32kClk,
      kCLOCK_Osc0ErClk,
      kCLOCK_McgFixedFreqClk,
      kCLOCK_McgInternalRefClk,
      kCLOCK_McgFllClk,
      kCLOCK_McgPll0Clk,
      kCLOCK_McgExtPllClk,
      kCLOCK_LpoClk)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:232

  -- ----------------------------- System layer clock ------------------------------- 
  --!< Core/system clock                                          
  --!< Platform clock                                             
  --!< Bus clock                                                  
  --!< FlexBus clock                                              
  --!< Flash clock                                                
  --!< The clock after SIM[PLLFLLSEL].                            
  -- ---------------------------------- OSC clock ----------------------------------- 
  --!< External reference 32K clock (ERCLK32K)                    
  --!< OSC0 external reference clock (OSC0ERCLK)                  
  -- ----------------------------- MCG and MCG-Lite clock --------------------------- 
  --!< MCG fixed frequency clock (MCGFFCLK)                       
  --!< MCG internal reference clock (MCGIRCLK)                    
  --!< MCGFLLCLK                                                  
  --!< MCGPLL0CLK                                                 
  --!< EXT_PLLCLK                                                 
  -- --------------------------------- Other clock ---------------------------------- 
  --!< LPO clock                                                  
   subtype clock_name_t is u_clock_name;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:257

  --! @brief USB clock source definition.  
   subtype u_clock_usb_src is unsigned;
   u_clock_usb_src_kCLOCK_UsbSrcPll0 : constant u_clock_usb_src := 327680;
   u_clock_usb_src_kCLOCK_UsbSrcExt : constant u_clock_usb_src := 0;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:260

  --!< Use PLL0.       
  --!< Use USB_CLKIN.  
   subtype clock_usb_src_t is u_clock_usb_src;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:264

  --------------------------------------------------------------------------------
  -- clock_gate_t definition:
  -- 31                              16                              0
  -- -----------------------------------------------------------------
  -- | SIM_SCGC register offset       |   control bit offset in SCGC |
  -- -----------------------------------------------------------------
  -- For example, the SDHC clock gate is controlled by SIM_SCGC3[17], the
  -- SIM_SCGC3 offset in SIM is 0x1030, then kCLOCK_GateSdhc0 is defined as
  --              kCLOCK_GateSdhc0 = (0x1030 << 16) | 17;
  -------------------------------------------------------------------------------- 

  --! @brief Clock gate name used for CLOCK_EnableClock/CLOCK_DisableClock.  
   subtype u_clock_ip_name is unsigned;
   u_clock_ip_name_kCLOCK_IpInvalid : constant u_clock_ip_name := 0;
   u_clock_ip_name_kCLOCK_I2c0 : constant u_clock_ip_name := 271843334;
   u_clock_ip_name_kCLOCK_I2c1 : constant u_clock_ip_name := 271843335;
   u_clock_ip_name_kCLOCK_Uart0 : constant u_clock_ip_name := 271843338;
   u_clock_ip_name_kCLOCK_Uart1 : constant u_clock_ip_name := 271843339;
   u_clock_ip_name_kCLOCK_Uart2 : constant u_clock_ip_name := 271843340;
   u_clock_ip_name_kCLOCK_Usbfs0 : constant u_clock_ip_name := 271843346;
   u_clock_ip_name_kCLOCK_Cmp0 : constant u_clock_ip_name := 271843347;
   u_clock_ip_name_kCLOCK_Spi0 : constant u_clock_ip_name := 271843350;
   u_clock_ip_name_kCLOCK_Spi1 : constant u_clock_ip_name := 271843351;
   u_clock_ip_name_kCLOCK_Lptmr0 : constant u_clock_ip_name := 272105472;
   u_clock_ip_name_kCLOCK_Tsi0 : constant u_clock_ip_name := 272105477;
   u_clock_ip_name_kCLOCK_PortA : constant u_clock_ip_name := 272105481;
   u_clock_ip_name_kCLOCK_PortB : constant u_clock_ip_name := 272105482;
   u_clock_ip_name_kCLOCK_PortC : constant u_clock_ip_name := 272105483;
   u_clock_ip_name_kCLOCK_PortD : constant u_clock_ip_name := 272105484;
   u_clock_ip_name_kCLOCK_PortE : constant u_clock_ip_name := 272105485;
   u_clock_ip_name_kCLOCK_Ftf0 : constant u_clock_ip_name := 272367616;
   u_clock_ip_name_kCLOCK_Dmamux0 : constant u_clock_ip_name := 272367617;
   u_clock_ip_name_kCLOCK_Pit0 : constant u_clock_ip_name := 272367639;
   u_clock_ip_name_kCLOCK_Tpm0 : constant u_clock_ip_name := 272367640;
   u_clock_ip_name_kCLOCK_Tpm1 : constant u_clock_ip_name := 272367641;
   u_clock_ip_name_kCLOCK_Tpm2 : constant u_clock_ip_name := 272367642;
   u_clock_ip_name_kCLOCK_Adc0 : constant u_clock_ip_name := 272367643;
   u_clock_ip_name_kCLOCK_Rtc0 : constant u_clock_ip_name := 272367645;
   u_clock_ip_name_kCLOCK_Dac0 : constant u_clock_ip_name := 272367647;
   u_clock_ip_name_kCLOCK_Dma0 : constant u_clock_ip_name := 272629768;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:295

   subtype clock_ip_name_t is u_clock_ip_name;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:327

  --!@brief SIM configuration structure for clock setting.  
   type u_sim_clock_config is record
      pllFllSel : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:332
      er32kSrc : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:333
      clkdiv1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:334
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:330

  --!< ERCLK32K source selection.    
  --!< SIM_CLKDIV1.                  
   subtype sim_clock_config_t is u_sim_clock_config;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:335

  --! @brief OSC work mode.  
   subtype u_osc_mode is unsigned;
   u_osc_mode_kOSC_ModeExt : constant u_osc_mode := 0;
   u_osc_mode_kOSC_ModeOscLowPower : constant u_osc_mode := 4;
   u_osc_mode_kOSC_ModeOscHighGain : constant u_osc_mode := 12;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:338

  --!< Use an external clock.    
  --!< Oscillator low power.  
  --!< Oscillator low power.  
  --!< Oscillator high gain.  
  --!< Oscillator high gain.  
   subtype osc_mode_t is u_osc_mode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:361

  --! @brief Oscillator capacitor load setting. 
   subtype u_osc_cap_load is unsigned;
   u_osc_cap_load_kOSC_Cap2P : constant u_osc_cap_load := 8;
   u_osc_cap_load_kOSC_Cap4P : constant u_osc_cap_load := 4;
   u_osc_cap_load_kOSC_Cap8P : constant u_osc_cap_load := 2;
   u_osc_cap_load_kOSC_Cap16P : constant u_osc_cap_load := 1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:364

  --!< 2  pF capacitor load  
  --!< 4  pF capacitor load  
  --!< 8  pF capacitor load  
  --!< 16 pF capacitor load  
  --! @brief OSCERCLK enable mode.  
   subtype u_oscer_enable_mode is unsigned;
   u_oscer_enable_mode_kOSC_ErClkEnable : constant u_oscer_enable_mode := 128;
   u_oscer_enable_mode_kOSC_ErClkEnableInStop : constant u_oscer_enable_mode := 32;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:373

  --!< Enable.               
  --!< Enable in stop mode.  
  --! @brief OSC configuration for OSCERCLK.  
  --!< OSCERCLK enable mode. OR'ed value of @ref _oscer_enable_mode.  
   type u_oscer_config is record
      enableMode : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:382
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:380

   subtype oscer_config_t is u_oscer_config;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:384

  --!
  -- * @brief OSC Initialization Configuration Structure
  -- *
  -- * Defines the configuration data structure to initialize the OSC.
  -- * When porting to a new board, set the following members
  -- * according to the board setting:
  -- * 1. freq: The external frequency.
  -- * 2. workMode: The OSC module mode.
  --  

  --!< External clock frequency.     
   type u_osc_config is record
      freq : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:397
      capLoad : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:398
      workMode : aliased osc_mode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:399
      oscerConfig : aliased oscer_config_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:400
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:395

  --!< Capacitor load setting.       
  --!< OSC work mode setting.        
  --!< Configuration for OSCERCLK.   
   subtype osc_config_t is u_osc_config;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:401

  --! @brief MCG FLL reference clock source select.  
   type u_mcg_fll_src is 
     (kMCG_FllSrcExternal,
      kMCG_FllSrcInternal)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:404

  --!< External reference clock is selected           
  --!< The slow internal reference clock is selected  
   subtype mcg_fll_src_t is u_mcg_fll_src;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:408

  --! @brief MCG internal reference clock select  
   type u_mcg_irc_mode is 
     (kMCG_IrcSlow,
      kMCG_IrcFast)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:411

  --!< Slow internal reference clock selected  
  --!< Fast internal reference clock selected  
   subtype mcg_irc_mode_t is u_mcg_irc_mode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:415

  --! @brief MCG DCO Maximum Frequency with 32.768 kHz Reference  
   type u_mcg_dmx32 is 
     (kMCG_Dmx32Default,
      kMCG_Dmx32Fine)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:418

  --!< DCO has a default range of 25%  
  --!< DCO is fine-tuned for maximum frequency with 32.768 kHz reference  
   subtype mcg_dmx32_t is u_mcg_dmx32;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:422

  --! @brief MCG DCO range select  
   type u_mcg_drs is 
     (kMCG_DrsLow,
      kMCG_DrsMid,
      kMCG_DrsMidHigh,
      kMCG_DrsHigh)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:425

  --!< Low frequency range        
  --!< Mid frequency range        
  --!< Mid-High frequency range   
  --!< High frequency range       
   subtype mcg_drs_t is u_mcg_drs;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:431

  --! @brief MCG PLL reference clock select  
   type u_mcg_pll_ref_src is 
     (kMCG_PllRefOsc0,
      kMCG_PllRefOsc1)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:434

  --!< Selects OSC0 as PLL reference clock                  
  --!< Selects OSC1 as PLL reference clock                  
   subtype mcg_pll_ref_src_t is u_mcg_pll_ref_src;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:438

  --! @brief MCGOUT clock source.  
   type u_mcg_clkout_src is 
     (kMCG_ClkOutSrcOut,
      kMCG_ClkOutSrcInternal,
      kMCG_ClkOutSrcExternal)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:441

  --!< Output of the FLL is selected (reset default)   
  --!< Internal reference clock is selected            
  --!< External reference clock is selected            
   subtype mcg_clkout_src_t is u_mcg_clkout_src;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:446

  --! @brief MCG Automatic Trim Machine Select  
   type u_mcg_atm_select is 
     (kMCG_AtmSel32k,
      kMCG_AtmSel4m)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:449

  --!< 32 kHz Internal Reference Clock selected   
  --!< 4 MHz Internal Reference Clock selected    
   subtype mcg_atm_select_t is u_mcg_atm_select;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:453

  --! @brief MCG OSC Clock Select  
   type u_mcg_oscsel is 
     (kMCG_OscselOsc,
      kMCG_OscselRtc)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:456

  --!< Selects System Oscillator (OSCCLK)  
  --!< Selects 32 kHz RTC Oscillator       
   subtype mcg_oscsel_t is u_mcg_oscsel;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:460

  --! @brief MCG PLLCS select  
   type u_mcg_pll_clk_select is 
     (kMCG_PllClkSelPll0,
      kMCG_PllClkSelPll1)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:463

  --!< PLL0 output clock is selected   
  -- PLL1 output clock is selected     
   subtype mcg_pll_clk_select_t is u_mcg_pll_clk_select;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:467

  --! @brief MCG clock monitor mode.  
   type u_mcg_monitor_mode is 
     (kMCG_MonitorNone,
      kMCG_MonitorInt,
      kMCG_MonitorReset)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:470

  --!< Clock monitor is disabled.          
  --!< Trigger interrupt when clock lost.  
  --!< System reset when clock lost.       
   subtype mcg_monitor_mode_t is u_mcg_monitor_mode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:475

  --! @brief MCG status.  
   subtype u_mcg_status is unsigned;
   u_mcg_status_kStatus_MCG_ModeUnreachable : constant u_mcg_status := 2000;
   u_mcg_status_kStatus_MCG_ModeInvalid : constant u_mcg_status := 2001;
   u_mcg_status_kStatus_MCG_AtmBusClockInvalid : constant u_mcg_status := 2002;
   u_mcg_status_kStatus_MCG_AtmDesiredFreqInvalid : constant u_mcg_status := 2003;
   u_mcg_status_kStatus_MCG_AtmIrcUsed : constant u_mcg_status := 2004;
   u_mcg_status_kStatus_MCG_AtmHardwareFail : constant u_mcg_status := 2005;
   u_mcg_status_kStatus_MCG_SourceUsed : constant u_mcg_status := 2006;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:478

  --!< Can't switch to target mode.  
  --!< Current mode invalid for the specific
  --                                                                               function.  

  --!< Invalid bus clock for ATM.  
  --!< Invalid desired frequency for ATM.  
  --!< IRC is used when using ATM.  
  --!< Hardware fail occurs during ATM.  
  --!< Can't change the clock source because
  --                                                                               it is in use.  

  --! @brief MCG status flags.  
   subtype u_mcg_status_flags_t is unsigned;
   u_mcg_status_flags_t_kMCG_Osc0LostFlag : constant u_mcg_status_flags_t := 1;
   u_mcg_status_flags_t_kMCG_Osc0InitFlag : constant u_mcg_status_flags_t := 2;
   u_mcg_status_flags_t_kMCG_Pll0LostFlag : constant u_mcg_status_flags_t := 32;
   u_mcg_status_flags_t_kMCG_Pll0LockFlag : constant u_mcg_status_flags_t := 64;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:492

  --!< OSC0 lost.          
  --!< OSC0 crystal initialized.  
  --!< PLL0 lost.          
  --!< PLL0 locked.        
  --! @brief MCG internal reference clock (MCGIRCLK) enable mode definition.  
   subtype u_mcg_irclk_enable_mode is unsigned;
   u_mcg_irclk_enable_mode_kMCG_IrclkEnable : constant u_mcg_irclk_enable_mode := 2;
   u_mcg_irclk_enable_mode_kMCG_IrclkEnableInStop : constant u_mcg_irclk_enable_mode := 1;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:501

  --!< MCGIRCLK enable.               
  --!< MCGIRCLK enable in stop mode.  
  --! @brief MCG PLL clock enable mode definition.  
   subtype u_mcg_pll_enable_mode is unsigned;
   u_mcg_pll_enable_mode_kMCG_PllEnableIndependent : constant u_mcg_pll_enable_mode := 64;
   u_mcg_pll_enable_mode_kMCG_PllEnableInStop : constant u_mcg_pll_enable_mode := 32;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:508

  --!< MCGPLLCLK enable independent of the
  --                                                           MCG clock mode. Generally, the PLL
  --                                                           is disabled in FLL modes
  --                                                           (FEI/FBI/FEE/FBE). Setting the PLL clock
  --                                                           enable independent, enables the
  --                                                           PLL in the FLL modes.           

  --!< MCGPLLCLK enable in STOP mode.  
  --! @brief MCG mode definitions  
   type u_mcg_mode is 
     (kMCG_ModeFEI,
      kMCG_ModeFBI,
      kMCG_ModeBLPI,
      kMCG_ModeFEE,
      kMCG_ModeFBE,
      kMCG_ModeBLPE,
      kMCG_ModePBE,
      kMCG_ModePEE,
      kMCG_ModeError)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:520

  --!< FEI   - FLL Engaged Internal          
  --!< FBI   - FLL Bypassed Internal         
  --!< BLPI  - Bypassed Low Power Internal   
  --!< FEE   - FLL Engaged External          
  --!< FBE   - FLL Bypassed External         
  --!< BLPE  - Bypassed Low Power External   
  --!< PBE   - PLL Bypassed External         
  --!< PEE   - PLL Engaged External          
  --!< Unknown mode                          
   subtype mcg_mode_t is u_mcg_mode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:531

  --! @brief MCG PLL configuration.  
  --!< Enable mode. OR'ed value of @ref _mcg_pll_enable_mode.  
   type u_mcg_pll_config is record
      enableMode : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:536
      prdiv : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:537
      vdiv : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:538
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:534

  --!< Reference divider PRDIV.     
  --!< VCO divider VDIV.            
   subtype mcg_pll_config_t is u_mcg_pll_config;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:539

  --! @brief MCG mode change configuration structure
  -- *
  -- * When porting to a new board, set the following members
  -- * according to the board setting:
  -- * 1. frdiv: If the FLL uses the external reference clock, set this
  -- *    value to ensure that the external reference clock divided by frdiv is
  -- *    in the 31.25 kHz to 39.0625 kHz range.
  -- * 2. The PLL reference clock divider PRDIV: PLL reference clock frequency after
  -- *    PRDIV should be in the FSL_FEATURE_MCG_PLL_REF_MIN to
  -- *    FSL_FEATURE_MCG_PLL_REF_MAX range.
  --  

  --!< MCG mode.                    
   type u_mcg_config is record
      mcgMode : aliased mcg_mode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:554
      irclkEnableMode : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:557
      ircs : aliased mcg_irc_mode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:558
      fcrdiv : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:559
      frdiv : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:562
      drs : aliased mcg_drs_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:563
      dmx32 : aliased mcg_dmx32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:564
      pll0Config : aliased mcg_pll_config_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:567
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:552

  -- ----------------------- MCGIRCCLK settings ------------------------  
  --!< MCGIRCLK enable mode.        
  --!< Source, MCG_C2[IRCS].        
  --!< Divider, MCG_SC[FCRDIV].     
  -- ------------------------ MCG FLL settings -------------------------  
  --!< Divider MCG_C1[FRDIV].       
  --!< DCO range MCG_C4[DRST_DRS].  
  --!< MCG_C4[DMX32].               
  -- ------------------------ MCG PLL settings -------------------------  
  --!< MCGPLL0CLK configuration.    
   subtype mcg_config_t is u_mcg_config;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:569

  --******************************************************************************
  -- * API
  -- ***************************************************************************** 

  --!
  -- * @brief Enable the clock for specific IP.
  -- *
  -- * @param name  Which clock to enable, see \ref clock_ip_name_t.
  --  

   procedure CLOCK_EnableClock (name : clock_ip_name_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_EnableClock";

  --!
  -- * @brief Disable the clock for specific IP.
  -- *
  -- * @param name  Which clock to disable, see \ref clock_ip_name_t.
  --  

   procedure CLOCK_DisableClock (name : clock_ip_name_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:595
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_DisableClock";

  --! @brief Set ERCLK32K source.  
   procedure CLOCK_SetEr32kClock (src : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:602
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetEr32kClock";

  --! @brief Set PLLFLLSEL clock source.  
   procedure CLOCK_SetPllFllSelClock (src : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:608
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetPllFllSelClock";

  --! @brief Set TPM clock source.  
   procedure CLOCK_SetTpmClock (src : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:614
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetTpmClock";

  --! @brief Set LPSCI0 (UART0) clock source.  
   procedure CLOCK_SetLpsci0Clock (src : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:620
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetLpsci0Clock";

  --! @brief Enable USB FS clock.
  -- *
  -- * @param src  USB FS clock source.
  -- * @param freq The frequency specified by src.
  -- * @retval true The clock is set successfully.
  -- * @retval false The clock source is invalid to get proper USB FS clock.
  --  

   function CLOCK_EnableUsbfs0Clock (src : clock_usb_src_t; freq : sys_ustdint_h.uint32_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:632
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_EnableUsbfs0Clock";

  --! @brief Disable USB FS clock.
  -- *
  -- * Disable USB FS clock.
  --  

   procedure CLOCK_DisableUsbfs0Clock  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:638
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_DisableUsbfs0Clock";

  --! @brief Set CLKOUT source.  
   procedure CLOCK_SetClkOutClock (src : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:644
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetClkOutClock";

  --! @brief Set RTC_CLKOUT source.  
   procedure CLOCK_SetRtcClkOutClock (src : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:650
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetRtcClkOutClock";

  --!
  -- * @brief
  -- * Set the SIM_CLKDIV1[OUTDIV1], SIM_CLKDIV1[OUTDIV4].
  --  

   procedure CLOCK_SetOutDiv (outdiv1 : sys_ustdint_h.uint32_t; outdiv4 : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:659
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetOutDiv";

  --!
  -- * @brief Gets the clock frequency for a specific clock name.
  -- *
  -- * This function checks the current clock configurations and then calculates
  -- * the clock frequency for a specific clock name defined in clock_name_t.
  -- * The MCG must be properly configured before using this function.
  -- *
  -- * @param clockName Clock names defined in clock_name_t
  -- * @return Clock frequency value in Hertz
  --  

   function CLOCK_GetFreq (clockName : clock_name_t) return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:674
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetFreq";

  --!
  -- * @brief Get the core clock or system clock frequency.
  -- *
  -- * @return Clock frequency in Hz.
  --  

   function CLOCK_GetCoreSysClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:681
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetCoreSysClkFreq";

  --!
  -- * @brief Get the platform clock frequency.
  -- *
  -- * @return Clock frequency in Hz.
  --  

   function CLOCK_GetPlatClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:688
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetPlatClkFreq";

  --!
  -- * @brief Get the bus clock frequency.
  -- *
  -- * @return Clock frequency in Hz.
  --  

   function CLOCK_GetBusClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:695
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetBusClkFreq";

  --!
  -- * @brief Get the flash clock frequency.
  -- *
  -- * @return Clock frequency in Hz.
  --  

   function CLOCK_GetFlashClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:702
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetFlashClkFreq";

  --!
  -- * @brief Get the output clock frequency selected by SIM[PLLFLLSEL].
  -- *
  -- * @return Clock frequency in Hz.
  --  

   function CLOCK_GetPllFllSelClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:709
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetPllFllSelClkFreq";

  --!
  -- * @brief Get the external reference 32K clock frequency (ERCLK32K).
  -- *
  -- * @return Clock frequency in Hz.
  --  

   function CLOCK_GetEr32kClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:716
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetEr32kClkFreq";

  --!
  -- * @brief Get the OSC0 external reference clock frequency (OSC0ERCLK).
  -- *
  -- * @return Clock frequency in Hz.
  --  

   function CLOCK_GetOsc0ErClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetOsc0ErClkFreq";

  --!
  -- * @brief Set the clock configure in SIM module.
  -- *
  -- * This function sets system layer clock settings in SIM module.
  -- *
  -- * @param config Pointer to the configure structure.
  --  

   procedure CLOCK_SetSimConfig (config : access constant sim_clock_config_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:732
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetSimConfig";

  --!
  -- * @brief Set the system clock dividers in SIM to safe value.
  -- *
  -- * The system level clocks (core clock, bus clock, flexbus clock and flash clock)
  -- * must be in allowed ranges. During MCG clock mode switch, the MCG output clock
  -- * changes then the system level clocks may be out of range. This function could
  -- * be used before MCG mode change, to make sure system level clocks are in allowed
  -- * range.
  -- *
  -- * @param config Pointer to the configure structure.
  --  

   procedure CLOCK_SetSimSafeDivs  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:745
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetSimSafeDivs";

  --! @name MCG frequency functions.  
  --@{ 
  --!
  -- * @brief Gets the MCG output clock (MCGOUTCLK) frequency.
  -- *
  -- * This function gets the MCG output clock frequency in Hz based on the current MCG
  -- * register value.
  -- *
  -- * @return The frequency of MCGOUTCLK.
  --  

   function CLOCK_GetOutClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:761
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetOutClkFreq";

  --!
  -- * @brief Gets the MCG FLL clock (MCGFLLCLK) frequency.
  -- *
  -- * This function gets the MCG FLL clock frequency in Hz based on the current MCG
  -- * register value. The FLL is enabled in FEI/FBI/FEE/FBE mode and
  -- * disabled in low power state in other modes.
  -- *
  -- * @return The frequency of MCGFLLCLK.
  --  

   function CLOCK_GetFllFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:772
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetFllFreq";

  --!
  -- * @brief Gets the MCG internal reference clock (MCGIRCLK) frequency.
  -- *
  -- * This function gets the MCG internal reference clock frequency in Hz based
  -- * on the current MCG register value.
  -- *
  -- * @return The frequency of MCGIRCLK.
  --  

   function CLOCK_GetInternalRefClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:782
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetInternalRefClkFreq";

  --!
  -- * @brief Gets the MCG fixed frequency clock (MCGFFCLK) frequency.
  -- *
  -- * This function gets the MCG fixed frequency clock frequency in Hz based
  -- * on the current MCG register value.
  -- *
  -- * @return The frequency of MCGFFCLK.
  --  

   function CLOCK_GetFixedFreqClkFreq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:792
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetFixedFreqClkFreq";

  --!
  -- * @brief Gets the MCG PLL0 clock (MCGPLL0CLK) frequency.
  -- *
  -- * This function gets the MCG PLL0 clock frequency in Hz based on the current MCG
  -- * register value.
  -- *
  -- * @return The frequency of MCGPLL0CLK.
  --  

   function CLOCK_GetPll0Freq return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:802
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetPll0Freq";

  --@} 
  --! @name MCG clock configuration.  
  --@{ 
  --!
  -- * @brief Enables or disables the MCG low power.
  -- *
  -- * Enabling the MCG low power disables the PLL and FLL in bypass modes. In other words,
  -- * in FBE and PBE modes, enabling low power sets the MCG to BLPE mode. In FBI and
  -- * PBI modes, enabling low power sets the MCG to BLPI mode.
  -- * When disabling the MCG low power, the PLL or FLL are enabled based on MCG settings.
  -- *
  -- * @param enable True to enable MCG low power, false to disable MCG low power.
  --  

   procedure CLOCK_SetLowPowerEnable (enable : Extensions.bool)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:819
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetLowPowerEnable";

  --!
  -- * @brief Configures the Internal Reference clock (MCGIRCLK).
  -- *
  -- * This function sets the \c MCGIRCLK base on parameters. It also selects the IRC
  -- * source. If the fast IRC is used, this function sets the fast IRC divider.
  -- * This function also sets whether the \c MCGIRCLK is enabled in stop mode.
  -- * Calling this function in FBI/PBI/BLPI modes may change the system clock. As a result,
  -- * using the function in these modes it is not allowed.
  -- *
  -- * @param enableMode MCGIRCLK enable mode, OR'ed value of @ref _mcg_irclk_enable_mode.
  -- * @param ircs       MCGIRCLK clock source, choose fast or slow.
  -- * @param fcrdiv     Fast IRC divider setting (\c FCRDIV).
  -- * @retval kStatus_MCG_SourceUsed Because the internall reference clock is used as a clock source,
  -- * the confuration should not be changed. Otherwise, a glitch occurs.
  -- * @retval kStatus_Success MCGIRCLK configuration finished successfully.
  --  

   function CLOCK_SetInternalRefClkConfig
     (enableMode : sys_ustdint_h.uint8_t;
      ircs : mcg_irc_mode_t;
      fcrdiv : sys_ustdint_h.uint8_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:847
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetInternalRefClkConfig";

  --!
  -- * @brief Selects the MCG external reference clock.
  -- *
  -- * Selects the MCG external reference clock source, changes the MCG_C7[OSCSEL],
  -- * and waits for the clock source to be stable. Because the external reference
  -- * clock should not be changed in FEE/FBE/BLPE/PBE/PEE modes, do not call this function in these modes.
  -- *
  -- * @param oscsel MCG external reference clock source, MCG_C7[OSCSEL].
  -- * @retval kStatus_MCG_SourceUsed Because the external reference clock is used as a clock source,
  -- * the confuration should not be changed. Otherwise, a glitch occurs.
  -- * @retval kStatus_Success External reference clock set successfully.
  --  

   function CLOCK_SetExternalRefClkConfig (oscsel : mcg_oscsel_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:861
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetExternalRefClkConfig";

  --!
  -- * @brief Set the FLL external reference clock divider value.
  -- *
  -- * Sets the FLL external reference clock divider value, the register MCG_C1[FRDIV].
  -- *
  -- * @param frdiv The FLL external reference clock divider value, MCG_C1[FRDIV].
  --  

   procedure CLOCK_SetFllExtRefDiv (frdiv : sys_ustdint_h.uint8_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:870
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetFllExtRefDiv";

  --!
  -- * @brief Enables the PLL0 in FLL mode.
  -- *
  -- * This function sets us the PLL0 in FLL mode and reconfigures
  -- * the PLL0. Ensure that the PLL reference
  -- * clock is enabled before calling this function and that the PLL0 is not used as a clock source.
  -- * The function CLOCK_CalcPllDiv gets the correct PLL
  -- * divider values.
  -- *
  -- * @param config Pointer to the configuration structure.
  --  

   procedure CLOCK_EnablePll0 (config : access constant mcg_pll_config_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:886
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_EnablePll0";

  --!
  -- * @brief Disables the PLL0 in FLL mode.
  -- *
  -- * This function disables the PLL0 in FLL mode. It should be used together with the
  -- * @ref CLOCK_EnablePll0.
  --  

   procedure CLOCK_DisablePll0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:894
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_DisablePll0";

  --!
  -- * @brief Calculates the PLL divider setting for a desired output frequency.
  -- *
  -- * This function calculates the correct reference clock divider (\c PRDIV) and
  -- * VCO divider (\c VDIV) to generate a desired PLL output frequency. It returns the
  -- * closest frequency match with the corresponding \c PRDIV/VDIV
  -- * returned from parameters. If a desired frequency is not valid, this function
  -- * returns 0.
  -- *
  -- * @param refFreq    PLL reference clock frequency.
  -- * @param desireFreq Desired PLL output frequency.
  -- * @param prdiv      PRDIV value to generate desired PLL frequency.
  -- * @param vdiv       VDIV value to generate desired PLL frequency.
  -- * @return Closest frequency match that the PLL was able generate.
  --  

   function CLOCK_CalcPllDiv
     (refFreq : sys_ustdint_h.uint32_t;
      desireFreq : sys_ustdint_h.uint32_t;
      prdiv : access sys_ustdint_h.uint8_t;
      vdiv : access sys_ustdint_h.uint8_t) return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:914
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_CalcPllDiv";

  --@} 
  --! @name MCG clock lock monitor functions.  
  --@{ 
  --!
  -- * @brief Sets the OSC0 clock monitor mode.
  -- *
  -- * This function sets the OSC0 clock monitor mode. See @ref mcg_monitor_mode_t for details.
  -- *
  -- * @param mode Monitor mode to set.
  --  

   procedure CLOCK_SetOsc0MonitorMode (mode : mcg_monitor_mode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:928
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetOsc0MonitorMode";

  --!
  -- * @brief Sets the PLL0 clock monitor mode.
  -- *
  -- * This function sets the PLL0 clock monitor mode. See @ref mcg_monitor_mode_t for details.
  -- *
  -- * @param mode Monitor mode to set.
  --  

   procedure CLOCK_SetPll0MonitorMode (mode : mcg_monitor_mode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:937
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetPll0MonitorMode";

  --!
  -- * @brief Gets the MCG status flags.
  -- *
  -- * This function gets the MCG clock status flags. All status flags are
  -- * returned as a logical OR of the enumeration @ref _mcg_status_flags_t. To
  -- * check a specific flag, compare the return value with the flag.
  -- *
  -- * Example:
  -- * @code
  --   // To check the clock lost lock status of OSC0 and PLL0.
  --   uint32_t mcgFlags;
  --   mcgFlags = CLOCK_GetStatusFlags();
  --   if (mcgFlags & kMCG_Osc0LostFlag)
  --   {
  --       // OSC0 clock lock lost. Do something.
  --   }
  --   if (mcgFlags & kMCG_Pll0LostFlag)
  --   {
  --       // PLL0 clock lock lost. Do something.
  --   }
  --   @endcode
  -- *
  -- * @return  Logical OR value of the @ref _mcg_status_flags_t.
  --  

   function CLOCK_GetStatusFlags return sys_ustdint_h.uint32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:965
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetStatusFlags";

  --!
  -- * @brief Clears the MCG status flags.
  -- *
  -- * This function clears the MCG clock lock lost status. The parameter is a logical
  -- * OR value of the flags to clear. See @ref _mcg_status_flags_t.
  -- *
  -- * Example:
  -- * @code
  --   // To clear the clock lost lock status flags of OSC0 and PLL0.
  --   CLOCK_ClearStatusFlags(kMCG_Osc0LostFlag | kMCG_Pll0LostFlag);
  --   @endcode
  -- *
  -- * @param mask The status flags to clear. This is a logical OR of members of the
  -- *             enumeration @ref _mcg_status_flags_t.
  --  

   procedure CLOCK_ClearStatusFlags (mask : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:983
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_ClearStatusFlags";

  --@} 
  --!
  -- * @name OSC configuration
  -- * @{
  --  

  --!
  -- * @brief Configures the OSC external reference clock (OSCERCLK).
  -- *
  -- * This function configures the OSC external reference clock (OSCERCLK).
  -- * This is an example to enable the OSCERCLK in normal and stop modes and also set
  -- * the output divider to 1:
  -- *
  --   @code
  --   oscer_config_t config =
  --   {
  --       .enableMode = kOSC_ErClkEnable | kOSC_ErClkEnableInStop,
  --       .erclkDiv   = 1U,
  --   };
  --   OSC_SetExtRefClkConfig(OSC, &config);
  --   @endcode
  -- *
  -- * @param base   OSC peripheral address.
  -- * @param config Pointer to the configuration structure.
  --  

   procedure OSC_SetExtRefClkConfig (base : access MKL25Z4_h.OSC_Type; config : access constant oscer_config_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1012
   with Import => True, 
        Convention => C, 
        External_Name => "OSC_SetExtRefClkConfig";

  --!
  -- * @brief Sets the capacitor load configuration for the oscillator.
  -- *
  -- * This function sets the specified capacitors configuration for the oscillator.
  -- * This should be done in the early system level initialization function call
  -- * based on the system configuration.
  -- *
  -- * @param base   OSC peripheral address.
  -- * @param capLoad OR'ed value for the capacitor load option, see \ref _osc_cap_load.
  -- *
  -- * Example:
  --   @code
  --   // To enable only 2 pF and 8 pF capacitor load, please use like this.
  --   OSC_SetCapLoad(OSC, kOSC_Cap2P | kOSC_Cap8P);
  --   @endcode
  --  

   procedure OSC_SetCapLoad (base : access MKL25Z4_h.OSC_Type; capLoad : sys_ustdint_h.uint8_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1038
   with Import => True, 
        Convention => C, 
        External_Name => "OSC_SetCapLoad";

  --!
  -- * @brief Initializes the OSC0.
  -- *
  -- * This function initializes the OSC0 according to the board configuration.
  -- *
  -- * @param  config Pointer to the OSC0 configuration structure.
  --  

   procedure CLOCK_InitOsc0 (config : access constant osc_config_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1055
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_InitOsc0";

  --!
  -- * @brief Deinitializes the OSC0.
  -- *
  -- * This function deinitializes the OSC0.
  --  

   procedure CLOCK_DeinitOsc0  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1062
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_DeinitOsc0";

  -- @}  
  --!
  -- * @name External clock frequency
  -- * @{
  --  

  --!
  -- * @brief Sets the XTAL0 frequency based on board settings.
  -- *
  -- * @param freq The XTAL0/EXTAL0 input clock frequency in Hz.
  --  

   procedure CLOCK_SetXtal0Freq (freq : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1076
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetXtal0Freq";

  --!
  -- * @brief Sets the XTAL32/RTC_CLKIN frequency based on board settings.
  -- *
  -- * @param freq The XTAL32/EXTAL32/RTC_CLKIN input clock frequency in Hz.
  --  

   procedure CLOCK_SetXtal32Freq (freq : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1086
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetXtal32Freq";

  -- @}  
  --!
  -- * @name MCG auto-trim machine.
  -- * @{
  --  

  --!
  -- * @brief Auto trims the internal reference clock.
  -- *
  -- * This function trims the internal reference clock by using the external clock. If
  -- * successful, it returns the kStatus_Success and the frequency after
  -- * trimming is received in the parameter @p actualFreq. If an error occurs,
  -- * the error code is returned.
  -- *
  -- * @param extFreq      External clock frequency, which should be a bus clock.
  -- * @param desireFreq   Frequency to trim to.
  -- * @param actualFreq   Actual frequency after trimming.
  -- * @param atms         Trim fast or slow internal reference clock.
  -- * @retval kStatus_Success ATM success.
  -- * @retval kStatus_MCG_AtmBusClockInvalid The bus clock is not in allowed range for the ATM.
  -- * @retval kStatus_MCG_AtmDesiredFreqInvalid MCGIRCLK could not be trimmed to the desired frequency.
  -- * @retval kStatus_MCG_AtmIrcUsed Could not trim because MCGIRCLK is used as a bus clock source.
  -- * @retval kStatus_MCG_AtmHardwareFail Hardware fails while trimming.
  --  

   function CLOCK_TrimInternalRefClk
     (extFreq : sys_ustdint_h.uint32_t;
      desireFreq : sys_ustdint_h.uint32_t;
      actualFreq : access sys_ustdint_h.uint32_t;
      atms : mcg_atm_select_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1115
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_TrimInternalRefClk";

  -- @}  
  --! @name MCG mode functions.  
  --@{ 
  --!
  -- * @brief Gets the current MCG mode.
  -- *
  -- * This function checks the MCG registers and determines the current MCG mode.
  -- *
  -- * @return Current MCG mode or error code; See @ref mcg_mode_t.
  --  

   function CLOCK_GetMode return mcg_mode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1128
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_GetMode";

  --!
  -- * @brief Sets the MCG to FEI mode.
  -- *
  -- * This function sets the MCG to FEI mode. If setting to FEI mode fails
  -- * from the current mode, this function returns an error.
  -- *
  -- * @param       dmx32  DMX32 in FEI mode.
  -- * @param       drs The DCO range selection.
  -- * @param       fllStableDelay Delay function to  ensure that the FLL is stable. Passing
  -- *              NULL does not cause a delay.
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  -- * @note If @p dmx32 is set to kMCG_Dmx32Fine, the slow IRC must not be trimmed
  -- * to a frequency above 32768 Hz.
  --  

   function CLOCK_SetFeiMode
     (dmx32 : mcg_dmx32_t;
      drs : mcg_drs_t;
      fllStableDelay : access procedure) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1145
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetFeiMode";

  --!
  -- * @brief Sets the MCG to FEE mode.
  -- *
  -- * This function sets the MCG to FEE mode. If setting to FEE mode fails
  -- * from the current mode, this function returns an error.
  -- *
  -- * @param   frdiv  FLL reference clock divider setting, FRDIV.
  -- * @param   dmx32  DMX32 in FEE mode.
  -- * @param   drs    The DCO range selection.
  -- * @param   fllStableDelay Delay function to make sure FLL is stable. Passing
  -- *          NULL does not cause a delay.
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_SetFeeMode
     (frdiv : sys_ustdint_h.uint8_t;
      dmx32 : mcg_dmx32_t;
      drs : mcg_drs_t;
      fllStableDelay : access procedure) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1162
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetFeeMode";

  --!
  -- * @brief Sets the MCG to FBI mode.
  -- *
  -- * This function sets the MCG to FBI mode. If setting to FBI mode fails
  -- * from the current mode, this function returns an error.
  -- *
  -- * @param  dmx32  DMX32 in FBI mode.
  -- * @param  drs  The DCO range selection.
  -- * @param  fllStableDelay Delay function to make sure FLL is stable. If the FLL
  -- *         is not used in FBI mode, this parameter can be NULL. Passing
  -- *         NULL does not cause a delay.
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  -- * @note If @p dmx32 is set to kMCG_Dmx32Fine, the slow IRC must not be trimmed
  -- * to frequency above 32768 Hz.
  --  

   function CLOCK_SetFbiMode
     (dmx32 : mcg_dmx32_t;
      drs : mcg_drs_t;
      fllStableDelay : access procedure) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1180
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetFbiMode";

  --!
  -- * @brief Sets the MCG to FBE mode.
  -- *
  -- * This function sets the MCG to FBE mode. If setting to FBE mode fails
  -- * from the current mode, this function returns an error.
  -- *
  -- * @param   frdiv  FLL reference clock divider setting, FRDIV.
  -- * @param   dmx32  DMX32 in FBE mode.
  -- * @param   drs    The DCO range selection.
  -- * @param   fllStableDelay Delay function to make sure FLL is stable. If the FLL
  -- *          is not used in FBE mode, this parameter can be NULL. Passing NULL
  -- *          does not cause a delay.
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_SetFbeMode
     (frdiv : sys_ustdint_h.uint8_t;
      dmx32 : mcg_dmx32_t;
      drs : mcg_drs_t;
      fllStableDelay : access procedure) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1197
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetFbeMode";

  --!
  -- * @brief Sets the MCG to BLPI mode.
  -- *
  -- * This function sets the MCG to BLPI mode. If setting to BLPI mode fails
  -- * from the current mode, this function returns an error.
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_SetBlpiMode return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1208
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetBlpiMode";

  --!
  -- * @brief Sets the MCG to BLPE mode.
  -- *
  -- * This function sets the MCG to BLPE mode. If setting to BLPE mode fails
  -- * from the current mode, this function returns an error.
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_SetBlpeMode return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1219
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetBlpeMode";

  --!
  -- * @brief Sets the MCG to PBE mode.
  -- *
  -- * This function sets the MCG to PBE mode. If setting to PBE mode fails
  -- * from the current mode, this function returns an error.
  -- *
  -- * @param   pllcs  The PLL selection, PLLCS.
  -- * @param   config Pointer to the PLL configuration.
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  -- *
  -- * @note
  -- * 1. The parameter \c pllcs selects the PLL. For platforms with
  -- * only one PLL, the parameter pllcs is kept for interface compatibility.
  -- * 2. The parameter \c config is the PLL configuration structure. On some
  -- * platforms,  it is possible to choose the external PLL directly, which renders the
  -- * configuration structure not necessary. In this case, pass in NULL.
  -- * For example: CLOCK_SetPbeMode(kMCG_OscselOsc, kMCG_PllClkSelExtPll, NULL);
  --  

   function CLOCK_SetPbeMode (pllcs : mcg_pll_clk_select_t; config : access constant mcg_pll_config_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1240
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetPbeMode";

  --!
  -- * @brief Sets the MCG to PEE mode.
  -- *
  -- * This function sets the MCG to PEE mode.
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  -- *
  -- * @note This function only changes the CLKS to use the PLL/FLL output. If the
  -- *       PRDIV/VDIV are different than in the PBE mode, set them up
  -- *       in PBE mode and wait. When the clock is stable, switch to PEE mode.
  --  

   function CLOCK_SetPeeMode return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1254
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetPeeMode";

  --!
  -- * @brief Switches the MCG to FBE mode from the external mode.
  -- *
  -- * This function switches the MCG from external modes (PEE/PBE/BLPE/FEE) to the FBE mode quickly.
  -- * The external clock is used as the system clock souce and PLL is disabled. However,
  -- * the FLL settings are not configured. This is a lite function with a small code size, which is useful
  -- * during the mode switch. For example, to switch from PEE mode to FEI mode:
  -- *
  -- * @code
  -- * CLOCK_ExternalModeToFbeModeQuick();
  -- * CLOCK_SetFeiMode(...);
  -- * @endcode
  -- *
  -- * @retval kStatus_Success Switched successfully.
  -- * @retval kStatus_MCG_ModeInvalid If the current mode is not an external mode, do not call this function.
  --  

   function CLOCK_ExternalModeToFbeModeQuick return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1272
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_ExternalModeToFbeModeQuick";

  --!
  -- * @brief Switches the MCG to FBI mode from internal modes.
  -- *
  -- * This function switches the MCG from internal modes (PEI/PBI/BLPI/FEI) to the FBI mode quickly.
  -- * The MCGIRCLK is used as the system clock souce and PLL is disabled. However,
  -- * FLL settings are not configured. This is a lite function with a small code size, which is useful
  -- * during the mode switch. For example, to switch from PEI mode to FEE mode:
  -- *
  -- * @code
  -- * CLOCK_InternalModeToFbiModeQuick();
  -- * CLOCK_SetFeeMode(...);
  -- * @endcode
  -- *
  -- * @retval kStatus_Success Switched successfully.
  -- * @retval kStatus_MCG_ModeInvalid If the current mode is not an internal mode, do not call this function.
  --  

   function CLOCK_InternalModeToFbiModeQuick return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1290
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_InternalModeToFbiModeQuick";

  --!
  -- * @brief Sets the MCG to FEI mode during system boot up.
  -- *
  -- * This function sets the MCG to FEI mode from the reset mode. It can also be used to
  -- * set up MCG during system boot up.
  -- *
  -- * @param  dmx32  DMX32 in FEI mode.
  -- * @param  drs The DCO range selection.
  -- * @param  fllStableDelay Delay function to ensure that the FLL is stable.
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  -- * @note If @p dmx32 is set to kMCG_Dmx32Fine, the slow IRC must not be trimmed
  -- * to frequency above 32768 Hz.
  --  

   function CLOCK_BootToFeiMode
     (dmx32 : mcg_dmx32_t;
      drs : mcg_drs_t;
      fllStableDelay : access procedure) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1307
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_BootToFeiMode";

  --!
  -- * @brief Sets the MCG to FEE mode during system bootup.
  -- *
  -- * This function sets MCG to FEE mode from the reset mode. It can also be used to
  -- * set up the MCG during system boot up.
  -- *
  -- * @param   oscsel OSC clock select, OSCSEL.
  -- * @param   frdiv  FLL reference clock divider setting, FRDIV.
  -- * @param   dmx32  DMX32 in FEE mode.
  -- * @param   drs    The DCO range selection.
  -- * @param   fllStableDelay Delay function to ensure that the FLL is stable.
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_BootToFeeMode
     (oscsel : mcg_oscsel_t;
      frdiv : sys_ustdint_h.uint8_t;
      dmx32 : mcg_dmx32_t;
      drs : mcg_drs_t;
      fllStableDelay : access procedure) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1324
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_BootToFeeMode";

  --!
  -- * @brief Sets the MCG to BLPI mode during system boot up.
  -- *
  -- * This function sets the MCG to BLPI mode from the reset mode. It can also be used to
  -- * set up the MCG during sytem boot up.
  -- *
  -- * @param  fcrdiv Fast IRC divider, FCRDIV.
  -- * @param  ircs   The internal reference clock to select, IRCS.
  -- * @param  ircEnableMode  The MCGIRCLK enable mode, OR'ed value of @ref _mcg_irclk_enable_mode.
  -- *
  -- * @retval kStatus_MCG_SourceUsed Could not change MCGIRCLK setting.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_BootToBlpiMode
     (fcrdiv : sys_ustdint_h.uint8_t;
      ircs : mcg_irc_mode_t;
      ircEnableMode : sys_ustdint_h.uint8_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1340
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_BootToBlpiMode";

  --!
  -- * @brief Sets the MCG to BLPE mode during sytem boot up.
  -- *
  -- * This function sets the MCG to BLPE mode from the reset mode. It can also be used to
  -- * set up the MCG during sytem boot up.
  -- *
  -- * @param  oscsel OSC clock select, MCG_C7[OSCSEL].
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_BootToBlpeMode (oscsel : mcg_oscsel_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1353
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_BootToBlpeMode";

  --!
  -- * @brief Sets the MCG to PEE mode during system boot up.
  -- *
  -- * This function sets the MCG to PEE mode from reset mode. It can also be used to
  -- * set up the MCG during system boot up.
  -- *
  -- * @param   oscsel OSC clock select, MCG_C7[OSCSEL].
  -- * @param   pllcs  The PLL selection, PLLCS.
  -- * @param   config Pointer to the PLL configuration.
  -- *
  -- * @retval kStatus_MCG_ModeUnreachable Could not switch to the target mode.
  -- * @retval kStatus_Success Switched to the target mode successfully.
  --  

   function CLOCK_BootToPeeMode
     (oscsel : mcg_oscsel_t;
      pllcs : mcg_pll_clk_select_t;
      config : access constant mcg_pll_config_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1368
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_BootToPeeMode";

  --!
  -- * @brief Sets the MCG to a target mode.
  -- *
  -- * This function sets MCG to a target mode defined by the configuration
  -- * structure. If switching to the target mode fails, this function
  -- * chooses the correct path.
  -- *
  -- * @param  config Pointer to the target MCG mode configuration structure.
  -- * @return Return kStatus_Success if switched successfully; Otherwise, it returns an error code #_mcg_status.
  -- *
  -- * @note If the external clock is used in the target mode, ensure that it is
  -- * enabled. For example, if the OSC0 is used, set up OSC0 correctly before calling this
  -- * function.
  --  

   function CLOCK_SetMcgConfig (config : access constant mcg_config_t) return fsl_common_h.status_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/drivers/fsl_clock.h:1384
   with Import => True, 
        Convention => C, 
        External_Name => "CLOCK_SetMcgConfig";

  --@} 
  --! @}  
end fsl_clock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
