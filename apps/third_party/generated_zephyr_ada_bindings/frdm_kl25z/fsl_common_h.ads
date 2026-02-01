pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with stddef_h;
with System;

package fsl_common_h is

   FSL_DRIVER_TRANSFER_DOUBLE_WEAK_IRQ : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:35
   --  arg-macro: function MAKE_STATUS (group, code)
   --    return (((group)*100) + (code));
   --  arg-macro: function MAKE_VERSION (major, minor, bugfix)
   --    return ((major)*65536) + ((minor)*256) + (bugfix);
   --  unsupported macro: FSL_COMMON_DRIVER_VERSION (MAKE_VERSION(2, 6, 1))

   DEBUG_CONSOLE_DEVICE_TYPE_NONE : constant := 0;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:67
   DEBUG_CONSOLE_DEVICE_TYPE_UART : constant := 1;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:68
   DEBUG_CONSOLE_DEVICE_TYPE_LPUART : constant := 2;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:69
   DEBUG_CONSOLE_DEVICE_TYPE_LPSCI : constant := 3;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:70
   DEBUG_CONSOLE_DEVICE_TYPE_USBCDC : constant := 4;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:71
   DEBUG_CONSOLE_DEVICE_TYPE_FLEXCOMM : constant := 5;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:72
   DEBUG_CONSOLE_DEVICE_TYPE_IUART : constant := 6;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:73
   DEBUG_CONSOLE_DEVICE_TYPE_VUSART : constant := 7;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:74
   DEBUG_CONSOLE_DEVICE_TYPE_MINI_USART : constant := 8;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:75
   DEBUG_CONSOLE_DEVICE_TYPE_SWO : constant := 9;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:76
   DEBUG_CONSOLE_DEVICE_TYPE_QSCI : constant := 10;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:77
   --  arg-macro: function UINT64_H (X)
   --    return (uint32_t)((((uint64_t) (X)) >> 32) and 16#0FFFFFFFF#);
   --  arg-macro: function UINT64_L (X)
   --    return (uint32_t)(((uint64_t) (X)) and 16#0FFFFFFFF#);
   --  arg-macro: procedure SUPPRESS_FALL_THROUGH_WARNING ()
   --    __attribute__((fallthrough))

  -- * Copyright (c) 2015-2016, Freescale Semiconductor, Inc.
  -- * Copyright 2016-2022,2024-2025 NXP
  -- * All rights reserved.
  -- *
  -- * SPDX-License-Identifier: BSD-3-Clause
  --  

  --!
  -- * @addtogroup ksdk_common
  -- * @{
  --  

  --******************************************************************************
  -- * Configurations
  -- ***************************************************************************** 

  --! @brief Macro to use the default weak IRQ handler in drivers.  
  --******************************************************************************
  -- * Definitions
  -- ***************************************************************************** 

  --! @brief Construct a status code value from a group and code number.  
  --! @brief Construct the version number for drivers.
  -- *
  -- * The driver version is a 32-bit number, for both 32-bit platforms(such as Cortex M)
  -- * and 16-bit platforms(such as DSC).
  -- *
  -- * @verbatim
  --   | Unused    || Major Version || Minor Version ||  Bug Fix    |
  --   31        25  24           17  16            9  8            0
  --   @endverbatim
  --  

  --! @name Driver version  
  --! @{  
  --! @brief common driver version.  
  --! @}  
  --! @name Debug console type definition.  
  --! @{  
  --! @}  
  --! @brief Status group numbers.  
   subtype u_status_groups is unsigned;
   u_status_groups_kStatusGroup_Generic : constant u_status_groups := 0;
   u_status_groups_kStatusGroup_FLASH : constant u_status_groups := 1;
   u_status_groups_kStatusGroup_LPSPI : constant u_status_groups := 4;
   u_status_groups_kStatusGroup_FLEXIO_SPI : constant u_status_groups := 5;
   u_status_groups_kStatusGroup_DSPI : constant u_status_groups := 6;
   u_status_groups_kStatusGroup_FLEXIO_UART : constant u_status_groups := 7;
   u_status_groups_kStatusGroup_FLEXIO_I2C : constant u_status_groups := 8;
   u_status_groups_kStatusGroup_LPI2C : constant u_status_groups := 9;
   u_status_groups_kStatusGroup_UART : constant u_status_groups := 10;
   u_status_groups_kStatusGroup_I2C : constant u_status_groups := 11;
   u_status_groups_kStatusGroup_LPSCI : constant u_status_groups := 12;
   u_status_groups_kStatusGroup_LPUART : constant u_status_groups := 13;
   u_status_groups_kStatusGroup_SPI : constant u_status_groups := 14;
   u_status_groups_kStatusGroup_XRDC : constant u_status_groups := 15;
   u_status_groups_kStatusGroup_SEMA42 : constant u_status_groups := 16;
   u_status_groups_kStatusGroup_SDHC : constant u_status_groups := 17;
   u_status_groups_kStatusGroup_SDMMC : constant u_status_groups := 18;
   u_status_groups_kStatusGroup_SAI : constant u_status_groups := 19;
   u_status_groups_kStatusGroup_MCG : constant u_status_groups := 20;
   u_status_groups_kStatusGroup_SCG : constant u_status_groups := 21;
   u_status_groups_kStatusGroup_SDSPI : constant u_status_groups := 22;
   u_status_groups_kStatusGroup_FLEXIO_I2S : constant u_status_groups := 23;
   u_status_groups_kStatusGroup_FLEXIO_MCULCD : constant u_status_groups := 24;
   u_status_groups_kStatusGroup_FLASHIAP : constant u_status_groups := 25;
   u_status_groups_kStatusGroup_FLEXCOMM_I2C : constant u_status_groups := 26;
   u_status_groups_kStatusGroup_I2S : constant u_status_groups := 27;
   u_status_groups_kStatusGroup_IUART : constant u_status_groups := 28;
   u_status_groups_kStatusGroup_CSI : constant u_status_groups := 29;
   u_status_groups_kStatusGroup_MIPI_DSI : constant u_status_groups := 30;
   u_status_groups_kStatusGroup_SDRAMC : constant u_status_groups := 35;
   u_status_groups_kStatusGroup_POWER : constant u_status_groups := 39;
   u_status_groups_kStatusGroup_ENET : constant u_status_groups := 40;
   u_status_groups_kStatusGroup_PHY : constant u_status_groups := 41;
   u_status_groups_kStatusGroup_TRGMUX : constant u_status_groups := 42;
   u_status_groups_kStatusGroup_SMARTCARD : constant u_status_groups := 43;
   u_status_groups_kStatusGroup_LMEM : constant u_status_groups := 44;
   u_status_groups_kStatusGroup_QSPI : constant u_status_groups := 45;
   u_status_groups_kStatusGroup_DMA : constant u_status_groups := 50;
   u_status_groups_kStatusGroup_EDMA : constant u_status_groups := 51;
   u_status_groups_kStatusGroup_DMAMGR : constant u_status_groups := 52;
   u_status_groups_kStatusGroup_FLEXCAN : constant u_status_groups := 53;
   u_status_groups_kStatusGroup_LTC : constant u_status_groups := 54;
   u_status_groups_kStatusGroup_FLEXIO_CAMERA : constant u_status_groups := 55;
   u_status_groups_kStatusGroup_LPC_SPI : constant u_status_groups := 56;
   u_status_groups_kStatusGroup_LPC_USART : constant u_status_groups := 57;
   u_status_groups_kStatusGroup_DMIC : constant u_status_groups := 58;
   u_status_groups_kStatusGroup_SDIF : constant u_status_groups := 59;
   u_status_groups_kStatusGroup_SPIFI : constant u_status_groups := 60;
   u_status_groups_kStatusGroup_OTP : constant u_status_groups := 61;
   u_status_groups_kStatusGroup_MCAN : constant u_status_groups := 62;
   u_status_groups_kStatusGroup_CAAM : constant u_status_groups := 63;
   u_status_groups_kStatusGroup_ECSPI : constant u_status_groups := 64;
   u_status_groups_kStatusGroup_USDHC : constant u_status_groups := 65;
   u_status_groups_kStatusGroup_LPC_I2C : constant u_status_groups := 66;
   u_status_groups_kStatusGroup_DCP : constant u_status_groups := 67;
   u_status_groups_kStatusGroup_MSCAN : constant u_status_groups := 68;
   u_status_groups_kStatusGroup_ESAI : constant u_status_groups := 69;
   u_status_groups_kStatusGroup_FLEXSPI : constant u_status_groups := 70;
   u_status_groups_kStatusGroup_MMDC : constant u_status_groups := 71;
   u_status_groups_kStatusGroup_PDM : constant u_status_groups := 72;
   u_status_groups_kStatusGroup_SDMA : constant u_status_groups := 73;
   u_status_groups_kStatusGroup_ICS : constant u_status_groups := 74;
   u_status_groups_kStatusGroup_SPDIF : constant u_status_groups := 75;
   u_status_groups_kStatusGroup_LPC_MINISPI : constant u_status_groups := 76;
   u_status_groups_kStatusGroup_HASHCRYPT : constant u_status_groups := 77;
   u_status_groups_kStatusGroup_LPC_SPI_SSP : constant u_status_groups := 78;
   u_status_groups_kStatusGroup_I3C : constant u_status_groups := 79;
   u_status_groups_kStatusGroup_LPC_I2C_1 : constant u_status_groups := 97;
   u_status_groups_kStatusGroup_NOTIFIER : constant u_status_groups := 98;
   u_status_groups_kStatusGroup_DebugConsole : constant u_status_groups := 99;
   u_status_groups_kStatusGroup_SEMC : constant u_status_groups := 100;
   u_status_groups_kStatusGroup_ApplicationRangeStart : constant u_status_groups := 101;
   u_status_groups_kStatusGroup_IAP : constant u_status_groups := 102;
   u_status_groups_kStatusGroup_SFA : constant u_status_groups := 103;
   u_status_groups_kStatusGroup_SPC : constant u_status_groups := 104;
   u_status_groups_kStatusGroup_PUF : constant u_status_groups := 105;
   u_status_groups_kStatusGroup_TOUCH_PANEL : constant u_status_groups := 106;
   u_status_groups_kStatusGroup_VBAT : constant u_status_groups := 107;
   u_status_groups_kStatusGroup_XSPI : constant u_status_groups := 108;
   u_status_groups_kStatusGroup_PNGDEC : constant u_status_groups := 109;
   u_status_groups_kStatusGroup_JPEGDEC : constant u_status_groups := 110;
   u_status_groups_kStatusGroup_AUDMIX : constant u_status_groups := 111;
   u_status_groups_kStatusGroup_HAL_GPIO : constant u_status_groups := 121;
   u_status_groups_kStatusGroup_HAL_UART : constant u_status_groups := 122;
   u_status_groups_kStatusGroup_HAL_TIMER : constant u_status_groups := 123;
   u_status_groups_kStatusGroup_HAL_SPI : constant u_status_groups := 124;
   u_status_groups_kStatusGroup_HAL_I2C : constant u_status_groups := 125;
   u_status_groups_kStatusGroup_HAL_FLASH : constant u_status_groups := 126;
   u_status_groups_kStatusGroup_HAL_PWM : constant u_status_groups := 127;
   u_status_groups_kStatusGroup_HAL_RNG : constant u_status_groups := 128;
   u_status_groups_kStatusGroup_HAL_I2S : constant u_status_groups := 129;
   u_status_groups_kStatusGroup_HAL_ADC_SENSOR : constant u_status_groups := 130;
   u_status_groups_kStatusGroup_TIMERMANAGER : constant u_status_groups := 135;
   u_status_groups_kStatusGroup_SERIALMANAGER : constant u_status_groups := 136;
   u_status_groups_kStatusGroup_LED : constant u_status_groups := 137;
   u_status_groups_kStatusGroup_BUTTON : constant u_status_groups := 138;
   u_status_groups_kStatusGroup_EXTERN_EEPROM : constant u_status_groups := 139;
   u_status_groups_kStatusGroup_SHELL : constant u_status_groups := 140;
   u_status_groups_kStatusGroup_MEM_MANAGER : constant u_status_groups := 141;
   u_status_groups_kStatusGroup_LIST : constant u_status_groups := 142;
   u_status_groups_kStatusGroup_OSA : constant u_status_groups := 143;
   u_status_groups_kStatusGroup_COMMON_TASK : constant u_status_groups := 144;
   u_status_groups_kStatusGroup_MSG : constant u_status_groups := 145;
   u_status_groups_kStatusGroup_SDK_OCOTP : constant u_status_groups := 146;
   u_status_groups_kStatusGroup_SDK_FLEXSPINOR : constant u_status_groups := 147;
   u_status_groups_kStatusGroup_CODEC : constant u_status_groups := 148;
   u_status_groups_kStatusGroup_ASRC : constant u_status_groups := 149;
   u_status_groups_kStatusGroup_OTFAD : constant u_status_groups := 150;
   u_status_groups_kStatusGroup_SDIOSLV : constant u_status_groups := 151;
   u_status_groups_kStatusGroup_MECC : constant u_status_groups := 152;
   u_status_groups_kStatusGroup_ENET_QOS : constant u_status_groups := 153;
   u_status_groups_kStatusGroup_LOG : constant u_status_groups := 154;
   u_status_groups_kStatusGroup_I3CBUS : constant u_status_groups := 155;
   u_status_groups_kStatusGroup_QSCI : constant u_status_groups := 156;
   u_status_groups_kStatusGroup_ELEMU : constant u_status_groups := 157;
   u_status_groups_kStatusGroup_QUEUEDSPI : constant u_status_groups := 158;
   u_status_groups_kStatusGroup_POWER_MANAGER : constant u_status_groups := 159;
   u_status_groups_kStatusGroup_IPED : constant u_status_groups := 160;
   u_status_groups_kStatusGroup_ELS_PKC : constant u_status_groups := 161;
   u_status_groups_kStatusGroup_CSS_PKC : constant u_status_groups := 162;
   u_status_groups_kStatusGroup_HOSTIF : constant u_status_groups := 163;
   u_status_groups_kStatusGroup_CLIF : constant u_status_groups := 164;
   u_status_groups_kStatusGroup_BMA : constant u_status_groups := 165;
   u_status_groups_kStatusGroup_NETC : constant u_status_groups := 166;
   u_status_groups_kStatusGroup_ELE : constant u_status_groups := 167;
   u_status_groups_kStatusGroup_GLIKEY : constant u_status_groups := 168;
   u_status_groups_kStatusGroup_AON_POWER : constant u_status_groups := 169;
   u_status_groups_kStatusGroup_AON_COMMON : constant u_status_groups := 170;
   u_status_groups_kStatusGroup_ENDAT3 : constant u_status_groups := 171;
   u_status_groups_kStatusGroup_HIPERFACE : constant u_status_groups := 172;
   u_status_groups_kStatusGroup_NPX : constant u_status_groups := 173;
   u_status_groups_kStatusGroup_ELA_CSEC : constant u_status_groups := 174;
   u_status_groups_kStatusGroup_FLEXIO_T_FORMAT : constant u_status_groups := 175;
   u_status_groups_kStatusGroup_FLEXIO_A_FORMAT : constant u_status_groups := 176;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:81

  --!< Group number for generic status codes.  
  --!< Group number for FLASH status codes.  
  --!< Group number for LPSPI status codes.  
  --!< Group number for FLEXIO SPI status codes.  
  --!< Group number for DSPI status codes.  
  --!< Group number for FLEXIO UART status codes.  
  --!< Group number for FLEXIO I2C status codes.  
  --!< Group number for LPI2C status codes.  
  --!< Group number for UART status codes.  
  --!< Group number for UART status codes.  
  --!< Group number for LPSCI status codes.  
  --!< Group number for LPUART status codes.  
  --!< Group number for SPI status code. 
  --!< Group number for XRDC status code. 
  --!< Group number for SEMA42 status code. 
  --!< Group number for SDHC status code  
  --!< Group number for SDMMC status code  
  --!< Group number for SAI status code  
  --!< Group number for MCG status codes.  
  --!< Group number for SCG status codes.  
  --!< Group number for SDSPI status codes.  
  --!< Group number for FLEXIO I2S status codes  
  --!< Group number for FLEXIO LCD status codes  
  --!< Group number for FLASHIAP status codes  
  --!< Group number for FLEXCOMM I2C status codes  
  --!< Group number for I2S status codes  
  --!< Group number for IUART status codes  
  --!< Group number for CSI status codes  
  --!< Group number for MIPI DSI status codes  
  --!< Group number for SDRAMC status codes.  
  --!< Group number for POWER status codes.  
  --!< Group number for ENET status codes.  
  --!< Group number for PHY status codes.  
  --!< Group number for TRGMUX status codes.  
  --!< Group number for SMARTCARD status codes.  
  --!< Group number for LMEM status codes.  
  --!< Group number for QSPI status codes.  
  --!< Group number for DMA status codes.  
  --!< Group number for EDMA status codes.  
  --!< Group number for DMAMGR status codes.  
  --!< Group number for FlexCAN status codes.  
  --!< Group number for LTC status codes.  
  --!< Group number for FLEXIO CAMERA status codes.  
  --!< Group number for LPC_SPI status codes.  
  --!< Group number for LPC_USART status codes.  
  --!< Group number for DMIC status codes.  
  --!< Group number for SDIF status codes. 
  --!< Group number for SPIFI status codes.  
  --!< Group number for OTP status codes.  
  --!< Group number for MCAN status codes.  
  --!< Group number for CAAM status codes.  
  --!< Group number for ECSPI status codes.  
  --!< Group number for USDHC status codes. 
  --!< Group number for LPC_I2C status codes. 
  --!< Group number for DCP status codes. 
  --!< Group number for MSCAN status codes. 
  --!< Group number for ESAI status codes.  
  --!< Group number for FLEXSPI status codes.  
  --!< Group number for MMDC status codes.  
  --!< Group number for MIC status codes.  
  --!< Group number for SDMA status codes.  
  --!< Group number for ICS status codes.  
  --!< Group number for SPDIF status codes.  
  --!< Group number for LPC_MINISPI status codes.  
  --!< Group number for Hashcrypt status codes  
  --!< Group number for LPC_SPI_SSP status codes.  
  --!< Group number for I3C status codes  
  --!< Group number for LPC_I2C_1 status codes.  
  --!< Group number for NOTIFIER status codes.  
  --!< Group number for debug console status codes.  
  --!< Group number for SEMC status codes.  
  --!< Starting number for application groups.  
  --!< Group number for IAP status codes  
  --!< Group number for SFA status codes 
  --!< Group number for SPC status codes.  
  --!< Group number for PUF status codes.  
  --!< Group number for touch panel status codes  
  --!< Group number for VBAT status codes  
  --!< Group number for XSPI status codes  
  --!< Group number for PNGDEC status codes  
  --!< Group number for JPEGDEC status codes  
  --!< Group number for AUDMIX status codes  
  --!< Group number for HAL GPIO status codes.  
  --!< Group number for HAL UART status codes.  
  --!< Group number for HAL TIMER status codes.  
  --!< Group number for HAL SPI status codes.  
  --!< Group number for HAL I2C status codes.  
  --!< Group number for HAL FLASH status codes.  
  --!< Group number for HAL PWM status codes.  
  --!< Group number for HAL RNG status codes.  
  --!< Group number for HAL I2S status codes.  
  --!< Group number for HAL ADC SENSOR status codes.  
  --!< Group number for TiMER MANAGER status codes.  
  --!< Group number for SERIAL MANAGER status codes.  
  --!< Group number for LED status codes.  
  --!< Group number for BUTTON status codes.  
  --!< Group number for EXTERN EEPROM status codes.  
  --!< Group number for SHELL status codes.  
  --!< Group number for MEM MANAGER status codes.  
  --!< Group number for List status codes.  
  --!< Group number for OSA status codes.  
  --!< Group number for Common task status codes.  
  --!< Group number for messaging status codes.  
  --!< Group number for OCOTP status codes.  
  --!< Group number for FLEXSPINOR status codes. 
  --!< Group number for codec status codes.  
  --!< Group number for codec status ASRC.  
  --!< Group number for codec status codes.  
  --!< Group number for SDIOSLV status codes.  
  --!< Group number for MECC status codes.  
  --!< Group number for ENET_QOS status codes.  
  --!< Group number for LOG status codes.  
  --!< Group number for I3CBUS status codes.  
  --!< Group number for QSCI status codes.  
  --!< Group number for ELEMU status codes.  
  --!< Group number for QSPI status codes.  
  --!< Group number for POWER_MANAGER status codes.  
  --!< Group number for IPED status codes.  
  --!< Group number for ELS PKC status codes.  
  --!< Group number for CSS PKC status codes.  
  --!< Group number for HOSTIF status codes.  
  --!< Group number for CLIF status codes.  
  --!< Group number for BMA status codes.  
  --!< Group number for NETC status codes.  
  --!< Group number for ELE status codes.  
  --!< Group number for GLIKEY status codes.  
  --!< Group number for AON_POWER status codes.  
  --!< Group number for AON_COMMON status codes.  
  --!< Group number for ENDAT3 status codes.  
  --!< Group number for HIPERFACE status codes.  
  --!< Group number for NPX status codes.  
  --!< Group number for ELA_CSEC status codes.  
  --!< Group number for T-format status codes.  
  --!< Group number for A-format status codes.  
  --! \public
  -- * @brief Generic status return codes.
  --  

  --!< Generic status for Success.  
  --!< Generic status for Fail.  
  --!< Generic status for read only failure.  
  --!< Generic status for out of range access.  
  --!< Generic status for invalid argument check.  
  --!< Generic status for timeout.  
  --!< Generic status for no transfer in progress.  
  --!< Generic status for module is busy.  
  --!< Generic status for no data is found for the operation.  
  --! @brief Type used for all status and error return values.  
   subtype status_t is sys_ustdint_h.int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:239

  --!
  -- * @name Min/max macros
  -- * @{
  --  

  --! Computes the minimum of \a a and \a b.  
  --! Computes the maximum of \a a and \a b.  
  --! @}  
  --! @brief Computes the number of elements in an array.  
  --! @name UINT16_MAX/UINT32_MAX value  
  --! @{  
  --! Max value of uint16_t type.  
  --! Max value of uint32_t type.  
  --! @}  
  --! Macro to get upper 32 bits of a 64-bit value  
  --! Macro to get lower 32 bits of a 64-bit value  
  --!
  -- * @def SUPPRESS_FALL_THROUGH_WARNING()
  -- *
  -- * For switch case code block, if case section ends without "break;" statement, there wil be
  -- * fallthrough warning with compiler flag -Wextra or -Wimplicit-fallthrough=n when using armgcc.
  -- * To suppress this warning, "SUPPRESS_FALL_THROUGH_WARNING();" need to be added at the end of each
  -- * case section which misses "break;"statement.
  --  

  --******************************************************************************
  -- * API
  -- ***************************************************************************** 

  --!
  -- * @brief Allocate memory with given alignment and aligned size.
  -- *
  -- * This is provided to support the dynamically allocated memory
  -- * used in cache-able region.
  -- * @param size The length required to malloc.
  -- * @param alignbytes The alignment size.
  -- * @retval The allocated memory.
  --  

   function SDK_Malloc (size : stddef_h.size_t; alignbytes : stddef_h.size_t) return System.Address  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "SDK_Malloc";

  --!
  -- * @brief Free memory.
  -- *
  -- * @param ptr The memory to be release.
  --  

   procedure SDK_Free (ptr : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "SDK_Free";

  --!
  -- * @brief Delay at least for some time.
  -- *  Please note that, this API uses while loop for delay, different run-time environments make the time not precise,
  -- *  if precise delay count was needed, please implement a new delay function with hardware timer.
  -- *
  -- * @param delayTime_us  Delay time in unit of microsecond.
  -- * @param coreClock_Hz  Core clock frequency with Hz.
  --  

   procedure SDK_DelayAtLeastUs (delayTime_us : sys_ustdint_h.uint32_t; coreClock_Hz : sys_ustdint_h.uint32_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk-ng/drivers/common/fsl_common.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "SDK_DelayAtLeastUs";

  --! @}  
end fsl_common_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
