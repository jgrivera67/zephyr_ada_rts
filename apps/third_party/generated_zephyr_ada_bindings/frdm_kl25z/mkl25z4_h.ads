pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;

package MKL25Z4_h is

   MCU_MEM_MAP_VERSION : constant := 16#0200#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:107

   MCU_MEM_MAP_VERSION_MINOR : constant := 16#0005#;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:109

   NUMBER_OF_INT_VECTORS : constant := 48;  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:122

   ADC_SC1_ADCH_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:379
   ADC_SC1_ADCH_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:380
   --  arg-macro: function ADC_SC1_ADCH (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC1_ADCH_SHIFT)) and ADC_SC1_ADCH_MASK;

   ADC_SC1_DIFF_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:382
   ADC_SC1_DIFF_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:383
   --  arg-macro: function ADC_SC1_DIFF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC1_DIFF_SHIFT)) and ADC_SC1_DIFF_MASK;

   ADC_SC1_AIEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:385
   ADC_SC1_AIEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:386
   --  arg-macro: function ADC_SC1_AIEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC1_AIEN_SHIFT)) and ADC_SC1_AIEN_MASK;

   ADC_SC1_COCO_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:388
   ADC_SC1_COCO_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:389
   --  arg-macro: function ADC_SC1_COCO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC1_COCO_SHIFT)) and ADC_SC1_COCO_MASK;

   ADC_SC1_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:393

   ADC_CFG1_ADICLK_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:396
   ADC_CFG1_ADICLK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:397
   --  arg-macro: function ADC_CFG1_ADICLK (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG1_ADICLK_SHIFT)) and ADC_CFG1_ADICLK_MASK;

   ADC_CFG1_MODE_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:399
   ADC_CFG1_MODE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:400
   --  arg-macro: function ADC_CFG1_MODE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG1_MODE_SHIFT)) and ADC_CFG1_MODE_MASK;

   ADC_CFG1_ADLSMP_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:402
   ADC_CFG1_ADLSMP_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:403
   --  arg-macro: function ADC_CFG1_ADLSMP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG1_ADLSMP_SHIFT)) and ADC_CFG1_ADLSMP_MASK;

   ADC_CFG1_ADIV_MASK : constant := (16#60#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:405
   ADC_CFG1_ADIV_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:406
   --  arg-macro: function ADC_CFG1_ADIV (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG1_ADIV_SHIFT)) and ADC_CFG1_ADIV_MASK;

   ADC_CFG1_ADLPC_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:408
   ADC_CFG1_ADLPC_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:409
   --  arg-macro: function ADC_CFG1_ADLPC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG1_ADLPC_SHIFT)) and ADC_CFG1_ADLPC_MASK;

   ADC_CFG2_ADLSTS_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:413
   ADC_CFG2_ADLSTS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:414
   --  arg-macro: function ADC_CFG2_ADLSTS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG2_ADLSTS_SHIFT)) and ADC_CFG2_ADLSTS_MASK;

   ADC_CFG2_ADHSC_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:416
   ADC_CFG2_ADHSC_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:417
   --  arg-macro: function ADC_CFG2_ADHSC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG2_ADHSC_SHIFT)) and ADC_CFG2_ADHSC_MASK;

   ADC_CFG2_ADACKEN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:419
   ADC_CFG2_ADACKEN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:420
   --  arg-macro: function ADC_CFG2_ADACKEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG2_ADACKEN_SHIFT)) and ADC_CFG2_ADACKEN_MASK;

   ADC_CFG2_MUXSEL_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:422
   ADC_CFG2_MUXSEL_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:423
   --  arg-macro: function ADC_CFG2_MUXSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CFG2_MUXSEL_SHIFT)) and ADC_CFG2_MUXSEL_MASK;

   ADC_R_D_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:427
   ADC_R_D_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:428
   --  arg-macro: function ADC_R_D (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_R_D_SHIFT)) and ADC_R_D_MASK;

   ADC_R_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:432

   ADC_CV1_CV_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:435
   ADC_CV1_CV_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:436
   --  arg-macro: function ADC_CV1_CV (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CV1_CV_SHIFT)) and ADC_CV1_CV_MASK;

   ADC_CV2_CV_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:440
   ADC_CV2_CV_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:441
   --  arg-macro: function ADC_CV2_CV (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CV2_CV_SHIFT)) and ADC_CV2_CV_MASK;

   ADC_SC2_REFSEL_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:445
   ADC_SC2_REFSEL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:446
   --  arg-macro: function ADC_SC2_REFSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC2_REFSEL_SHIFT)) and ADC_SC2_REFSEL_MASK;

   ADC_SC2_DMAEN_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:448
   ADC_SC2_DMAEN_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:449
   --  arg-macro: function ADC_SC2_DMAEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC2_DMAEN_SHIFT)) and ADC_SC2_DMAEN_MASK;

   ADC_SC2_ACREN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:451
   ADC_SC2_ACREN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:452
   --  arg-macro: function ADC_SC2_ACREN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC2_ACREN_SHIFT)) and ADC_SC2_ACREN_MASK;

   ADC_SC2_ACFGT_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:454
   ADC_SC2_ACFGT_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:455
   --  arg-macro: function ADC_SC2_ACFGT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC2_ACFGT_SHIFT)) and ADC_SC2_ACFGT_MASK;

   ADC_SC2_ACFE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:457
   ADC_SC2_ACFE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:458
   --  arg-macro: function ADC_SC2_ACFE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC2_ACFE_SHIFT)) and ADC_SC2_ACFE_MASK;

   ADC_SC2_ADTRG_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:460
   ADC_SC2_ADTRG_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:461
   --  arg-macro: function ADC_SC2_ADTRG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC2_ADTRG_SHIFT)) and ADC_SC2_ADTRG_MASK;

   ADC_SC2_ADACT_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:463
   ADC_SC2_ADACT_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:464
   --  arg-macro: function ADC_SC2_ADACT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC2_ADACT_SHIFT)) and ADC_SC2_ADACT_MASK;

   ADC_SC3_AVGS_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:468
   ADC_SC3_AVGS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:469
   --  arg-macro: function ADC_SC3_AVGS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC3_AVGS_SHIFT)) and ADC_SC3_AVGS_MASK;

   ADC_SC3_AVGE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:471
   ADC_SC3_AVGE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:472
   --  arg-macro: function ADC_SC3_AVGE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC3_AVGE_SHIFT)) and ADC_SC3_AVGE_MASK;

   ADC_SC3_ADCO_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:474
   ADC_SC3_ADCO_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:475
   --  arg-macro: function ADC_SC3_ADCO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC3_ADCO_SHIFT)) and ADC_SC3_ADCO_MASK;

   ADC_SC3_CALF_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:477
   ADC_SC3_CALF_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:478
   --  arg-macro: function ADC_SC3_CALF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC3_CALF_SHIFT)) and ADC_SC3_CALF_MASK;

   ADC_SC3_CAL_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:480
   ADC_SC3_CAL_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:481
   --  arg-macro: function ADC_SC3_CAL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_SC3_CAL_SHIFT)) and ADC_SC3_CAL_MASK;

   ADC_OFS_OFS_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:485
   ADC_OFS_OFS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:486
   --  arg-macro: function ADC_OFS_OFS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_OFS_OFS_SHIFT)) and ADC_OFS_OFS_MASK;

   ADC_PG_PG_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:490
   ADC_PG_PG_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:491
   --  arg-macro: function ADC_PG_PG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_PG_PG_SHIFT)) and ADC_PG_PG_MASK;

   ADC_MG_MG_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:495
   ADC_MG_MG_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:496
   --  arg-macro: function ADC_MG_MG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_MG_MG_SHIFT)) and ADC_MG_MG_MASK;

   ADC_CLPD_CLPD_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:500
   ADC_CLPD_CLPD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:501
   --  arg-macro: function ADC_CLPD_CLPD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLPD_CLPD_SHIFT)) and ADC_CLPD_CLPD_MASK;

   ADC_CLPS_CLPS_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:505
   ADC_CLPS_CLPS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:506
   --  arg-macro: function ADC_CLPS_CLPS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLPS_CLPS_SHIFT)) and ADC_CLPS_CLPS_MASK;

   ADC_CLP4_CLP4_MASK : constant := (16#3FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:510
   ADC_CLP4_CLP4_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:511
   --  arg-macro: function ADC_CLP4_CLP4 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLP4_CLP4_SHIFT)) and ADC_CLP4_CLP4_MASK;

   ADC_CLP3_CLP3_MASK : constant := (16#1FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:515
   ADC_CLP3_CLP3_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:516
   --  arg-macro: function ADC_CLP3_CLP3 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLP3_CLP3_SHIFT)) and ADC_CLP3_CLP3_MASK;

   ADC_CLP2_CLP2_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:520
   ADC_CLP2_CLP2_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:521
   --  arg-macro: function ADC_CLP2_CLP2 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLP2_CLP2_SHIFT)) and ADC_CLP2_CLP2_MASK;

   ADC_CLP1_CLP1_MASK : constant := (16#7F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:525
   ADC_CLP1_CLP1_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:526
   --  arg-macro: function ADC_CLP1_CLP1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLP1_CLP1_SHIFT)) and ADC_CLP1_CLP1_MASK;

   ADC_CLP0_CLP0_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:530
   ADC_CLP0_CLP0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:531
   --  arg-macro: function ADC_CLP0_CLP0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLP0_CLP0_SHIFT)) and ADC_CLP0_CLP0_MASK;

   ADC_CLMD_CLMD_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:535
   ADC_CLMD_CLMD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:536
   --  arg-macro: function ADC_CLMD_CLMD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLMD_CLMD_SHIFT)) and ADC_CLMD_CLMD_MASK;

   ADC_CLMS_CLMS_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:540
   ADC_CLMS_CLMS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:541
   --  arg-macro: function ADC_CLMS_CLMS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLMS_CLMS_SHIFT)) and ADC_CLMS_CLMS_MASK;

   ADC_CLM4_CLM4_MASK : constant := (16#3FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:545
   ADC_CLM4_CLM4_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:546
   --  arg-macro: function ADC_CLM4_CLM4 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLM4_CLM4_SHIFT)) and ADC_CLM4_CLM4_MASK;

   ADC_CLM3_CLM3_MASK : constant := (16#1FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:550
   ADC_CLM3_CLM3_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:551
   --  arg-macro: function ADC_CLM3_CLM3 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLM3_CLM3_SHIFT)) and ADC_CLM3_CLM3_MASK;

   ADC_CLM2_CLM2_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:555
   ADC_CLM2_CLM2_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:556
   --  arg-macro: function ADC_CLM2_CLM2 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLM2_CLM2_SHIFT)) and ADC_CLM2_CLM2_MASK;

   ADC_CLM1_CLM1_MASK : constant := (16#7F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:560
   ADC_CLM1_CLM1_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:561
   --  arg-macro: function ADC_CLM1_CLM1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLM1_CLM1_SHIFT)) and ADC_CLM1_CLM1_MASK;

   ADC_CLM0_CLM0_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:565
   ADC_CLM0_CLM0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:566
   --  arg-macro: function ADC_CLM0_CLM0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ADC_CLM0_CLM0_SHIFT)) and ADC_CLM0_CLM0_MASK;

   ADC0_BASE : constant := (16#4003B000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:577
   --  unsupported macro: ADC0 ((ADC_Type *)ADC0_BASE)
   --  unsupported macro: ADC_BASE_ADDRS { ADC0_BASE }
   --  unsupported macro: ADC_BASE_PTRS { ADC0 }
   --  unsupported macro: ADC_IRQS { ADC0_IRQn }

   CMP_CR0_HYSTCTR_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:621
   CMP_CR0_HYSTCTR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:622
   --  arg-macro: function CMP_CR0_HYSTCTR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR0_HYSTCTR_SHIFT)) and CMP_CR0_HYSTCTR_MASK;

   CMP_CR0_FILTER_CNT_MASK : constant := (16#70#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:624
   CMP_CR0_FILTER_CNT_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:625
   --  arg-macro: function CMP_CR0_FILTER_CNT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR0_FILTER_CNT_SHIFT)) and CMP_CR0_FILTER_CNT_MASK;

   CMP_CR1_EN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:629
   CMP_CR1_EN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:630
   --  arg-macro: function CMP_CR1_EN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_EN_SHIFT)) and CMP_CR1_EN_MASK;

   CMP_CR1_OPE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:632
   CMP_CR1_OPE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:633
   --  arg-macro: function CMP_CR1_OPE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_OPE_SHIFT)) and CMP_CR1_OPE_MASK;

   CMP_CR1_COS_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:635
   CMP_CR1_COS_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:636
   --  arg-macro: function CMP_CR1_COS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_COS_SHIFT)) and CMP_CR1_COS_MASK;

   CMP_CR1_INV_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:638
   CMP_CR1_INV_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:639
   --  arg-macro: function CMP_CR1_INV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_INV_SHIFT)) and CMP_CR1_INV_MASK;

   CMP_CR1_PMODE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:641
   CMP_CR1_PMODE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:642
   --  arg-macro: function CMP_CR1_PMODE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_PMODE_SHIFT)) and CMP_CR1_PMODE_MASK;

   CMP_CR1_TRIGM_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:644
   CMP_CR1_TRIGM_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:645
   --  arg-macro: function CMP_CR1_TRIGM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_TRIGM_SHIFT)) and CMP_CR1_TRIGM_MASK;

   CMP_CR1_WE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:647
   CMP_CR1_WE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:648
   --  arg-macro: function CMP_CR1_WE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_WE_SHIFT)) and CMP_CR1_WE_MASK;

   CMP_CR1_SE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:650
   CMP_CR1_SE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:651
   --  arg-macro: function CMP_CR1_SE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_CR1_SE_SHIFT)) and CMP_CR1_SE_MASK;

   CMP_FPR_FILT_PER_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:655
   CMP_FPR_FILT_PER_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:656
   --  arg-macro: function CMP_FPR_FILT_PER (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_FPR_FILT_PER_SHIFT)) and CMP_FPR_FILT_PER_MASK;

   CMP_SCR_COUT_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:660
   CMP_SCR_COUT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:661
   --  arg-macro: function CMP_SCR_COUT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_SCR_COUT_SHIFT)) and CMP_SCR_COUT_MASK;

   CMP_SCR_CFF_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:663
   CMP_SCR_CFF_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:664
   --  arg-macro: function CMP_SCR_CFF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_SCR_CFF_SHIFT)) and CMP_SCR_CFF_MASK;

   CMP_SCR_CFR_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:666
   CMP_SCR_CFR_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:667
   --  arg-macro: function CMP_SCR_CFR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_SCR_CFR_SHIFT)) and CMP_SCR_CFR_MASK;

   CMP_SCR_IEF_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:669
   CMP_SCR_IEF_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:670
   --  arg-macro: function CMP_SCR_IEF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_SCR_IEF_SHIFT)) and CMP_SCR_IEF_MASK;

   CMP_SCR_IER_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:672
   CMP_SCR_IER_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:673
   --  arg-macro: function CMP_SCR_IER (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_SCR_IER_SHIFT)) and CMP_SCR_IER_MASK;

   CMP_SCR_DMAEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:675
   CMP_SCR_DMAEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:676
   --  arg-macro: function CMP_SCR_DMAEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_SCR_DMAEN_SHIFT)) and CMP_SCR_DMAEN_MASK;

   CMP_DACCR_VOSEL_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:680
   CMP_DACCR_VOSEL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:681
   --  arg-macro: function CMP_DACCR_VOSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_DACCR_VOSEL_SHIFT)) and CMP_DACCR_VOSEL_MASK;

   CMP_DACCR_VRSEL_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:683
   CMP_DACCR_VRSEL_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:684
   --  arg-macro: function CMP_DACCR_VRSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_DACCR_VRSEL_SHIFT)) and CMP_DACCR_VRSEL_MASK;

   CMP_DACCR_DACEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:686
   CMP_DACCR_DACEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:687
   --  arg-macro: function CMP_DACCR_DACEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_DACCR_DACEN_SHIFT)) and CMP_DACCR_DACEN_MASK;

   CMP_MUXCR_MSEL_MASK : constant := (16#7#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:691
   CMP_MUXCR_MSEL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:692
   --  arg-macro: function CMP_MUXCR_MSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_MUXCR_MSEL_SHIFT)) and CMP_MUXCR_MSEL_MASK;

   CMP_MUXCR_PSEL_MASK : constant := (16#38#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:694
   CMP_MUXCR_PSEL_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:695
   --  arg-macro: function CMP_MUXCR_PSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_MUXCR_PSEL_SHIFT)) and CMP_MUXCR_PSEL_MASK;

   CMP_MUXCR_PSTM_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:697
   CMP_MUXCR_PSTM_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:698
   --  arg-macro: function CMP_MUXCR_PSTM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << CMP_MUXCR_PSTM_SHIFT)) and CMP_MUXCR_PSTM_MASK;

   CMP0_BASE : constant := (16#40073000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:709
   --  unsupported macro: CMP0 ((CMP_Type *)CMP0_BASE)
   --  unsupported macro: CMP_BASE_ADDRS { CMP0_BASE }
   --  unsupported macro: CMP_BASE_PTRS { CMP0 }
   --  unsupported macro: CMP_IRQS { CMP0_IRQn }

   DAC_DATL_DATA0_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:756
   DAC_DATL_DATA0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:757
   --  arg-macro: function DAC_DATL_DATA0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_DATL_DATA0_SHIFT)) and DAC_DATL_DATA0_MASK;

   DAC_DATL_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:761

   DAC_DATH_DATA1_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:764
   DAC_DATH_DATA1_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:765
   --  arg-macro: function DAC_DATH_DATA1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_DATH_DATA1_SHIFT)) and DAC_DATH_DATA1_MASK;

   DAC_DATH_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:769

   DAC_SR_DACBFRPBF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:772
   DAC_SR_DACBFRPBF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:773
   --  arg-macro: function DAC_SR_DACBFRPBF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_SR_DACBFRPBF_SHIFT)) and DAC_SR_DACBFRPBF_MASK;

   DAC_SR_DACBFRPTF_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:775
   DAC_SR_DACBFRPTF_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:776
   --  arg-macro: function DAC_SR_DACBFRPTF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_SR_DACBFRPTF_SHIFT)) and DAC_SR_DACBFRPTF_MASK;

   DAC_C0_DACBBIEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:780
   DAC_C0_DACBBIEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:781
   --  arg-macro: function DAC_C0_DACBBIEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C0_DACBBIEN_SHIFT)) and DAC_C0_DACBBIEN_MASK;

   DAC_C0_DACBTIEN_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:783
   DAC_C0_DACBTIEN_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:784
   --  arg-macro: function DAC_C0_DACBTIEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C0_DACBTIEN_SHIFT)) and DAC_C0_DACBTIEN_MASK;

   DAC_C0_LPEN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:786
   DAC_C0_LPEN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:787
   --  arg-macro: function DAC_C0_LPEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C0_LPEN_SHIFT)) and DAC_C0_LPEN_MASK;

   DAC_C0_DACSWTRG_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:789
   DAC_C0_DACSWTRG_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:790
   --  arg-macro: function DAC_C0_DACSWTRG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C0_DACSWTRG_SHIFT)) and DAC_C0_DACSWTRG_MASK;

   DAC_C0_DACTRGSEL_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:792
   DAC_C0_DACTRGSEL_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:793
   --  arg-macro: function DAC_C0_DACTRGSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C0_DACTRGSEL_SHIFT)) and DAC_C0_DACTRGSEL_MASK;

   DAC_C0_DACRFS_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:795
   DAC_C0_DACRFS_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:796
   --  arg-macro: function DAC_C0_DACRFS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C0_DACRFS_SHIFT)) and DAC_C0_DACRFS_MASK;

   DAC_C0_DACEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:798
   DAC_C0_DACEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:799
   --  arg-macro: function DAC_C0_DACEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C0_DACEN_SHIFT)) and DAC_C0_DACEN_MASK;

   DAC_C1_DACBFEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:803
   DAC_C1_DACBFEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:804
   --  arg-macro: function DAC_C1_DACBFEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C1_DACBFEN_SHIFT)) and DAC_C1_DACBFEN_MASK;

   DAC_C1_DACBFMD_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:806
   DAC_C1_DACBFMD_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:807
   --  arg-macro: function DAC_C1_DACBFMD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C1_DACBFMD_SHIFT)) and DAC_C1_DACBFMD_MASK;

   DAC_C1_DMAEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:809
   DAC_C1_DMAEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:810
   --  arg-macro: function DAC_C1_DMAEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C1_DMAEN_SHIFT)) and DAC_C1_DMAEN_MASK;

   DAC_C2_DACBFUP_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:814
   DAC_C2_DACBFUP_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:815
   --  arg-macro: function DAC_C2_DACBFUP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C2_DACBFUP_SHIFT)) and DAC_C2_DACBFUP_MASK;

   DAC_C2_DACBFRP_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:817
   DAC_C2_DACBFRP_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:818
   --  arg-macro: function DAC_C2_DACBFRP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DAC_C2_DACBFRP_SHIFT)) and DAC_C2_DACBFRP_MASK;

   DAC0_BASE : constant := (16#4003F000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:829
   --  unsupported macro: DAC0 ((DAC_Type *)DAC0_BASE)
   --  unsupported macro: DAC_BASE_ADDRS { DAC0_BASE }
   --  unsupported macro: DAC_BASE_PTRS { DAC0 }
   --  unsupported macro: DAC_IRQS { DAC0_IRQn }

   DMA_SAR_SAR_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:880
   DMA_SAR_SAR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:881
   --  arg-macro: function DMA_SAR_SAR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_SAR_SAR_SHIFT)) and DMA_SAR_SAR_MASK;

   DMA_SAR_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:885

   DMA_DAR_DAR_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:888
   DMA_DAR_DAR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:889
   --  arg-macro: function DMA_DAR_DAR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DAR_DAR_SHIFT)) and DMA_DAR_DAR_MASK;

   DMA_DAR_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:893

   DMA_DSR_BCR_BCR_MASK : constant := (16#FFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:896
   DMA_DSR_BCR_BCR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:897
   --  arg-macro: function DMA_DSR_BCR_BCR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DSR_BCR_BCR_SHIFT)) and DMA_DSR_BCR_BCR_MASK;

   DMA_DSR_BCR_DONE_MASK : constant := (16#1000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:899
   DMA_DSR_BCR_DONE_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:900
   --  arg-macro: function DMA_DSR_BCR_DONE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DSR_BCR_DONE_SHIFT)) and DMA_DSR_BCR_DONE_MASK;

   DMA_DSR_BCR_BSY_MASK : constant := (16#2000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:902
   DMA_DSR_BCR_BSY_SHIFT : constant := (25);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:903
   --  arg-macro: function DMA_DSR_BCR_BSY (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DSR_BCR_BSY_SHIFT)) and DMA_DSR_BCR_BSY_MASK;

   DMA_DSR_BCR_REQ_MASK : constant := (16#4000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:905
   DMA_DSR_BCR_REQ_SHIFT : constant := (26);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:906
   --  arg-macro: function DMA_DSR_BCR_REQ (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DSR_BCR_REQ_SHIFT)) and DMA_DSR_BCR_REQ_MASK;

   DMA_DSR_BCR_BED_MASK : constant := (16#10000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:908
   DMA_DSR_BCR_BED_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:909
   --  arg-macro: function DMA_DSR_BCR_BED (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DSR_BCR_BED_SHIFT)) and DMA_DSR_BCR_BED_MASK;

   DMA_DSR_BCR_BES_MASK : constant := (16#20000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:911
   DMA_DSR_BCR_BES_SHIFT : constant := (29);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:912
   --  arg-macro: function DMA_DSR_BCR_BES (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DSR_BCR_BES_SHIFT)) and DMA_DSR_BCR_BES_MASK;

   DMA_DSR_BCR_CE_MASK : constant := (16#40000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:914
   DMA_DSR_BCR_CE_SHIFT : constant := (30);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:915
   --  arg-macro: function DMA_DSR_BCR_CE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DSR_BCR_CE_SHIFT)) and DMA_DSR_BCR_CE_MASK;

   DMA_DSR_BCR_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:919

   DMA_DSR_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:922

   DMA_DCR_LCH2_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:925
   DMA_DCR_LCH2_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:926
   --  arg-macro: function DMA_DCR_LCH2 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_LCH2_SHIFT)) and DMA_DCR_LCH2_MASK;

   DMA_DCR_LCH1_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:928
   DMA_DCR_LCH1_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:929
   --  arg-macro: function DMA_DCR_LCH1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_LCH1_SHIFT)) and DMA_DCR_LCH1_MASK;

   DMA_DCR_LINKCC_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:931
   DMA_DCR_LINKCC_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:932
   --  arg-macro: function DMA_DCR_LINKCC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_LINKCC_SHIFT)) and DMA_DCR_LINKCC_MASK;

   DMA_DCR_D_REQ_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:934
   DMA_DCR_D_REQ_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:935
   --  arg-macro: function DMA_DCR_D_REQ (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_D_REQ_SHIFT)) and DMA_DCR_D_REQ_MASK;

   DMA_DCR_DMOD_MASK : constant := (16#F00#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:937
   DMA_DCR_DMOD_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:938
   --  arg-macro: function DMA_DCR_DMOD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_DMOD_SHIFT)) and DMA_DCR_DMOD_MASK;

   DMA_DCR_SMOD_MASK : constant := (16#F000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:940
   DMA_DCR_SMOD_SHIFT : constant := (12);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:941
   --  arg-macro: function DMA_DCR_SMOD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_SMOD_SHIFT)) and DMA_DCR_SMOD_MASK;

   DMA_DCR_START_MASK : constant := (16#10000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:943
   DMA_DCR_START_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:944
   --  arg-macro: function DMA_DCR_START (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_START_SHIFT)) and DMA_DCR_START_MASK;

   DMA_DCR_DSIZE_MASK : constant := (16#60000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:946
   DMA_DCR_DSIZE_SHIFT : constant := (17);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:947
   --  arg-macro: function DMA_DCR_DSIZE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_DSIZE_SHIFT)) and DMA_DCR_DSIZE_MASK;

   DMA_DCR_DINC_MASK : constant := (16#80000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:949
   DMA_DCR_DINC_SHIFT : constant := (19);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:950
   --  arg-macro: function DMA_DCR_DINC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_DINC_SHIFT)) and DMA_DCR_DINC_MASK;

   DMA_DCR_SSIZE_MASK : constant := (16#300000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:952
   DMA_DCR_SSIZE_SHIFT : constant := (20);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:953
   --  arg-macro: function DMA_DCR_SSIZE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_SSIZE_SHIFT)) and DMA_DCR_SSIZE_MASK;

   DMA_DCR_SINC_MASK : constant := (16#400000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:955
   DMA_DCR_SINC_SHIFT : constant := (22);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:956
   --  arg-macro: function DMA_DCR_SINC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_SINC_SHIFT)) and DMA_DCR_SINC_MASK;

   DMA_DCR_EADREQ_MASK : constant := (16#800000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:958
   DMA_DCR_EADREQ_SHIFT : constant := (23);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:959
   --  arg-macro: function DMA_DCR_EADREQ (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_EADREQ_SHIFT)) and DMA_DCR_EADREQ_MASK;

   DMA_DCR_AA_MASK : constant := (16#10000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:961
   DMA_DCR_AA_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:962
   --  arg-macro: function DMA_DCR_AA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_AA_SHIFT)) and DMA_DCR_AA_MASK;

   DMA_DCR_CS_MASK : constant := (16#20000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:964
   DMA_DCR_CS_SHIFT : constant := (29);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:965
   --  arg-macro: function DMA_DCR_CS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_CS_SHIFT)) and DMA_DCR_CS_MASK;

   DMA_DCR_ERQ_MASK : constant := (16#40000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:967
   DMA_DCR_ERQ_SHIFT : constant := (30);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:968
   --  arg-macro: function DMA_DCR_ERQ (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_ERQ_SHIFT)) and DMA_DCR_ERQ_MASK;

   DMA_DCR_EINT_MASK : constant := (16#80000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:970
   DMA_DCR_EINT_SHIFT : constant := (31);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:971
   --  arg-macro: function DMA_DCR_EINT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << DMA_DCR_EINT_SHIFT)) and DMA_DCR_EINT_MASK;

   DMA_DCR_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:975

   DMA_BASE : constant := (16#40008000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:985
   --  unsupported macro: DMA0 ((DMA_Type *)DMA_BASE)
   --  unsupported macro: DMA_BASE_ADDRS { DMA_BASE }
   --  unsupported macro: DMA_BASE_PTRS { DMA0 }
   --  unsupported macro: DMA_CHN_IRQS { { DMA0_IRQn, DMA1_IRQn, DMA2_IRQn, DMA3_IRQn } }

   DMAMUX_CHCFG_SOURCE_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1024
   DMAMUX_CHCFG_SOURCE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1025
   --  arg-macro: function DMAMUX_CHCFG_SOURCE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DMAMUX_CHCFG_SOURCE_SHIFT)) and DMAMUX_CHCFG_SOURCE_MASK;

   DMAMUX_CHCFG_TRIG_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1027
   DMAMUX_CHCFG_TRIG_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1028
   --  arg-macro: function DMAMUX_CHCFG_TRIG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DMAMUX_CHCFG_TRIG_SHIFT)) and DMAMUX_CHCFG_TRIG_MASK;

   DMAMUX_CHCFG_ENBL_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1030
   DMAMUX_CHCFG_ENBL_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1031
   --  arg-macro: function DMAMUX_CHCFG_ENBL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << DMAMUX_CHCFG_ENBL_SHIFT)) and DMAMUX_CHCFG_ENBL_MASK;

   DMAMUX_CHCFG_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1035

   DMAMUX0_BASE : constant := (16#40021000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1045
   --  unsupported macro: DMAMUX0 ((DMAMUX_Type *)DMAMUX0_BASE)
   --  unsupported macro: DMAMUX_BASE_ADDRS { DMAMUX0_BASE }
   --  unsupported macro: DMAMUX_BASE_PTRS { DMAMUX0 }

   FGPIO_PDOR_PDO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1087
   FGPIO_PDOR_PDO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1088
   --  arg-macro: function FGPIO_PDOR_PDO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << FGPIO_PDOR_PDO_SHIFT)) and FGPIO_PDOR_PDO_MASK;

   FGPIO_PSOR_PTSO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1092
   FGPIO_PSOR_PTSO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1093
   --  arg-macro: function FGPIO_PSOR_PTSO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << FGPIO_PSOR_PTSO_SHIFT)) and FGPIO_PSOR_PTSO_MASK;

   FGPIO_PCOR_PTCO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1097
   FGPIO_PCOR_PTCO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1098
   --  arg-macro: function FGPIO_PCOR_PTCO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << FGPIO_PCOR_PTCO_SHIFT)) and FGPIO_PCOR_PTCO_MASK;

   FGPIO_PTOR_PTTO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1102
   FGPIO_PTOR_PTTO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1103
   --  arg-macro: function FGPIO_PTOR_PTTO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << FGPIO_PTOR_PTTO_SHIFT)) and FGPIO_PTOR_PTTO_MASK;

   FGPIO_PDIR_PDI_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1107
   FGPIO_PDIR_PDI_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1108
   --  arg-macro: function FGPIO_PDIR_PDI (x)
   --    return ((uint32_t)(((uint32_t)(x)) << FGPIO_PDIR_PDI_SHIFT)) and FGPIO_PDIR_PDI_MASK;

   FGPIO_PDDR_PDD_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1112
   FGPIO_PDDR_PDD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1113
   --  arg-macro: function FGPIO_PDDR_PDD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << FGPIO_PDDR_PDD_SHIFT)) and FGPIO_PDDR_PDD_MASK;

   FGPIOA_BASE : constant := (16#F80FF000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1124
   --  unsupported macro: FGPIOA ((FGPIO_Type *)FGPIOA_BASE)

   FGPIOB_BASE : constant := (16#F80FF040#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1128
   --  unsupported macro: FGPIOB ((FGPIO_Type *)FGPIOB_BASE)

   FGPIOC_BASE : constant := (16#F80FF080#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1132
   --  unsupported macro: FGPIOC ((FGPIO_Type *)FGPIOC_BASE)

   FGPIOD_BASE : constant := (16#F80FF0C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1136
   --  unsupported macro: FGPIOD ((FGPIO_Type *)FGPIOD_BASE)

   FGPIOE_BASE : constant := (16#F80FF100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1140
   --  unsupported macro: FGPIOE ((FGPIO_Type *)FGPIOE_BASE)
   --  unsupported macro: FGPIO_BASE_ADDRS { FGPIOA_BASE, FGPIOB_BASE, FGPIOC_BASE, FGPIOD_BASE, FGPIOE_BASE }
   --  unsupported macro: FGPIO_BASE_PTRS { FGPIOA, FGPIOB, FGPIOC, FGPIOD, FGPIOE }

   FTFA_FSTAT_MGSTAT0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1196
   FTFA_FSTAT_MGSTAT0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1197
   --  arg-macro: function FTFA_FSTAT_MGSTAT0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSTAT_MGSTAT0_SHIFT)) and FTFA_FSTAT_MGSTAT0_MASK;

   FTFA_FSTAT_FPVIOL_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1199
   FTFA_FSTAT_FPVIOL_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1200
   --  arg-macro: function FTFA_FSTAT_FPVIOL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSTAT_FPVIOL_SHIFT)) and FTFA_FSTAT_FPVIOL_MASK;

   FTFA_FSTAT_ACCERR_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1202
   FTFA_FSTAT_ACCERR_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1203
   --  arg-macro: function FTFA_FSTAT_ACCERR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSTAT_ACCERR_SHIFT)) and FTFA_FSTAT_ACCERR_MASK;

   FTFA_FSTAT_RDCOLERR_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1205
   FTFA_FSTAT_RDCOLERR_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1206
   --  arg-macro: function FTFA_FSTAT_RDCOLERR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSTAT_RDCOLERR_SHIFT)) and FTFA_FSTAT_RDCOLERR_MASK;

   FTFA_FSTAT_CCIF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1208
   FTFA_FSTAT_CCIF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1209
   --  arg-macro: function FTFA_FSTAT_CCIF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSTAT_CCIF_SHIFT)) and FTFA_FSTAT_CCIF_MASK;

   FTFA_FCNFG_ERSSUSP_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1213
   FTFA_FCNFG_ERSSUSP_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1214
   --  arg-macro: function FTFA_FCNFG_ERSSUSP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCNFG_ERSSUSP_SHIFT)) and FTFA_FCNFG_ERSSUSP_MASK;

   FTFA_FCNFG_ERSAREQ_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1216
   FTFA_FCNFG_ERSAREQ_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1217
   --  arg-macro: function FTFA_FCNFG_ERSAREQ (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCNFG_ERSAREQ_SHIFT)) and FTFA_FCNFG_ERSAREQ_MASK;

   FTFA_FCNFG_RDCOLLIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1219
   FTFA_FCNFG_RDCOLLIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1220
   --  arg-macro: function FTFA_FCNFG_RDCOLLIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCNFG_RDCOLLIE_SHIFT)) and FTFA_FCNFG_RDCOLLIE_MASK;

   FTFA_FCNFG_CCIE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1222
   FTFA_FCNFG_CCIE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1223
   --  arg-macro: function FTFA_FCNFG_CCIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCNFG_CCIE_SHIFT)) and FTFA_FCNFG_CCIE_MASK;

   FTFA_FSEC_SEC_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1227
   FTFA_FSEC_SEC_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1228
   --  arg-macro: function FTFA_FSEC_SEC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSEC_SEC_SHIFT)) and FTFA_FSEC_SEC_MASK;

   FTFA_FSEC_FSLACC_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1230
   FTFA_FSEC_FSLACC_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1231
   --  arg-macro: function FTFA_FSEC_FSLACC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSEC_FSLACC_SHIFT)) and FTFA_FSEC_FSLACC_MASK;

   FTFA_FSEC_MEEN_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1233
   FTFA_FSEC_MEEN_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1234
   --  arg-macro: function FTFA_FSEC_MEEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSEC_MEEN_SHIFT)) and FTFA_FSEC_MEEN_MASK;

   FTFA_FSEC_KEYEN_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1236
   FTFA_FSEC_KEYEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1237
   --  arg-macro: function FTFA_FSEC_KEYEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FSEC_KEYEN_SHIFT)) and FTFA_FSEC_KEYEN_MASK;

   FTFA_FOPT_OPT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1241
   FTFA_FOPT_OPT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1242
   --  arg-macro: function FTFA_FOPT_OPT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FOPT_OPT_SHIFT)) and FTFA_FOPT_OPT_MASK;

   FTFA_FCCOB3_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1246
   FTFA_FCCOB3_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1247
   --  arg-macro: function FTFA_FCCOB3_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB3_CCOBn_SHIFT)) and FTFA_FCCOB3_CCOBn_MASK;

   FTFA_FCCOB2_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1251
   FTFA_FCCOB2_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1252
   --  arg-macro: function FTFA_FCCOB2_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB2_CCOBn_SHIFT)) and FTFA_FCCOB2_CCOBn_MASK;

   FTFA_FCCOB1_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1256
   FTFA_FCCOB1_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1257
   --  arg-macro: function FTFA_FCCOB1_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB1_CCOBn_SHIFT)) and FTFA_FCCOB1_CCOBn_MASK;

   FTFA_FCCOB0_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1261
   FTFA_FCCOB0_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1262
   --  arg-macro: function FTFA_FCCOB0_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB0_CCOBn_SHIFT)) and FTFA_FCCOB0_CCOBn_MASK;

   FTFA_FCCOB7_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1266
   FTFA_FCCOB7_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1267
   --  arg-macro: function FTFA_FCCOB7_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB7_CCOBn_SHIFT)) and FTFA_FCCOB7_CCOBn_MASK;

   FTFA_FCCOB6_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1271
   FTFA_FCCOB6_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1272
   --  arg-macro: function FTFA_FCCOB6_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB6_CCOBn_SHIFT)) and FTFA_FCCOB6_CCOBn_MASK;

   FTFA_FCCOB5_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1276
   FTFA_FCCOB5_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1277
   --  arg-macro: function FTFA_FCCOB5_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB5_CCOBn_SHIFT)) and FTFA_FCCOB5_CCOBn_MASK;

   FTFA_FCCOB4_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1281
   FTFA_FCCOB4_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1282
   --  arg-macro: function FTFA_FCCOB4_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB4_CCOBn_SHIFT)) and FTFA_FCCOB4_CCOBn_MASK;

   FTFA_FCCOBB_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1286
   FTFA_FCCOBB_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1287
   --  arg-macro: function FTFA_FCCOBB_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOBB_CCOBn_SHIFT)) and FTFA_FCCOBB_CCOBn_MASK;

   FTFA_FCCOBA_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1291
   FTFA_FCCOBA_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1292
   --  arg-macro: function FTFA_FCCOBA_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOBA_CCOBn_SHIFT)) and FTFA_FCCOBA_CCOBn_MASK;

   FTFA_FCCOB9_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1296
   FTFA_FCCOB9_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1297
   --  arg-macro: function FTFA_FCCOB9_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB9_CCOBn_SHIFT)) and FTFA_FCCOB9_CCOBn_MASK;

   FTFA_FCCOB8_CCOBn_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1301
   FTFA_FCCOB8_CCOBn_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1302
   --  arg-macro: function FTFA_FCCOB8_CCOBn (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FCCOB8_CCOBn_SHIFT)) and FTFA_FCCOB8_CCOBn_MASK;

   FTFA_FPROT3_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1306
   FTFA_FPROT3_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1307
   --  arg-macro: function FTFA_FPROT3_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FPROT3_PROT_SHIFT)) and FTFA_FPROT3_PROT_MASK;

   FTFA_FPROT2_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1311
   FTFA_FPROT2_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1312
   --  arg-macro: function FTFA_FPROT2_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FPROT2_PROT_SHIFT)) and FTFA_FPROT2_PROT_MASK;

   FTFA_FPROT1_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1316
   FTFA_FPROT1_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1317
   --  arg-macro: function FTFA_FPROT1_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FPROT1_PROT_SHIFT)) and FTFA_FPROT1_PROT_MASK;

   FTFA_FPROT0_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1321
   FTFA_FPROT0_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1322
   --  arg-macro: function FTFA_FPROT0_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << FTFA_FPROT0_PROT_SHIFT)) and FTFA_FPROT0_PROT_MASK;

   FTFA_BASE : constant := (16#40020000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1333
   --  unsupported macro: FTFA ((FTFA_Type *)FTFA_BASE)
   --  unsupported macro: FTFA_BASE_ADDRS { FTFA_BASE }
   --  unsupported macro: FTFA_BASE_PTRS { FTFA }
   --  unsupported macro: FTFA_COMMAND_COMPLETE_IRQS { FTFA_IRQn }

   GPIO_PDOR_PDO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1377
   GPIO_PDOR_PDO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1378
   --  arg-macro: function GPIO_PDOR_PDO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << GPIO_PDOR_PDO_SHIFT)) and GPIO_PDOR_PDO_MASK;

   GPIO_PSOR_PTSO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1382
   GPIO_PSOR_PTSO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1383
   --  arg-macro: function GPIO_PSOR_PTSO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << GPIO_PSOR_PTSO_SHIFT)) and GPIO_PSOR_PTSO_MASK;

   GPIO_PCOR_PTCO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1387
   GPIO_PCOR_PTCO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1388
   --  arg-macro: function GPIO_PCOR_PTCO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << GPIO_PCOR_PTCO_SHIFT)) and GPIO_PCOR_PTCO_MASK;

   GPIO_PTOR_PTTO_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1392
   GPIO_PTOR_PTTO_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1393
   --  arg-macro: function GPIO_PTOR_PTTO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << GPIO_PTOR_PTTO_SHIFT)) and GPIO_PTOR_PTTO_MASK;

   GPIO_PDIR_PDI_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1397
   GPIO_PDIR_PDI_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1398
   --  arg-macro: function GPIO_PDIR_PDI (x)
   --    return ((uint32_t)(((uint32_t)(x)) << GPIO_PDIR_PDI_SHIFT)) and GPIO_PDIR_PDI_MASK;

   GPIO_PDDR_PDD_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1402
   GPIO_PDDR_PDD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1403
   --  arg-macro: function GPIO_PDDR_PDD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << GPIO_PDDR_PDD_SHIFT)) and GPIO_PDDR_PDD_MASK;

   GPIOA_BASE : constant := (16#400FF000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1414
   --  unsupported macro: GPIOA ((GPIO_Type *)GPIOA_BASE)

   GPIOB_BASE : constant := (16#400FF040#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1418
   --  unsupported macro: GPIOB ((GPIO_Type *)GPIOB_BASE)

   GPIOC_BASE : constant := (16#400FF080#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1422
   --  unsupported macro: GPIOC ((GPIO_Type *)GPIOC_BASE)

   GPIOD_BASE : constant := (16#400FF0C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1426
   --  unsupported macro: GPIOD ((GPIO_Type *)GPIOD_BASE)

   GPIOE_BASE : constant := (16#400FF100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1430
   --  unsupported macro: GPIOE ((GPIO_Type *)GPIOE_BASE)
   --  unsupported macro: GPIO_BASE_ADDRS { GPIOA_BASE, GPIOB_BASE, GPIOC_BASE, GPIOD_BASE, GPIOE_BASE }
   --  unsupported macro: GPIO_BASE_PTRS { GPIOA, GPIOB, GPIOC, GPIOD, GPIOE }

   I2C_A1_AD_MASK : constant := (16#FE#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1478
   I2C_A1_AD_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1479
   --  arg-macro: function I2C_A1_AD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_A1_AD_SHIFT)) and I2C_A1_AD_MASK;

   I2C_F_ICR_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1483
   I2C_F_ICR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1484
   --  arg-macro: function I2C_F_ICR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_F_ICR_SHIFT)) and I2C_F_ICR_MASK;

   I2C_F_MULT_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1486
   I2C_F_MULT_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1487
   --  arg-macro: function I2C_F_MULT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_F_MULT_SHIFT)) and I2C_F_MULT_MASK;

   I2C_C1_DMAEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1491
   I2C_C1_DMAEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1492
   --  arg-macro: function I2C_C1_DMAEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_DMAEN_SHIFT)) and I2C_C1_DMAEN_MASK;

   I2C_C1_WUEN_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1494
   I2C_C1_WUEN_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1495
   --  arg-macro: function I2C_C1_WUEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_WUEN_SHIFT)) and I2C_C1_WUEN_MASK;

   I2C_C1_RSTA_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1497
   I2C_C1_RSTA_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1498
   --  arg-macro: function I2C_C1_RSTA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_RSTA_SHIFT)) and I2C_C1_RSTA_MASK;

   I2C_C1_TXAK_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1500
   I2C_C1_TXAK_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1501
   --  arg-macro: function I2C_C1_TXAK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_TXAK_SHIFT)) and I2C_C1_TXAK_MASK;

   I2C_C1_TX_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1503
   I2C_C1_TX_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1504
   --  arg-macro: function I2C_C1_TX (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_TX_SHIFT)) and I2C_C1_TX_MASK;

   I2C_C1_MST_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1506
   I2C_C1_MST_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1507
   --  arg-macro: function I2C_C1_MST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_MST_SHIFT)) and I2C_C1_MST_MASK;

   I2C_C1_IICIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1509
   I2C_C1_IICIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1510
   --  arg-macro: function I2C_C1_IICIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_IICIE_SHIFT)) and I2C_C1_IICIE_MASK;

   I2C_C1_IICEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1512
   I2C_C1_IICEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1513
   --  arg-macro: function I2C_C1_IICEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C1_IICEN_SHIFT)) and I2C_C1_IICEN_MASK;

   I2C_S_RXAK_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1517
   I2C_S_RXAK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1518
   --  arg-macro: function I2C_S_RXAK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_RXAK_SHIFT)) and I2C_S_RXAK_MASK;

   I2C_S_IICIF_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1520
   I2C_S_IICIF_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1521
   --  arg-macro: function I2C_S_IICIF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_IICIF_SHIFT)) and I2C_S_IICIF_MASK;

   I2C_S_SRW_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1523
   I2C_S_SRW_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1524
   --  arg-macro: function I2C_S_SRW (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_SRW_SHIFT)) and I2C_S_SRW_MASK;

   I2C_S_RAM_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1526
   I2C_S_RAM_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1527
   --  arg-macro: function I2C_S_RAM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_RAM_SHIFT)) and I2C_S_RAM_MASK;

   I2C_S_ARBL_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1529
   I2C_S_ARBL_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1530
   --  arg-macro: function I2C_S_ARBL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_ARBL_SHIFT)) and I2C_S_ARBL_MASK;

   I2C_S_BUSY_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1532
   I2C_S_BUSY_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1533
   --  arg-macro: function I2C_S_BUSY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_BUSY_SHIFT)) and I2C_S_BUSY_MASK;

   I2C_S_IAAS_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1535
   I2C_S_IAAS_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1536
   --  arg-macro: function I2C_S_IAAS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_IAAS_SHIFT)) and I2C_S_IAAS_MASK;

   I2C_S_TCF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1538
   I2C_S_TCF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1539
   --  arg-macro: function I2C_S_TCF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_S_TCF_SHIFT)) and I2C_S_TCF_MASK;

   I2C_D_DATA_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1543
   I2C_D_DATA_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1544
   --  arg-macro: function I2C_D_DATA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_D_DATA_SHIFT)) and I2C_D_DATA_MASK;

   I2C_C2_AD_MASK : constant := (16#7#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1548
   I2C_C2_AD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1549
   --  arg-macro: function I2C_C2_AD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C2_AD_SHIFT)) and I2C_C2_AD_MASK;

   I2C_C2_RMEN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1551
   I2C_C2_RMEN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1552
   --  arg-macro: function I2C_C2_RMEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C2_RMEN_SHIFT)) and I2C_C2_RMEN_MASK;

   I2C_C2_SBRC_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1554
   I2C_C2_SBRC_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1555
   --  arg-macro: function I2C_C2_SBRC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C2_SBRC_SHIFT)) and I2C_C2_SBRC_MASK;

   I2C_C2_HDRS_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1557
   I2C_C2_HDRS_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1558
   --  arg-macro: function I2C_C2_HDRS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C2_HDRS_SHIFT)) and I2C_C2_HDRS_MASK;

   I2C_C2_ADEXT_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1560
   I2C_C2_ADEXT_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1561
   --  arg-macro: function I2C_C2_ADEXT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C2_ADEXT_SHIFT)) and I2C_C2_ADEXT_MASK;

   I2C_C2_GCAEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1563
   I2C_C2_GCAEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1564
   --  arg-macro: function I2C_C2_GCAEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_C2_GCAEN_SHIFT)) and I2C_C2_GCAEN_MASK;

   I2C_FLT_FLT_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1568
   I2C_FLT_FLT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1569
   --  arg-macro: function I2C_FLT_FLT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_FLT_FLT_SHIFT)) and I2C_FLT_FLT_MASK;

   I2C_FLT_STOPIE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1571
   I2C_FLT_STOPIE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1572
   --  arg-macro: function I2C_FLT_STOPIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_FLT_STOPIE_SHIFT)) and I2C_FLT_STOPIE_MASK;

   I2C_FLT_STOPF_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1574
   I2C_FLT_STOPF_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1575
   --  arg-macro: function I2C_FLT_STOPF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_FLT_STOPF_SHIFT)) and I2C_FLT_STOPF_MASK;

   I2C_FLT_SHEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1577
   I2C_FLT_SHEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1578
   --  arg-macro: function I2C_FLT_SHEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_FLT_SHEN_SHIFT)) and I2C_FLT_SHEN_MASK;

   I2C_RA_RAD_MASK : constant := (16#FE#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1582
   I2C_RA_RAD_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1583
   --  arg-macro: function I2C_RA_RAD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_RA_RAD_SHIFT)) and I2C_RA_RAD_MASK;

   I2C_SMB_SHTF2IE_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1587
   I2C_SMB_SHTF2IE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1588
   --  arg-macro: function I2C_SMB_SHTF2IE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_SHTF2IE_SHIFT)) and I2C_SMB_SHTF2IE_MASK;

   I2C_SMB_SHTF2_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1590
   I2C_SMB_SHTF2_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1591
   --  arg-macro: function I2C_SMB_SHTF2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_SHTF2_SHIFT)) and I2C_SMB_SHTF2_MASK;

   I2C_SMB_SHTF1_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1593
   I2C_SMB_SHTF1_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1594
   --  arg-macro: function I2C_SMB_SHTF1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_SHTF1_SHIFT)) and I2C_SMB_SHTF1_MASK;

   I2C_SMB_SLTF_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1596
   I2C_SMB_SLTF_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1597
   --  arg-macro: function I2C_SMB_SLTF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_SLTF_SHIFT)) and I2C_SMB_SLTF_MASK;

   I2C_SMB_TCKSEL_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1599
   I2C_SMB_TCKSEL_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1600
   --  arg-macro: function I2C_SMB_TCKSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_TCKSEL_SHIFT)) and I2C_SMB_TCKSEL_MASK;

   I2C_SMB_SIICAEN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1602
   I2C_SMB_SIICAEN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1603
   --  arg-macro: function I2C_SMB_SIICAEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_SIICAEN_SHIFT)) and I2C_SMB_SIICAEN_MASK;

   I2C_SMB_ALERTEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1605
   I2C_SMB_ALERTEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1606
   --  arg-macro: function I2C_SMB_ALERTEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_ALERTEN_SHIFT)) and I2C_SMB_ALERTEN_MASK;

   I2C_SMB_FACK_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1608
   I2C_SMB_FACK_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1609
   --  arg-macro: function I2C_SMB_FACK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SMB_FACK_SHIFT)) and I2C_SMB_FACK_MASK;

   I2C_A2_SAD_MASK : constant := (16#FE#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1613
   I2C_A2_SAD_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1614
   --  arg-macro: function I2C_A2_SAD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_A2_SAD_SHIFT)) and I2C_A2_SAD_MASK;

   I2C_SLTH_SSLT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1618
   I2C_SLTH_SSLT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1619
   --  arg-macro: function I2C_SLTH_SSLT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SLTH_SSLT_SHIFT)) and I2C_SLTH_SSLT_MASK;

   I2C_SLTL_SSLT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1623
   I2C_SLTL_SSLT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1624
   --  arg-macro: function I2C_SLTL_SSLT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << I2C_SLTL_SSLT_SHIFT)) and I2C_SLTL_SSLT_MASK;

   I2C0_BASE : constant := (16#40066000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1635
   --  unsupported macro: I2C0 ((I2C_Type *)I2C0_BASE)

   I2C1_BASE : constant := (16#40067000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1639
   --  unsupported macro: I2C1 ((I2C_Type *)I2C1_BASE)
   --  unsupported macro: I2C_BASE_ADDRS { I2C0_BASE, I2C1_BASE }
   --  unsupported macro: I2C_BASE_PTRS { I2C0, I2C1 }
   --  unsupported macro: I2C_IRQS { I2C0_IRQn, I2C1_IRQn }

   LLWU_PE1_WUPE0_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1687
   LLWU_PE1_WUPE0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1688
   --  arg-macro: function LLWU_PE1_WUPE0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE1_WUPE0_SHIFT)) and LLWU_PE1_WUPE0_MASK;

   LLWU_PE1_WUPE1_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1690
   LLWU_PE1_WUPE1_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1691
   --  arg-macro: function LLWU_PE1_WUPE1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE1_WUPE1_SHIFT)) and LLWU_PE1_WUPE1_MASK;

   LLWU_PE1_WUPE2_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1693
   LLWU_PE1_WUPE2_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1694
   --  arg-macro: function LLWU_PE1_WUPE2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE1_WUPE2_SHIFT)) and LLWU_PE1_WUPE2_MASK;

   LLWU_PE1_WUPE3_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1696
   LLWU_PE1_WUPE3_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1697
   --  arg-macro: function LLWU_PE1_WUPE3 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE1_WUPE3_SHIFT)) and LLWU_PE1_WUPE3_MASK;

   LLWU_PE2_WUPE4_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1701
   LLWU_PE2_WUPE4_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1702
   --  arg-macro: function LLWU_PE2_WUPE4 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE2_WUPE4_SHIFT)) and LLWU_PE2_WUPE4_MASK;

   LLWU_PE2_WUPE5_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1704
   LLWU_PE2_WUPE5_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1705
   --  arg-macro: function LLWU_PE2_WUPE5 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE2_WUPE5_SHIFT)) and LLWU_PE2_WUPE5_MASK;

   LLWU_PE2_WUPE6_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1707
   LLWU_PE2_WUPE6_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1708
   --  arg-macro: function LLWU_PE2_WUPE6 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE2_WUPE6_SHIFT)) and LLWU_PE2_WUPE6_MASK;

   LLWU_PE2_WUPE7_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1710
   LLWU_PE2_WUPE7_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1711
   --  arg-macro: function LLWU_PE2_WUPE7 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE2_WUPE7_SHIFT)) and LLWU_PE2_WUPE7_MASK;

   LLWU_PE3_WUPE8_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1715
   LLWU_PE3_WUPE8_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1716
   --  arg-macro: function LLWU_PE3_WUPE8 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE3_WUPE8_SHIFT)) and LLWU_PE3_WUPE8_MASK;

   LLWU_PE3_WUPE9_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1718
   LLWU_PE3_WUPE9_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1719
   --  arg-macro: function LLWU_PE3_WUPE9 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE3_WUPE9_SHIFT)) and LLWU_PE3_WUPE9_MASK;

   LLWU_PE3_WUPE10_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1721
   LLWU_PE3_WUPE10_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1722
   --  arg-macro: function LLWU_PE3_WUPE10 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE3_WUPE10_SHIFT)) and LLWU_PE3_WUPE10_MASK;

   LLWU_PE3_WUPE11_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1724
   LLWU_PE3_WUPE11_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1725
   --  arg-macro: function LLWU_PE3_WUPE11 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE3_WUPE11_SHIFT)) and LLWU_PE3_WUPE11_MASK;

   LLWU_PE4_WUPE12_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1729
   LLWU_PE4_WUPE12_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1730
   --  arg-macro: function LLWU_PE4_WUPE12 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE4_WUPE12_SHIFT)) and LLWU_PE4_WUPE12_MASK;

   LLWU_PE4_WUPE13_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1732
   LLWU_PE4_WUPE13_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1733
   --  arg-macro: function LLWU_PE4_WUPE13 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE4_WUPE13_SHIFT)) and LLWU_PE4_WUPE13_MASK;

   LLWU_PE4_WUPE14_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1735
   LLWU_PE4_WUPE14_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1736
   --  arg-macro: function LLWU_PE4_WUPE14 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE4_WUPE14_SHIFT)) and LLWU_PE4_WUPE14_MASK;

   LLWU_PE4_WUPE15_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1738
   LLWU_PE4_WUPE15_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1739
   --  arg-macro: function LLWU_PE4_WUPE15 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_PE4_WUPE15_SHIFT)) and LLWU_PE4_WUPE15_MASK;

   LLWU_ME_WUME0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1743
   LLWU_ME_WUME0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1744
   --  arg-macro: function LLWU_ME_WUME0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME0_SHIFT)) and LLWU_ME_WUME0_MASK;

   LLWU_ME_WUME1_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1746
   LLWU_ME_WUME1_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1747
   --  arg-macro: function LLWU_ME_WUME1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME1_SHIFT)) and LLWU_ME_WUME1_MASK;

   LLWU_ME_WUME2_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1749
   LLWU_ME_WUME2_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1750
   --  arg-macro: function LLWU_ME_WUME2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME2_SHIFT)) and LLWU_ME_WUME2_MASK;

   LLWU_ME_WUME3_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1752
   LLWU_ME_WUME3_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1753
   --  arg-macro: function LLWU_ME_WUME3 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME3_SHIFT)) and LLWU_ME_WUME3_MASK;

   LLWU_ME_WUME4_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1755
   LLWU_ME_WUME4_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1756
   --  arg-macro: function LLWU_ME_WUME4 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME4_SHIFT)) and LLWU_ME_WUME4_MASK;

   LLWU_ME_WUME5_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1758
   LLWU_ME_WUME5_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1759
   --  arg-macro: function LLWU_ME_WUME5 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME5_SHIFT)) and LLWU_ME_WUME5_MASK;

   LLWU_ME_WUME6_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1761
   LLWU_ME_WUME6_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1762
   --  arg-macro: function LLWU_ME_WUME6 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME6_SHIFT)) and LLWU_ME_WUME6_MASK;

   LLWU_ME_WUME7_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1764
   LLWU_ME_WUME7_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1765
   --  arg-macro: function LLWU_ME_WUME7 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_ME_WUME7_SHIFT)) and LLWU_ME_WUME7_MASK;

   LLWU_F1_WUF0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1769
   LLWU_F1_WUF0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1770
   --  arg-macro: function LLWU_F1_WUF0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF0_SHIFT)) and LLWU_F1_WUF0_MASK;

   LLWU_F1_WUF1_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1772
   LLWU_F1_WUF1_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1773
   --  arg-macro: function LLWU_F1_WUF1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF1_SHIFT)) and LLWU_F1_WUF1_MASK;

   LLWU_F1_WUF2_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1775
   LLWU_F1_WUF2_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1776
   --  arg-macro: function LLWU_F1_WUF2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF2_SHIFT)) and LLWU_F1_WUF2_MASK;

   LLWU_F1_WUF3_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1778
   LLWU_F1_WUF3_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1779
   --  arg-macro: function LLWU_F1_WUF3 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF3_SHIFT)) and LLWU_F1_WUF3_MASK;

   LLWU_F1_WUF4_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1781
   LLWU_F1_WUF4_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1782
   --  arg-macro: function LLWU_F1_WUF4 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF4_SHIFT)) and LLWU_F1_WUF4_MASK;

   LLWU_F1_WUF5_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1784
   LLWU_F1_WUF5_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1785
   --  arg-macro: function LLWU_F1_WUF5 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF5_SHIFT)) and LLWU_F1_WUF5_MASK;

   LLWU_F1_WUF6_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1787
   LLWU_F1_WUF6_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1788
   --  arg-macro: function LLWU_F1_WUF6 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF6_SHIFT)) and LLWU_F1_WUF6_MASK;

   LLWU_F1_WUF7_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1790
   LLWU_F1_WUF7_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1791
   --  arg-macro: function LLWU_F1_WUF7 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F1_WUF7_SHIFT)) and LLWU_F1_WUF7_MASK;

   LLWU_F2_WUF8_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1795
   LLWU_F2_WUF8_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1796
   --  arg-macro: function LLWU_F2_WUF8 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF8_SHIFT)) and LLWU_F2_WUF8_MASK;

   LLWU_F2_WUF9_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1798
   LLWU_F2_WUF9_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1799
   --  arg-macro: function LLWU_F2_WUF9 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF9_SHIFT)) and LLWU_F2_WUF9_MASK;

   LLWU_F2_WUF10_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1801
   LLWU_F2_WUF10_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1802
   --  arg-macro: function LLWU_F2_WUF10 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF10_SHIFT)) and LLWU_F2_WUF10_MASK;

   LLWU_F2_WUF11_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1804
   LLWU_F2_WUF11_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1805
   --  arg-macro: function LLWU_F2_WUF11 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF11_SHIFT)) and LLWU_F2_WUF11_MASK;

   LLWU_F2_WUF12_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1807
   LLWU_F2_WUF12_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1808
   --  arg-macro: function LLWU_F2_WUF12 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF12_SHIFT)) and LLWU_F2_WUF12_MASK;

   LLWU_F2_WUF13_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1810
   LLWU_F2_WUF13_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1811
   --  arg-macro: function LLWU_F2_WUF13 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF13_SHIFT)) and LLWU_F2_WUF13_MASK;

   LLWU_F2_WUF14_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1813
   LLWU_F2_WUF14_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1814
   --  arg-macro: function LLWU_F2_WUF14 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF14_SHIFT)) and LLWU_F2_WUF14_MASK;

   LLWU_F2_WUF15_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1816
   LLWU_F2_WUF15_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1817
   --  arg-macro: function LLWU_F2_WUF15 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F2_WUF15_SHIFT)) and LLWU_F2_WUF15_MASK;

   LLWU_F3_MWUF0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1821
   LLWU_F3_MWUF0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1822
   --  arg-macro: function LLWU_F3_MWUF0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF0_SHIFT)) and LLWU_F3_MWUF0_MASK;

   LLWU_F3_MWUF1_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1824
   LLWU_F3_MWUF1_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1825
   --  arg-macro: function LLWU_F3_MWUF1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF1_SHIFT)) and LLWU_F3_MWUF1_MASK;

   LLWU_F3_MWUF2_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1827
   LLWU_F3_MWUF2_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1828
   --  arg-macro: function LLWU_F3_MWUF2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF2_SHIFT)) and LLWU_F3_MWUF2_MASK;

   LLWU_F3_MWUF3_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1830
   LLWU_F3_MWUF3_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1831
   --  arg-macro: function LLWU_F3_MWUF3 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF3_SHIFT)) and LLWU_F3_MWUF3_MASK;

   LLWU_F3_MWUF4_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1833
   LLWU_F3_MWUF4_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1834
   --  arg-macro: function LLWU_F3_MWUF4 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF4_SHIFT)) and LLWU_F3_MWUF4_MASK;

   LLWU_F3_MWUF5_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1836
   LLWU_F3_MWUF5_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1837
   --  arg-macro: function LLWU_F3_MWUF5 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF5_SHIFT)) and LLWU_F3_MWUF5_MASK;

   LLWU_F3_MWUF6_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1839
   LLWU_F3_MWUF6_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1840
   --  arg-macro: function LLWU_F3_MWUF6 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF6_SHIFT)) and LLWU_F3_MWUF6_MASK;

   LLWU_F3_MWUF7_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1842
   LLWU_F3_MWUF7_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1843
   --  arg-macro: function LLWU_F3_MWUF7 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_F3_MWUF7_SHIFT)) and LLWU_F3_MWUF7_MASK;

   LLWU_FILT1_FILTSEL_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1847
   LLWU_FILT1_FILTSEL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1848
   --  arg-macro: function LLWU_FILT1_FILTSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_FILT1_FILTSEL_SHIFT)) and LLWU_FILT1_FILTSEL_MASK;

   LLWU_FILT1_FILTE_MASK : constant := (16#60#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1850
   LLWU_FILT1_FILTE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1851
   --  arg-macro: function LLWU_FILT1_FILTE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_FILT1_FILTE_SHIFT)) and LLWU_FILT1_FILTE_MASK;

   LLWU_FILT1_FILTF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1853
   LLWU_FILT1_FILTF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1854
   --  arg-macro: function LLWU_FILT1_FILTF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_FILT1_FILTF_SHIFT)) and LLWU_FILT1_FILTF_MASK;

   LLWU_FILT2_FILTSEL_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1858
   LLWU_FILT2_FILTSEL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1859
   --  arg-macro: function LLWU_FILT2_FILTSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_FILT2_FILTSEL_SHIFT)) and LLWU_FILT2_FILTSEL_MASK;

   LLWU_FILT2_FILTE_MASK : constant := (16#60#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1861
   LLWU_FILT2_FILTE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1862
   --  arg-macro: function LLWU_FILT2_FILTE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_FILT2_FILTE_SHIFT)) and LLWU_FILT2_FILTE_MASK;

   LLWU_FILT2_FILTF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1864
   LLWU_FILT2_FILTF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1865
   --  arg-macro: function LLWU_FILT2_FILTF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << LLWU_FILT2_FILTF_SHIFT)) and LLWU_FILT2_FILTF_MASK;

   LLWU_BASE : constant := (16#4007C000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1876
   --  unsupported macro: LLWU ((LLWU_Type *)LLWU_BASE)
   --  unsupported macro: LLWU_BASE_ADDRS { LLWU_BASE }
   --  unsupported macro: LLWU_BASE_PTRS { LLWU }
   --  unsupported macro: LLWU_IRQS { LLWU_IRQn }

   LPTMR_CSR_TEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1918
   LPTMR_CSR_TEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1919
   --  arg-macro: function LPTMR_CSR_TEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CSR_TEN_SHIFT)) and LPTMR_CSR_TEN_MASK;

   LPTMR_CSR_TMS_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1921
   LPTMR_CSR_TMS_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1922
   --  arg-macro: function LPTMR_CSR_TMS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CSR_TMS_SHIFT)) and LPTMR_CSR_TMS_MASK;

   LPTMR_CSR_TFC_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1924
   LPTMR_CSR_TFC_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1925
   --  arg-macro: function LPTMR_CSR_TFC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CSR_TFC_SHIFT)) and LPTMR_CSR_TFC_MASK;

   LPTMR_CSR_TPP_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1927
   LPTMR_CSR_TPP_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1928
   --  arg-macro: function LPTMR_CSR_TPP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CSR_TPP_SHIFT)) and LPTMR_CSR_TPP_MASK;

   LPTMR_CSR_TPS_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1930
   LPTMR_CSR_TPS_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1931
   --  arg-macro: function LPTMR_CSR_TPS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CSR_TPS_SHIFT)) and LPTMR_CSR_TPS_MASK;

   LPTMR_CSR_TIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1933
   LPTMR_CSR_TIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1934
   --  arg-macro: function LPTMR_CSR_TIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CSR_TIE_SHIFT)) and LPTMR_CSR_TIE_MASK;

   LPTMR_CSR_TCF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1936
   LPTMR_CSR_TCF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1937
   --  arg-macro: function LPTMR_CSR_TCF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CSR_TCF_SHIFT)) and LPTMR_CSR_TCF_MASK;

   LPTMR_PSR_PCS_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1941
   LPTMR_PSR_PCS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1942
   --  arg-macro: function LPTMR_PSR_PCS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_PSR_PCS_SHIFT)) and LPTMR_PSR_PCS_MASK;

   LPTMR_PSR_PBYP_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1944
   LPTMR_PSR_PBYP_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1945
   --  arg-macro: function LPTMR_PSR_PBYP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_PSR_PBYP_SHIFT)) and LPTMR_PSR_PBYP_MASK;

   LPTMR_PSR_PRESCALE_MASK : constant := (16#78#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1947
   LPTMR_PSR_PRESCALE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1948
   --  arg-macro: function LPTMR_PSR_PRESCALE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_PSR_PRESCALE_SHIFT)) and LPTMR_PSR_PRESCALE_MASK;

   LPTMR_CMR_COMPARE_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1952
   LPTMR_CMR_COMPARE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1953
   --  arg-macro: function LPTMR_CMR_COMPARE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CMR_COMPARE_SHIFT)) and LPTMR_CMR_COMPARE_MASK;

   LPTMR_CNR_COUNTER_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1957
   LPTMR_CNR_COUNTER_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1958
   --  arg-macro: function LPTMR_CNR_COUNTER (x)
   --    return ((uint32_t)(((uint32_t)(x)) << LPTMR_CNR_COUNTER_SHIFT)) and LPTMR_CNR_COUNTER_MASK;

   LPTMR0_BASE : constant := (16#40040000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1969
   --  unsupported macro: LPTMR0 ((LPTMR_Type *)LPTMR0_BASE)
   --  unsupported macro: LPTMR_BASE_ADDRS { LPTMR0_BASE }
   --  unsupported macro: LPTMR_BASE_PTRS { LPTMR0 }
   --  unsupported macro: LPTMR_IRQS { LPTMR0_IRQn }

   MCG_C1_IREFSTEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2023
   MCG_C1_IREFSTEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2024
   --  arg-macro: function MCG_C1_IREFSTEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C1_IREFSTEN_SHIFT)) and MCG_C1_IREFSTEN_MASK;

   MCG_C1_IRCLKEN_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2026
   MCG_C1_IRCLKEN_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2027
   --  arg-macro: function MCG_C1_IRCLKEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C1_IRCLKEN_SHIFT)) and MCG_C1_IRCLKEN_MASK;

   MCG_C1_IREFS_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2029
   MCG_C1_IREFS_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2030
   --  arg-macro: function MCG_C1_IREFS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C1_IREFS_SHIFT)) and MCG_C1_IREFS_MASK;

   MCG_C1_FRDIV_MASK : constant := (16#38#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2032
   MCG_C1_FRDIV_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2033
   --  arg-macro: function MCG_C1_FRDIV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C1_FRDIV_SHIFT)) and MCG_C1_FRDIV_MASK;

   MCG_C1_CLKS_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2035
   MCG_C1_CLKS_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2036
   --  arg-macro: function MCG_C1_CLKS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C1_CLKS_SHIFT)) and MCG_C1_CLKS_MASK;

   MCG_C2_IRCS_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2040
   MCG_C2_IRCS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2041
   --  arg-macro: function MCG_C2_IRCS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C2_IRCS_SHIFT)) and MCG_C2_IRCS_MASK;

   MCG_C2_LP_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2043
   MCG_C2_LP_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2044
   --  arg-macro: function MCG_C2_LP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C2_LP_SHIFT)) and MCG_C2_LP_MASK;

   MCG_C2_EREFS0_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2046
   MCG_C2_EREFS0_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2047
   --  arg-macro: function MCG_C2_EREFS0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C2_EREFS0_SHIFT)) and MCG_C2_EREFS0_MASK;

   MCG_C2_HGO0_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2049
   MCG_C2_HGO0_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2050
   --  arg-macro: function MCG_C2_HGO0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C2_HGO0_SHIFT)) and MCG_C2_HGO0_MASK;

   MCG_C2_RANGE0_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2052
   MCG_C2_RANGE0_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2053
   --  arg-macro: function MCG_C2_RANGE0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C2_RANGE0_SHIFT)) and MCG_C2_RANGE0_MASK;

   MCG_C2_LOCRE0_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2055
   MCG_C2_LOCRE0_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2056
   --  arg-macro: function MCG_C2_LOCRE0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C2_LOCRE0_SHIFT)) and MCG_C2_LOCRE0_MASK;

   MCG_C3_SCTRIM_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2060
   MCG_C3_SCTRIM_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2061
   --  arg-macro: function MCG_C3_SCTRIM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C3_SCTRIM_SHIFT)) and MCG_C3_SCTRIM_MASK;

   MCG_C4_SCFTRIM_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2065
   MCG_C4_SCFTRIM_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2066
   --  arg-macro: function MCG_C4_SCFTRIM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C4_SCFTRIM_SHIFT)) and MCG_C4_SCFTRIM_MASK;

   MCG_C4_FCTRIM_MASK : constant := (16#1E#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2068
   MCG_C4_FCTRIM_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2069
   --  arg-macro: function MCG_C4_FCTRIM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C4_FCTRIM_SHIFT)) and MCG_C4_FCTRIM_MASK;

   MCG_C4_DRST_DRS_MASK : constant := (16#60#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2071
   MCG_C4_DRST_DRS_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2072
   --  arg-macro: function MCG_C4_DRST_DRS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C4_DRST_DRS_SHIFT)) and MCG_C4_DRST_DRS_MASK;

   MCG_C4_DMX32_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2074
   MCG_C4_DMX32_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2075
   --  arg-macro: function MCG_C4_DMX32 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C4_DMX32_SHIFT)) and MCG_C4_DMX32_MASK;

   MCG_C5_PRDIV0_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2079
   MCG_C5_PRDIV0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2080
   --  arg-macro: function MCG_C5_PRDIV0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C5_PRDIV0_SHIFT)) and MCG_C5_PRDIV0_MASK;

   MCG_C5_PLLSTEN0_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2082
   MCG_C5_PLLSTEN0_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2083
   --  arg-macro: function MCG_C5_PLLSTEN0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C5_PLLSTEN0_SHIFT)) and MCG_C5_PLLSTEN0_MASK;

   MCG_C5_PLLCLKEN0_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2085
   MCG_C5_PLLCLKEN0_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2086
   --  arg-macro: function MCG_C5_PLLCLKEN0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C5_PLLCLKEN0_SHIFT)) and MCG_C5_PLLCLKEN0_MASK;

   MCG_C6_VDIV0_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2090
   MCG_C6_VDIV0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2091
   --  arg-macro: function MCG_C6_VDIV0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C6_VDIV0_SHIFT)) and MCG_C6_VDIV0_MASK;

   MCG_C6_CME0_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2093
   MCG_C6_CME0_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2094
   --  arg-macro: function MCG_C6_CME0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C6_CME0_SHIFT)) and MCG_C6_CME0_MASK;

   MCG_C6_PLLS_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2096
   MCG_C6_PLLS_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2097
   --  arg-macro: function MCG_C6_PLLS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C6_PLLS_SHIFT)) and MCG_C6_PLLS_MASK;

   MCG_C6_LOLIE0_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2099
   MCG_C6_LOLIE0_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2100
   --  arg-macro: function MCG_C6_LOLIE0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C6_LOLIE0_SHIFT)) and MCG_C6_LOLIE0_MASK;

   MCG_S_IRCST_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2104
   MCG_S_IRCST_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2105
   --  arg-macro: function MCG_S_IRCST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_S_IRCST_SHIFT)) and MCG_S_IRCST_MASK;

   MCG_S_OSCINIT0_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2107
   MCG_S_OSCINIT0_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2108
   --  arg-macro: function MCG_S_OSCINIT0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_S_OSCINIT0_SHIFT)) and MCG_S_OSCINIT0_MASK;

   MCG_S_CLKST_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2110
   MCG_S_CLKST_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2111
   --  arg-macro: function MCG_S_CLKST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_S_CLKST_SHIFT)) and MCG_S_CLKST_MASK;

   MCG_S_IREFST_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2113
   MCG_S_IREFST_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2114
   --  arg-macro: function MCG_S_IREFST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_S_IREFST_SHIFT)) and MCG_S_IREFST_MASK;

   MCG_S_PLLST_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2116
   MCG_S_PLLST_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2117
   --  arg-macro: function MCG_S_PLLST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_S_PLLST_SHIFT)) and MCG_S_PLLST_MASK;

   MCG_S_LOCK0_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2119
   MCG_S_LOCK0_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2120
   --  arg-macro: function MCG_S_LOCK0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_S_LOCK0_SHIFT)) and MCG_S_LOCK0_MASK;

   MCG_S_LOLS0_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2122
   MCG_S_LOLS0_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2123
   --  arg-macro: function MCG_S_LOLS0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_S_LOLS0_SHIFT)) and MCG_S_LOLS0_MASK;

   MCG_SC_LOCS0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2127
   MCG_SC_LOCS0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2128
   --  arg-macro: function MCG_SC_LOCS0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_SC_LOCS0_SHIFT)) and MCG_SC_LOCS0_MASK;

   MCG_SC_FCRDIV_MASK : constant := (16#E#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2130
   MCG_SC_FCRDIV_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2131
   --  arg-macro: function MCG_SC_FCRDIV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_SC_FCRDIV_SHIFT)) and MCG_SC_FCRDIV_MASK;

   MCG_SC_FLTPRSRV_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2133
   MCG_SC_FLTPRSRV_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2134
   --  arg-macro: function MCG_SC_FLTPRSRV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_SC_FLTPRSRV_SHIFT)) and MCG_SC_FLTPRSRV_MASK;

   MCG_SC_ATMF_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2136
   MCG_SC_ATMF_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2137
   --  arg-macro: function MCG_SC_ATMF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_SC_ATMF_SHIFT)) and MCG_SC_ATMF_MASK;

   MCG_SC_ATMS_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2139
   MCG_SC_ATMS_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2140
   --  arg-macro: function MCG_SC_ATMS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_SC_ATMS_SHIFT)) and MCG_SC_ATMS_MASK;

   MCG_SC_ATME_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2142
   MCG_SC_ATME_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2143
   --  arg-macro: function MCG_SC_ATME (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_SC_ATME_SHIFT)) and MCG_SC_ATME_MASK;

   MCG_ATCVH_ATCVH_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2147
   MCG_ATCVH_ATCVH_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2148
   --  arg-macro: function MCG_ATCVH_ATCVH (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_ATCVH_ATCVH_SHIFT)) and MCG_ATCVH_ATCVH_MASK;

   MCG_ATCVL_ATCVL_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2152
   MCG_ATCVL_ATCVL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2153
   --  arg-macro: function MCG_ATCVL_ATCVL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_ATCVL_ATCVL_SHIFT)) and MCG_ATCVL_ATCVL_MASK;

   MCG_C8_LOLRE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2157
   MCG_C8_LOLRE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2158
   --  arg-macro: function MCG_C8_LOLRE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << MCG_C8_LOLRE_SHIFT)) and MCG_C8_LOLRE_MASK;

   MCG_BASE : constant := (16#40064000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2169
   --  unsupported macro: MCG ((MCG_Type *)MCG_BASE)
   --  unsupported macro: MCG_BASE_ADDRS { MCG_BASE }
   --  unsupported macro: MCG_BASE_PTRS { MCG }
   --  unsupported macro: MCG_IRQS { MCG_IRQn }
   --  unsupported macro: MCG_C2_EREFS_MASK (MCG_C2_EREFS0_MASK)
   --  unsupported macro: MCG_C2_EREFS_SHIFT (MCG_C2_EREFS0_SHIFT)
   --  unsupported macro: MCG_C2_EREFS_WIDTH (MCG_C2_EREFS0_WIDTH)
   --  arg-macro: function MCG_C2_EREFS (x)
   --    return MCG_C2_EREFS0(x);
   --  unsupported macro: MCG_C2_HGO_MASK (MCG_C2_HGO0_MASK)
   --  unsupported macro: MCG_C2_HGO_SHIFT (MCG_C2_HGO0_SHIFT)
   --  unsupported macro: MCG_C2_HGO_WIDTH (MCG_C2_HGO0_WIDTH)
   --  arg-macro: function MCG_C2_HGO (x)
   --    return MCG_C2_HGO0(x);
   --  unsupported macro: MCG_C2_RANGE_MASK (MCG_C2_RANGE0_MASK)
   --  unsupported macro: MCG_C2_RANGE_SHIFT (MCG_C2_RANGE0_SHIFT)
   --  unsupported macro: MCG_C2_RANGE_WIDTH (MCG_C2_RANGE0_WIDTH)
   --  arg-macro: function MCG_C2_RANGE (x)
   --    return MCG_C2_RANGE0(x);

   MCM_PLASC_ASC_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2231
   MCM_PLASC_ASC_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2232
   --  arg-macro: function MCM_PLASC_ASC (x)
   --    return ((uint16_t)(((uint16_t)(x)) << MCM_PLASC_ASC_SHIFT)) and MCM_PLASC_ASC_MASK;

   MCM_PLAMC_AMC_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2236
   MCM_PLAMC_AMC_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2237
   --  arg-macro: function MCM_PLAMC_AMC (x)
   --    return ((uint16_t)(((uint16_t)(x)) << MCM_PLAMC_AMC_SHIFT)) and MCM_PLAMC_AMC_MASK;

   MCM_PLACR_ARB_MASK : constant := (16#200#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2241
   MCM_PLACR_ARB_SHIFT : constant := (9);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2242
   --  arg-macro: function MCM_PLACR_ARB (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_ARB_SHIFT)) and MCM_PLACR_ARB_MASK;

   MCM_PLACR_CFCC_MASK : constant := (16#400#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2244
   MCM_PLACR_CFCC_SHIFT : constant := (10);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2245
   --  arg-macro: function MCM_PLACR_CFCC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_CFCC_SHIFT)) and MCM_PLACR_CFCC_MASK;

   MCM_PLACR_DFCDA_MASK : constant := (16#800#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2247
   MCM_PLACR_DFCDA_SHIFT : constant := (11);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2248
   --  arg-macro: function MCM_PLACR_DFCDA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_DFCDA_SHIFT)) and MCM_PLACR_DFCDA_MASK;

   MCM_PLACR_DFCIC_MASK : constant := (16#1000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2250
   MCM_PLACR_DFCIC_SHIFT : constant := (12);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2251
   --  arg-macro: function MCM_PLACR_DFCIC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_DFCIC_SHIFT)) and MCM_PLACR_DFCIC_MASK;

   MCM_PLACR_DFCC_MASK : constant := (16#2000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2253
   MCM_PLACR_DFCC_SHIFT : constant := (13);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2254
   --  arg-macro: function MCM_PLACR_DFCC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_DFCC_SHIFT)) and MCM_PLACR_DFCC_MASK;

   MCM_PLACR_EFDS_MASK : constant := (16#4000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2256
   MCM_PLACR_EFDS_SHIFT : constant := (14);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2257
   --  arg-macro: function MCM_PLACR_EFDS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_EFDS_SHIFT)) and MCM_PLACR_EFDS_MASK;

   MCM_PLACR_DFCS_MASK : constant := (16#8000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2259
   MCM_PLACR_DFCS_SHIFT : constant := (15);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2260
   --  arg-macro: function MCM_PLACR_DFCS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_DFCS_SHIFT)) and MCM_PLACR_DFCS_MASK;

   MCM_PLACR_ESFC_MASK : constant := (16#10000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2262
   MCM_PLACR_ESFC_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2263
   --  arg-macro: function MCM_PLACR_ESFC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_PLACR_ESFC_SHIFT)) and MCM_PLACR_ESFC_MASK;

   MCM_CPO_CPOREQ_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2267
   MCM_CPO_CPOREQ_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2268
   --  arg-macro: function MCM_CPO_CPOREQ (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_CPO_CPOREQ_SHIFT)) and MCM_CPO_CPOREQ_MASK;

   MCM_CPO_CPOACK_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2270
   MCM_CPO_CPOACK_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2271
   --  arg-macro: function MCM_CPO_CPOACK (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_CPO_CPOACK_SHIFT)) and MCM_CPO_CPOACK_MASK;

   MCM_CPO_CPOWOI_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2273
   MCM_CPO_CPOWOI_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2274
   --  arg-macro: function MCM_CPO_CPOWOI (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MCM_CPO_CPOWOI_SHIFT)) and MCM_CPO_CPOWOI_MASK;

   MCM_BASE : constant := (16#F0003000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2285
   --  unsupported macro: MCM ((MCM_Type *)MCM_BASE)
   --  unsupported macro: MCM_BASE_ADDRS { MCM_BASE }
   --  unsupported macro: MCM_BASE_PTRS { MCM }

   MTB_POSITION_WRAP_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2347
   MTB_POSITION_WRAP_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2348
   --  arg-macro: function MTB_POSITION_WRAP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_POSITION_WRAP_SHIFT)) and MTB_POSITION_WRAP_MASK;

   MTB_POSITION_POINTER_MASK : constant := (16#FFFFFFF8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2350
   MTB_POSITION_POINTER_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2351
   --  arg-macro: function MTB_POSITION_POINTER (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_POSITION_POINTER_SHIFT)) and MTB_POSITION_POINTER_MASK;

   MTB_MASTER_MASK_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2355
   MTB_MASTER_MASK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2356
   --  arg-macro: function MTB_MASTER_MASK (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MASTER_MASK_SHIFT)) and MTB_MASTER_MASK_MASK;

   MTB_MASTER_TSTARTEN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2358
   MTB_MASTER_TSTARTEN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2359
   --  arg-macro: function MTB_MASTER_TSTARTEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MASTER_TSTARTEN_SHIFT)) and MTB_MASTER_TSTARTEN_MASK;

   MTB_MASTER_TSTOPEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2361
   MTB_MASTER_TSTOPEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2362
   --  arg-macro: function MTB_MASTER_TSTOPEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MASTER_TSTOPEN_SHIFT)) and MTB_MASTER_TSTOPEN_MASK;

   MTB_MASTER_SFRWPRIV_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2364
   MTB_MASTER_SFRWPRIV_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2365
   --  arg-macro: function MTB_MASTER_SFRWPRIV (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MASTER_SFRWPRIV_SHIFT)) and MTB_MASTER_SFRWPRIV_MASK;

   MTB_MASTER_RAMPRIV_MASK : constant := (16#100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2367
   MTB_MASTER_RAMPRIV_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2368
   --  arg-macro: function MTB_MASTER_RAMPRIV (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MASTER_RAMPRIV_SHIFT)) and MTB_MASTER_RAMPRIV_MASK;

   MTB_MASTER_HALTREQ_MASK : constant := (16#200#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2370
   MTB_MASTER_HALTREQ_SHIFT : constant := (9);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2371
   --  arg-macro: function MTB_MASTER_HALTREQ (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MASTER_HALTREQ_SHIFT)) and MTB_MASTER_HALTREQ_MASK;

   MTB_MASTER_EN_MASK : constant := (16#80000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2373
   MTB_MASTER_EN_SHIFT : constant := (31);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2374
   --  arg-macro: function MTB_MASTER_EN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MASTER_EN_SHIFT)) and MTB_MASTER_EN_MASK;

   MTB_FLOW_AUTOSTOP_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2378
   MTB_FLOW_AUTOSTOP_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2379
   --  arg-macro: function MTB_FLOW_AUTOSTOP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_FLOW_AUTOSTOP_SHIFT)) and MTB_FLOW_AUTOSTOP_MASK;

   MTB_FLOW_AUTOHALT_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2381
   MTB_FLOW_AUTOHALT_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2382
   --  arg-macro: function MTB_FLOW_AUTOHALT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_FLOW_AUTOHALT_SHIFT)) and MTB_FLOW_AUTOHALT_MASK;

   MTB_FLOW_WATERMARK_MASK : constant := (16#FFFFFFF8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2384
   MTB_FLOW_WATERMARK_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2385
   --  arg-macro: function MTB_FLOW_WATERMARK (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_FLOW_WATERMARK_SHIFT)) and MTB_FLOW_WATERMARK_MASK;

   MTB_BASE_BASEADDR_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2389
   MTB_BASE_BASEADDR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2390
   --  arg-macro: function MTB_BASE_BASEADDR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_BASE_BASEADDR_SHIFT)) and MTB_BASE_BASEADDR_MASK;

   MTB_MODECTRL_MODECTRL_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2394
   MTB_MODECTRL_MODECTRL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2395
   --  arg-macro: function MTB_MODECTRL_MODECTRL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_MODECTRL_MODECTRL_SHIFT)) and MTB_MODECTRL_MODECTRL_MASK;

   MTB_TAGSET_TAGSET_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2399
   MTB_TAGSET_TAGSET_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2400
   --  arg-macro: function MTB_TAGSET_TAGSET (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_TAGSET_TAGSET_SHIFT)) and MTB_TAGSET_TAGSET_MASK;

   MTB_TAGCLEAR_TAGCLEAR_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2404
   MTB_TAGCLEAR_TAGCLEAR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2405
   --  arg-macro: function MTB_TAGCLEAR_TAGCLEAR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_TAGCLEAR_TAGCLEAR_SHIFT)) and MTB_TAGCLEAR_TAGCLEAR_MASK;

   MTB_LOCKACCESS_LOCKACCESS_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2409
   MTB_LOCKACCESS_LOCKACCESS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2410
   --  arg-macro: function MTB_LOCKACCESS_LOCKACCESS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_LOCKACCESS_LOCKACCESS_SHIFT)) and MTB_LOCKACCESS_LOCKACCESS_MASK;

   MTB_LOCKSTAT_LOCKSTAT_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2414
   MTB_LOCKSTAT_LOCKSTAT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2415
   --  arg-macro: function MTB_LOCKSTAT_LOCKSTAT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_LOCKSTAT_LOCKSTAT_SHIFT)) and MTB_LOCKSTAT_LOCKSTAT_MASK;

   MTB_AUTHSTAT_BIT0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2419
   MTB_AUTHSTAT_BIT0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2420
   --  arg-macro: function MTB_AUTHSTAT_BIT0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_AUTHSTAT_BIT0_SHIFT)) and MTB_AUTHSTAT_BIT0_MASK;

   MTB_AUTHSTAT_BIT1_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2422
   MTB_AUTHSTAT_BIT1_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2423
   --  arg-macro: function MTB_AUTHSTAT_BIT1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_AUTHSTAT_BIT1_SHIFT)) and MTB_AUTHSTAT_BIT1_MASK;

   MTB_AUTHSTAT_BIT2_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2425
   MTB_AUTHSTAT_BIT2_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2426
   --  arg-macro: function MTB_AUTHSTAT_BIT2 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_AUTHSTAT_BIT2_SHIFT)) and MTB_AUTHSTAT_BIT2_MASK;

   MTB_AUTHSTAT_BIT3_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2428
   MTB_AUTHSTAT_BIT3_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2429
   --  arg-macro: function MTB_AUTHSTAT_BIT3 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_AUTHSTAT_BIT3_SHIFT)) and MTB_AUTHSTAT_BIT3_MASK;

   MTB_DEVICEARCH_DEVICEARCH_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2433
   MTB_DEVICEARCH_DEVICEARCH_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2434
   --  arg-macro: function MTB_DEVICEARCH_DEVICEARCH (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_DEVICEARCH_DEVICEARCH_SHIFT)) and MTB_DEVICEARCH_DEVICEARCH_MASK;

   MTB_DEVICECFG_DEVICECFG_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2438
   MTB_DEVICECFG_DEVICECFG_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2439
   --  arg-macro: function MTB_DEVICECFG_DEVICECFG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_DEVICECFG_DEVICECFG_SHIFT)) and MTB_DEVICECFG_DEVICECFG_MASK;

   MTB_DEVICETYPID_DEVICETYPID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2443
   MTB_DEVICETYPID_DEVICETYPID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2444
   --  arg-macro: function MTB_DEVICETYPID_DEVICETYPID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_DEVICETYPID_DEVICETYPID_SHIFT)) and MTB_DEVICETYPID_DEVICETYPID_MASK;

   MTB_PERIPHID4_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2448
   MTB_PERIPHID4_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2449
   --  arg-macro: function MTB_PERIPHID4_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID4_PERIPHID_SHIFT)) and MTB_PERIPHID4_PERIPHID_MASK;

   MTB_PERIPHID5_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2453
   MTB_PERIPHID5_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2454
   --  arg-macro: function MTB_PERIPHID5_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID5_PERIPHID_SHIFT)) and MTB_PERIPHID5_PERIPHID_MASK;

   MTB_PERIPHID6_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2458
   MTB_PERIPHID6_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2459
   --  arg-macro: function MTB_PERIPHID6_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID6_PERIPHID_SHIFT)) and MTB_PERIPHID6_PERIPHID_MASK;

   MTB_PERIPHID7_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2463
   MTB_PERIPHID7_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2464
   --  arg-macro: function MTB_PERIPHID7_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID7_PERIPHID_SHIFT)) and MTB_PERIPHID7_PERIPHID_MASK;

   MTB_PERIPHID0_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2468
   MTB_PERIPHID0_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2469
   --  arg-macro: function MTB_PERIPHID0_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID0_PERIPHID_SHIFT)) and MTB_PERIPHID0_PERIPHID_MASK;

   MTB_PERIPHID1_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2473
   MTB_PERIPHID1_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2474
   --  arg-macro: function MTB_PERIPHID1_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID1_PERIPHID_SHIFT)) and MTB_PERIPHID1_PERIPHID_MASK;

   MTB_PERIPHID2_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2478
   MTB_PERIPHID2_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2479
   --  arg-macro: function MTB_PERIPHID2_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID2_PERIPHID_SHIFT)) and MTB_PERIPHID2_PERIPHID_MASK;

   MTB_PERIPHID3_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2483
   MTB_PERIPHID3_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2484
   --  arg-macro: function MTB_PERIPHID3_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_PERIPHID3_PERIPHID_SHIFT)) and MTB_PERIPHID3_PERIPHID_MASK;

   MTB_COMPID_COMPID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2488
   MTB_COMPID_COMPID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2489
   --  arg-macro: function MTB_COMPID_COMPID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTB_COMPID_COMPID_SHIFT)) and MTB_COMPID_COMPID_MASK;

   MTB_COMPID_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2493

   MTB_BASE : constant := (16#F0000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2503
   --  unsupported macro: MTB ((MTB_Type *)MTB_BASE)
   --  unsupported macro: MTB_BASE_ADDRS { MTB_BASE }
   --  unsupported macro: MTB_BASE_PTRS { MTB }

   MTBDWT_CTRL_DWTCFGCTRL_MASK : constant := (16#FFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2561
   MTBDWT_CTRL_DWTCFGCTRL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2562
   --  arg-macro: function MTBDWT_CTRL_DWTCFGCTRL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_CTRL_DWTCFGCTRL_SHIFT)) and MTBDWT_CTRL_DWTCFGCTRL_MASK;

   MTBDWT_CTRL_NUMCMP_MASK : constant := (16#F0000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2564
   MTBDWT_CTRL_NUMCMP_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2565
   --  arg-macro: function MTBDWT_CTRL_NUMCMP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_CTRL_NUMCMP_SHIFT)) and MTBDWT_CTRL_NUMCMP_MASK;

   MTBDWT_COMP_COMP_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2569
   MTBDWT_COMP_COMP_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2570
   --  arg-macro: function MTBDWT_COMP_COMP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_COMP_COMP_SHIFT)) and MTBDWT_COMP_COMP_MASK;

   MTBDWT_COMP_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2574

   MTBDWT_MASK_MASK_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2577
   MTBDWT_MASK_MASK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2578
   --  arg-macro: function MTBDWT_MASK_MASK (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_MASK_MASK_SHIFT)) and MTBDWT_MASK_MASK_MASK;

   MTBDWT_MASK_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2582

   MTBDWT_FCT_FUNCTION_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2585
   MTBDWT_FCT_FUNCTION_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2586
   --  arg-macro: function MTBDWT_FCT_FUNCTION (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_FCT_FUNCTION_SHIFT)) and MTBDWT_FCT_FUNCTION_MASK;

   MTBDWT_FCT_DATAVMATCH_MASK : constant := (16#100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2588
   MTBDWT_FCT_DATAVMATCH_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2589
   --  arg-macro: function MTBDWT_FCT_DATAVMATCH (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_FCT_DATAVMATCH_SHIFT)) and MTBDWT_FCT_DATAVMATCH_MASK;

   MTBDWT_FCT_DATAVSIZE_MASK : constant := (16#C00#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2591
   MTBDWT_FCT_DATAVSIZE_SHIFT : constant := (10);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2592
   --  arg-macro: function MTBDWT_FCT_DATAVSIZE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_FCT_DATAVSIZE_SHIFT)) and MTBDWT_FCT_DATAVSIZE_MASK;

   MTBDWT_FCT_DATAVADDR0_MASK : constant := (16#F000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2594
   MTBDWT_FCT_DATAVADDR0_SHIFT : constant := (12);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2595
   --  arg-macro: function MTBDWT_FCT_DATAVADDR0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_FCT_DATAVADDR0_SHIFT)) and MTBDWT_FCT_DATAVADDR0_MASK;

   MTBDWT_FCT_MATCHED_MASK : constant := (16#1000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2597
   MTBDWT_FCT_MATCHED_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2598
   --  arg-macro: function MTBDWT_FCT_MATCHED (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_FCT_MATCHED_SHIFT)) and MTBDWT_FCT_MATCHED_MASK;

   MTBDWT_FCT_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2602

   MTBDWT_TBCTRL_ACOMP0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2605
   MTBDWT_TBCTRL_ACOMP0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2606
   --  arg-macro: function MTBDWT_TBCTRL_ACOMP0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_TBCTRL_ACOMP0_SHIFT)) and MTBDWT_TBCTRL_ACOMP0_MASK;

   MTBDWT_TBCTRL_ACOMP1_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2608
   MTBDWT_TBCTRL_ACOMP1_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2609
   --  arg-macro: function MTBDWT_TBCTRL_ACOMP1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_TBCTRL_ACOMP1_SHIFT)) and MTBDWT_TBCTRL_ACOMP1_MASK;

   MTBDWT_TBCTRL_NUMCOMP_MASK : constant := (16#F0000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2611
   MTBDWT_TBCTRL_NUMCOMP_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2612
   --  arg-macro: function MTBDWT_TBCTRL_NUMCOMP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_TBCTRL_NUMCOMP_SHIFT)) and MTBDWT_TBCTRL_NUMCOMP_MASK;

   MTBDWT_DEVICECFG_DEVICECFG_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2616
   MTBDWT_DEVICECFG_DEVICECFG_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2617
   --  arg-macro: function MTBDWT_DEVICECFG_DEVICECFG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_DEVICECFG_DEVICECFG_SHIFT)) and MTBDWT_DEVICECFG_DEVICECFG_MASK;

   MTBDWT_DEVICETYPID_DEVICETYPID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2621
   MTBDWT_DEVICETYPID_DEVICETYPID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2622
   --  arg-macro: function MTBDWT_DEVICETYPID_DEVICETYPID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_DEVICETYPID_DEVICETYPID_SHIFT)) and MTBDWT_DEVICETYPID_DEVICETYPID_MASK;

   MTBDWT_PERIPHID4_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2626
   MTBDWT_PERIPHID4_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2627
   --  arg-macro: function MTBDWT_PERIPHID4_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID4_PERIPHID_SHIFT)) and MTBDWT_PERIPHID4_PERIPHID_MASK;

   MTBDWT_PERIPHID5_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2631
   MTBDWT_PERIPHID5_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2632
   --  arg-macro: function MTBDWT_PERIPHID5_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID5_PERIPHID_SHIFT)) and MTBDWT_PERIPHID5_PERIPHID_MASK;

   MTBDWT_PERIPHID6_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2636
   MTBDWT_PERIPHID6_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2637
   --  arg-macro: function MTBDWT_PERIPHID6_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID6_PERIPHID_SHIFT)) and MTBDWT_PERIPHID6_PERIPHID_MASK;

   MTBDWT_PERIPHID7_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2641
   MTBDWT_PERIPHID7_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2642
   --  arg-macro: function MTBDWT_PERIPHID7_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID7_PERIPHID_SHIFT)) and MTBDWT_PERIPHID7_PERIPHID_MASK;

   MTBDWT_PERIPHID0_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2646
   MTBDWT_PERIPHID0_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2647
   --  arg-macro: function MTBDWT_PERIPHID0_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID0_PERIPHID_SHIFT)) and MTBDWT_PERIPHID0_PERIPHID_MASK;

   MTBDWT_PERIPHID1_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2651
   MTBDWT_PERIPHID1_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2652
   --  arg-macro: function MTBDWT_PERIPHID1_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID1_PERIPHID_SHIFT)) and MTBDWT_PERIPHID1_PERIPHID_MASK;

   MTBDWT_PERIPHID2_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2656
   MTBDWT_PERIPHID2_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2657
   --  arg-macro: function MTBDWT_PERIPHID2_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID2_PERIPHID_SHIFT)) and MTBDWT_PERIPHID2_PERIPHID_MASK;

   MTBDWT_PERIPHID3_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2661
   MTBDWT_PERIPHID3_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2662
   --  arg-macro: function MTBDWT_PERIPHID3_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_PERIPHID3_PERIPHID_SHIFT)) and MTBDWT_PERIPHID3_PERIPHID_MASK;

   MTBDWT_COMPID_COMPID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2666
   MTBDWT_COMPID_COMPID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2667
   --  arg-macro: function MTBDWT_COMPID_COMPID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << MTBDWT_COMPID_COMPID_SHIFT)) and MTBDWT_COMPID_COMPID_MASK;

   MTBDWT_COMPID_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2671

   MTBDWT_BASE : constant := (16#F0001000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2681
   --  unsupported macro: MTBDWT ((MTBDWT_Type *)MTBDWT_BASE)
   --  unsupported macro: MTBDWT_BASE_ADDRS { MTBDWT_BASE }
   --  unsupported macro: MTBDWT_BASE_PTRS { MTBDWT }

   NV_BACKKEY3_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2731
   NV_BACKKEY3_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2732
   --  arg-macro: function NV_BACKKEY3_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY3_KEY_SHIFT)) and NV_BACKKEY3_KEY_MASK;

   NV_BACKKEY2_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2736
   NV_BACKKEY2_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2737
   --  arg-macro: function NV_BACKKEY2_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY2_KEY_SHIFT)) and NV_BACKKEY2_KEY_MASK;

   NV_BACKKEY1_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2741
   NV_BACKKEY1_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2742
   --  arg-macro: function NV_BACKKEY1_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY1_KEY_SHIFT)) and NV_BACKKEY1_KEY_MASK;

   NV_BACKKEY0_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2746
   NV_BACKKEY0_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2747
   --  arg-macro: function NV_BACKKEY0_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY0_KEY_SHIFT)) and NV_BACKKEY0_KEY_MASK;

   NV_BACKKEY7_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2751
   NV_BACKKEY7_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2752
   --  arg-macro: function NV_BACKKEY7_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY7_KEY_SHIFT)) and NV_BACKKEY7_KEY_MASK;

   NV_BACKKEY6_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2756
   NV_BACKKEY6_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2757
   --  arg-macro: function NV_BACKKEY6_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY6_KEY_SHIFT)) and NV_BACKKEY6_KEY_MASK;

   NV_BACKKEY5_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2761
   NV_BACKKEY5_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2762
   --  arg-macro: function NV_BACKKEY5_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY5_KEY_SHIFT)) and NV_BACKKEY5_KEY_MASK;

   NV_BACKKEY4_KEY_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2766
   NV_BACKKEY4_KEY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2767
   --  arg-macro: function NV_BACKKEY4_KEY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_BACKKEY4_KEY_SHIFT)) and NV_BACKKEY4_KEY_MASK;

   NV_FPROT3_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2771
   NV_FPROT3_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2772
   --  arg-macro: function NV_FPROT3_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FPROT3_PROT_SHIFT)) and NV_FPROT3_PROT_MASK;

   NV_FPROT2_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2776
   NV_FPROT2_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2777
   --  arg-macro: function NV_FPROT2_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FPROT2_PROT_SHIFT)) and NV_FPROT2_PROT_MASK;

   NV_FPROT1_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2781
   NV_FPROT1_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2782
   --  arg-macro: function NV_FPROT1_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FPROT1_PROT_SHIFT)) and NV_FPROT1_PROT_MASK;

   NV_FPROT0_PROT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2786
   NV_FPROT0_PROT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2787
   --  arg-macro: function NV_FPROT0_PROT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FPROT0_PROT_SHIFT)) and NV_FPROT0_PROT_MASK;

   NV_FSEC_SEC_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2791
   NV_FSEC_SEC_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2792
   --  arg-macro: function NV_FSEC_SEC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FSEC_SEC_SHIFT)) and NV_FSEC_SEC_MASK;

   NV_FSEC_FSLACC_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2794
   NV_FSEC_FSLACC_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2795
   --  arg-macro: function NV_FSEC_FSLACC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FSEC_FSLACC_SHIFT)) and NV_FSEC_FSLACC_MASK;

   NV_FSEC_MEEN_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2797
   NV_FSEC_MEEN_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2798
   --  arg-macro: function NV_FSEC_MEEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FSEC_MEEN_SHIFT)) and NV_FSEC_MEEN_MASK;

   NV_FSEC_KEYEN_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2800
   NV_FSEC_KEYEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2801
   --  arg-macro: function NV_FSEC_KEYEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FSEC_KEYEN_SHIFT)) and NV_FSEC_KEYEN_MASK;

   NV_FOPT_LPBOOT0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2805
   NV_FOPT_LPBOOT0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2806
   --  arg-macro: function NV_FOPT_LPBOOT0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FOPT_LPBOOT0_SHIFT)) and NV_FOPT_LPBOOT0_MASK;

   NV_FOPT_NMI_DIS_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2808
   NV_FOPT_NMI_DIS_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2809
   --  arg-macro: function NV_FOPT_NMI_DIS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FOPT_NMI_DIS_SHIFT)) and NV_FOPT_NMI_DIS_MASK;

   NV_FOPT_RESET_PIN_CFG_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2811
   NV_FOPT_RESET_PIN_CFG_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2812
   --  arg-macro: function NV_FOPT_RESET_PIN_CFG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FOPT_RESET_PIN_CFG_SHIFT)) and NV_FOPT_RESET_PIN_CFG_MASK;

   NV_FOPT_LPBOOT1_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2814
   NV_FOPT_LPBOOT1_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2815
   --  arg-macro: function NV_FOPT_LPBOOT1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FOPT_LPBOOT1_SHIFT)) and NV_FOPT_LPBOOT1_MASK;

   NV_FOPT_FAST_INIT_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2817
   NV_FOPT_FAST_INIT_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2818
   --  arg-macro: function NV_FOPT_FAST_INIT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << NV_FOPT_FAST_INIT_SHIFT)) and NV_FOPT_FAST_INIT_MASK;

   FTFA_FlashConfig_BASE : constant := (16#400#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2829
   --  unsupported macro: FTFA_FlashConfig ((NV_Type *)FTFA_FlashConfig_BASE)
   --  unsupported macro: NV_BASE_ADDRS { FTFA_FlashConfig_BASE }
   --  unsupported macro: NV_BASE_PTRS { FTFA_FlashConfig }

   OSC_CR_SC16P_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2866
   OSC_CR_SC16P_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2867
   --  arg-macro: function OSC_CR_SC16P (x)
   --    return ((uint8_t)(((uint8_t)(x)) << OSC_CR_SC16P_SHIFT)) and OSC_CR_SC16P_MASK;

   OSC_CR_SC8P_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2869
   OSC_CR_SC8P_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2870
   --  arg-macro: function OSC_CR_SC8P (x)
   --    return ((uint8_t)(((uint8_t)(x)) << OSC_CR_SC8P_SHIFT)) and OSC_CR_SC8P_MASK;

   OSC_CR_SC4P_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2872
   OSC_CR_SC4P_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2873
   --  arg-macro: function OSC_CR_SC4P (x)
   --    return ((uint8_t)(((uint8_t)(x)) << OSC_CR_SC4P_SHIFT)) and OSC_CR_SC4P_MASK;

   OSC_CR_SC2P_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2875
   OSC_CR_SC2P_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2876
   --  arg-macro: function OSC_CR_SC2P (x)
   --    return ((uint8_t)(((uint8_t)(x)) << OSC_CR_SC2P_SHIFT)) and OSC_CR_SC2P_MASK;

   OSC_CR_EREFSTEN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2878
   OSC_CR_EREFSTEN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2879
   --  arg-macro: function OSC_CR_EREFSTEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << OSC_CR_EREFSTEN_SHIFT)) and OSC_CR_EREFSTEN_MASK;

   OSC_CR_ERCLKEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2881
   OSC_CR_ERCLKEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2882
   --  arg-macro: function OSC_CR_ERCLKEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << OSC_CR_ERCLKEN_SHIFT)) and OSC_CR_ERCLKEN_MASK;

   OSC0_BASE : constant := (16#40065000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2893
   --  unsupported macro: OSC0 ((OSC_Type *)OSC0_BASE)
   --  unsupported macro: OSC_BASE_ADDRS { OSC0_BASE }
   --  unsupported macro: OSC_BASE_PTRS { OSC0 }

   PIT_MCR_FRZ_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2940
   PIT_MCR_FRZ_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2941
   --  arg-macro: function PIT_MCR_FRZ (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_MCR_FRZ_SHIFT)) and PIT_MCR_FRZ_MASK;

   PIT_MCR_MDIS_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2943
   PIT_MCR_MDIS_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2944
   --  arg-macro: function PIT_MCR_MDIS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_MCR_MDIS_SHIFT)) and PIT_MCR_MDIS_MASK;

   PIT_LTMR64H_LTH_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2948
   PIT_LTMR64H_LTH_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2949
   --  arg-macro: function PIT_LTMR64H_LTH (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_LTMR64H_LTH_SHIFT)) and PIT_LTMR64H_LTH_MASK;

   PIT_LTMR64L_LTL_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2953
   PIT_LTMR64L_LTL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2954
   --  arg-macro: function PIT_LTMR64L_LTL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_LTMR64L_LTL_SHIFT)) and PIT_LTMR64L_LTL_MASK;

   PIT_LDVAL_TSV_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2958
   PIT_LDVAL_TSV_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2959
   --  arg-macro: function PIT_LDVAL_TSV (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_LDVAL_TSV_SHIFT)) and PIT_LDVAL_TSV_MASK;

   PIT_LDVAL_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2963

   PIT_CVAL_TVL_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2966
   PIT_CVAL_TVL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2967
   --  arg-macro: function PIT_CVAL_TVL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_CVAL_TVL_SHIFT)) and PIT_CVAL_TVL_MASK;

   PIT_CVAL_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2971

   PIT_TCTRL_TEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2974
   PIT_TCTRL_TEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2975
   --  arg-macro: function PIT_TCTRL_TEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_TCTRL_TEN_SHIFT)) and PIT_TCTRL_TEN_MASK;

   PIT_TCTRL_TIE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2977
   PIT_TCTRL_TIE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2978
   --  arg-macro: function PIT_TCTRL_TIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_TCTRL_TIE_SHIFT)) and PIT_TCTRL_TIE_MASK;

   PIT_TCTRL_CHN_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2980
   PIT_TCTRL_CHN_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2981
   --  arg-macro: function PIT_TCTRL_CHN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_TCTRL_CHN_SHIFT)) and PIT_TCTRL_CHN_MASK;

   PIT_TCTRL_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2985

   PIT_TFLG_TIF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2988
   PIT_TFLG_TIF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2989
   --  arg-macro: function PIT_TFLG_TIF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PIT_TFLG_TIF_SHIFT)) and PIT_TFLG_TIF_MASK;

   PIT_TFLG_COUNT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2993

   PIT_BASE : constant := (16#40037000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3003
   --  unsupported macro: PIT ((PIT_Type *)PIT_BASE)
   --  unsupported macro: PIT_BASE_ADDRS { PIT_BASE }
   --  unsupported macro: PIT_BASE_PTRS { PIT }
   --  unsupported macro: PIT_IRQS { { PIT_IRQn, PIT_IRQn } }

   PMC_LVDSC1_LVDV_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3044
   PMC_LVDSC1_LVDV_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3045
   --  arg-macro: function PMC_LVDSC1_LVDV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC1_LVDV_SHIFT)) and PMC_LVDSC1_LVDV_MASK;

   PMC_LVDSC1_LVDRE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3047
   PMC_LVDSC1_LVDRE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3048
   --  arg-macro: function PMC_LVDSC1_LVDRE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC1_LVDRE_SHIFT)) and PMC_LVDSC1_LVDRE_MASK;

   PMC_LVDSC1_LVDIE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3050
   PMC_LVDSC1_LVDIE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3051
   --  arg-macro: function PMC_LVDSC1_LVDIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC1_LVDIE_SHIFT)) and PMC_LVDSC1_LVDIE_MASK;

   PMC_LVDSC1_LVDACK_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3053
   PMC_LVDSC1_LVDACK_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3054
   --  arg-macro: function PMC_LVDSC1_LVDACK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC1_LVDACK_SHIFT)) and PMC_LVDSC1_LVDACK_MASK;

   PMC_LVDSC1_LVDF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3056
   PMC_LVDSC1_LVDF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3057
   --  arg-macro: function PMC_LVDSC1_LVDF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC1_LVDF_SHIFT)) and PMC_LVDSC1_LVDF_MASK;

   PMC_LVDSC2_LVWV_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3061
   PMC_LVDSC2_LVWV_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3062
   --  arg-macro: function PMC_LVDSC2_LVWV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC2_LVWV_SHIFT)) and PMC_LVDSC2_LVWV_MASK;

   PMC_LVDSC2_LVWIE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3064
   PMC_LVDSC2_LVWIE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3065
   --  arg-macro: function PMC_LVDSC2_LVWIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC2_LVWIE_SHIFT)) and PMC_LVDSC2_LVWIE_MASK;

   PMC_LVDSC2_LVWACK_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3067
   PMC_LVDSC2_LVWACK_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3068
   --  arg-macro: function PMC_LVDSC2_LVWACK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC2_LVWACK_SHIFT)) and PMC_LVDSC2_LVWACK_MASK;

   PMC_LVDSC2_LVWF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3070
   PMC_LVDSC2_LVWF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3071
   --  arg-macro: function PMC_LVDSC2_LVWF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_LVDSC2_LVWF_SHIFT)) and PMC_LVDSC2_LVWF_MASK;

   PMC_REGSC_BGBE_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3075
   PMC_REGSC_BGBE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3076
   --  arg-macro: function PMC_REGSC_BGBE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_REGSC_BGBE_SHIFT)) and PMC_REGSC_BGBE_MASK;

   PMC_REGSC_REGONS_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3078
   PMC_REGSC_REGONS_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3079
   --  arg-macro: function PMC_REGSC_REGONS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_REGSC_REGONS_SHIFT)) and PMC_REGSC_REGONS_MASK;

   PMC_REGSC_ACKISO_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3081
   PMC_REGSC_ACKISO_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3082
   --  arg-macro: function PMC_REGSC_ACKISO (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_REGSC_ACKISO_SHIFT)) and PMC_REGSC_ACKISO_MASK;

   PMC_REGSC_BGEN_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3084
   PMC_REGSC_BGEN_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3085
   --  arg-macro: function PMC_REGSC_BGEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << PMC_REGSC_BGEN_SHIFT)) and PMC_REGSC_BGEN_MASK;

   PMC_BASE : constant := (16#4007D000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3096
   --  unsupported macro: PMC ((PMC_Type *)PMC_BASE)
   --  unsupported macro: PMC_BASE_ADDRS { PMC_BASE }
   --  unsupported macro: PMC_BASE_PTRS { PMC }
   --  unsupported macro: PMC_IRQS { LVD_LVW_IRQn }

   PORT_PCR_PS_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3139
   PORT_PCR_PS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3140
   --  arg-macro: function PORT_PCR_PS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_PS_SHIFT)) and PORT_PCR_PS_MASK;

   PORT_PCR_PE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3142
   PORT_PCR_PE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3143
   --  arg-macro: function PORT_PCR_PE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_PE_SHIFT)) and PORT_PCR_PE_MASK;

   PORT_PCR_SRE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3145
   PORT_PCR_SRE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3146
   --  arg-macro: function PORT_PCR_SRE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_SRE_SHIFT)) and PORT_PCR_SRE_MASK;

   PORT_PCR_PFE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3148
   PORT_PCR_PFE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3149
   --  arg-macro: function PORT_PCR_PFE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_PFE_SHIFT)) and PORT_PCR_PFE_MASK;

   PORT_PCR_DSE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3151
   PORT_PCR_DSE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3152
   --  arg-macro: function PORT_PCR_DSE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_DSE_SHIFT)) and PORT_PCR_DSE_MASK;

   PORT_PCR_MUX_MASK : constant := (16#700#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3154
   PORT_PCR_MUX_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3155
   --  arg-macro: function PORT_PCR_MUX (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_MUX_SHIFT)) and PORT_PCR_MUX_MASK;

   PORT_PCR_IRQC_MASK : constant := (16#F0000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3157
   PORT_PCR_IRQC_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3158
   --  arg-macro: function PORT_PCR_IRQC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_IRQC_SHIFT)) and PORT_PCR_IRQC_MASK;

   PORT_PCR_ISF_MASK : constant := (16#1000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3160
   PORT_PCR_ISF_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3161
   --  arg-macro: function PORT_PCR_ISF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_PCR_ISF_SHIFT)) and PORT_PCR_ISF_MASK;

   PORT_PCR_COUNT : constant := (32);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3165

   PORT_GPCLR_GPWD_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3168
   PORT_GPCLR_GPWD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3169
   --  arg-macro: function PORT_GPCLR_GPWD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_GPCLR_GPWD_SHIFT)) and PORT_GPCLR_GPWD_MASK;

   PORT_GPCLR_GPWE_MASK : constant := (16#FFFF0000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3171
   PORT_GPCLR_GPWE_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3172
   --  arg-macro: function PORT_GPCLR_GPWE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_GPCLR_GPWE_SHIFT)) and PORT_GPCLR_GPWE_MASK;

   PORT_GPCHR_GPWD_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3176
   PORT_GPCHR_GPWD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3177
   --  arg-macro: function PORT_GPCHR_GPWD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_GPCHR_GPWD_SHIFT)) and PORT_GPCHR_GPWD_MASK;

   PORT_GPCHR_GPWE_MASK : constant := (16#FFFF0000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3179
   PORT_GPCHR_GPWE_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3180
   --  arg-macro: function PORT_GPCHR_GPWE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_GPCHR_GPWE_SHIFT)) and PORT_GPCHR_GPWE_MASK;

   PORT_ISFR_ISF_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3184
   PORT_ISFR_ISF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3185
   --  arg-macro: function PORT_ISFR_ISF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << PORT_ISFR_ISF_SHIFT)) and PORT_ISFR_ISF_MASK;

   PORTA_BASE : constant := (16#40049000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3196
   --  unsupported macro: PORTA ((PORT_Type *)PORTA_BASE)

   PORTB_BASE : constant := (16#4004A000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3200
   --  unsupported macro: PORTB ((PORT_Type *)PORTB_BASE)

   PORTC_BASE : constant := (16#4004B000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3204
   --  unsupported macro: PORTC ((PORT_Type *)PORTC_BASE)

   PORTD_BASE : constant := (16#4004C000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3208
   --  unsupported macro: PORTD ((PORT_Type *)PORTD_BASE)

   PORTE_BASE : constant := (16#4004D000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3212
   --  unsupported macro: PORTE ((PORT_Type *)PORTE_BASE)
   --  unsupported macro: PORT_BASE_ADDRS { PORTA_BASE, PORTB_BASE, PORTC_BASE, PORTD_BASE, PORTE_BASE }
   --  unsupported macro: PORT_BASE_PTRS { PORTA, PORTB, PORTC, PORTD, PORTE }
   --  unsupported macro: PORT_IRQS { PORTA_IRQn, NotAvail_IRQn, NotAvail_IRQn, PORTD_IRQn, NotAvail_IRQn }

   RCM_SRS0_WAKEUP_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3255
   RCM_SRS0_WAKEUP_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3256
   --  arg-macro: function RCM_SRS0_WAKEUP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS0_WAKEUP_SHIFT)) and RCM_SRS0_WAKEUP_MASK;

   RCM_SRS0_LVD_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3258
   RCM_SRS0_LVD_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3259
   --  arg-macro: function RCM_SRS0_LVD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS0_LVD_SHIFT)) and RCM_SRS0_LVD_MASK;

   RCM_SRS0_LOC_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3261
   RCM_SRS0_LOC_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3262
   --  arg-macro: function RCM_SRS0_LOC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS0_LOC_SHIFT)) and RCM_SRS0_LOC_MASK;

   RCM_SRS0_LOL_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3264
   RCM_SRS0_LOL_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3265
   --  arg-macro: function RCM_SRS0_LOL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS0_LOL_SHIFT)) and RCM_SRS0_LOL_MASK;

   RCM_SRS0_WDOG_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3267
   RCM_SRS0_WDOG_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3268
   --  arg-macro: function RCM_SRS0_WDOG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS0_WDOG_SHIFT)) and RCM_SRS0_WDOG_MASK;

   RCM_SRS0_PIN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3270
   RCM_SRS0_PIN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3271
   --  arg-macro: function RCM_SRS0_PIN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS0_PIN_SHIFT)) and RCM_SRS0_PIN_MASK;

   RCM_SRS0_POR_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3273
   RCM_SRS0_POR_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3274
   --  arg-macro: function RCM_SRS0_POR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS0_POR_SHIFT)) and RCM_SRS0_POR_MASK;

   RCM_SRS1_LOCKUP_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3278
   RCM_SRS1_LOCKUP_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3279
   --  arg-macro: function RCM_SRS1_LOCKUP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS1_LOCKUP_SHIFT)) and RCM_SRS1_LOCKUP_MASK;

   RCM_SRS1_SW_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3281
   RCM_SRS1_SW_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3282
   --  arg-macro: function RCM_SRS1_SW (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS1_SW_SHIFT)) and RCM_SRS1_SW_MASK;

   RCM_SRS1_MDM_AP_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3284
   RCM_SRS1_MDM_AP_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3285
   --  arg-macro: function RCM_SRS1_MDM_AP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS1_MDM_AP_SHIFT)) and RCM_SRS1_MDM_AP_MASK;

   RCM_SRS1_SACKERR_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3287
   RCM_SRS1_SACKERR_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3288
   --  arg-macro: function RCM_SRS1_SACKERR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_SRS1_SACKERR_SHIFT)) and RCM_SRS1_SACKERR_MASK;

   RCM_RPFC_RSTFLTSRW_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3292
   RCM_RPFC_RSTFLTSRW_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3293
   --  arg-macro: function RCM_RPFC_RSTFLTSRW (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_RPFC_RSTFLTSRW_SHIFT)) and RCM_RPFC_RSTFLTSRW_MASK;

   RCM_RPFC_RSTFLTSS_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3295
   RCM_RPFC_RSTFLTSS_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3296
   --  arg-macro: function RCM_RPFC_RSTFLTSS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_RPFC_RSTFLTSS_SHIFT)) and RCM_RPFC_RSTFLTSS_MASK;

   RCM_RPFW_RSTFLTSEL_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3300
   RCM_RPFW_RSTFLTSEL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3301
   --  arg-macro: function RCM_RPFW_RSTFLTSEL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << RCM_RPFW_RSTFLTSEL_SHIFT)) and RCM_RPFW_RSTFLTSEL_MASK;

   RCM_BASE : constant := (16#4007F000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3312
   --  unsupported macro: RCM ((RCM_Type *)RCM_BASE)
   --  unsupported macro: RCM_BASE_ADDRS { RCM_BASE }
   --  unsupported macro: RCM_BASE_PTRS { RCM }

   ROM_ENTRY_ENTRY_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3361
   ROM_ENTRY_ENTRY_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3362
   --  arg-macro: function ROM_ENTRY_ENTRY (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_ENTRY_ENTRY_SHIFT)) and ROM_ENTRY_ENTRY_MASK;

   ROM_ENTRY_COUNT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3366

   ROM_TABLEMARK_MARK_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3369
   ROM_TABLEMARK_MARK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3370
   --  arg-macro: function ROM_TABLEMARK_MARK (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_TABLEMARK_MARK_SHIFT)) and ROM_TABLEMARK_MARK_MASK;

   ROM_SYSACCESS_SYSACCESS_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3374
   ROM_SYSACCESS_SYSACCESS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3375
   --  arg-macro: function ROM_SYSACCESS_SYSACCESS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_SYSACCESS_SYSACCESS_SHIFT)) and ROM_SYSACCESS_SYSACCESS_MASK;

   ROM_PERIPHID4_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3379
   ROM_PERIPHID4_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3380
   --  arg-macro: function ROM_PERIPHID4_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID4_PERIPHID_SHIFT)) and ROM_PERIPHID4_PERIPHID_MASK;

   ROM_PERIPHID5_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3384
   ROM_PERIPHID5_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3385
   --  arg-macro: function ROM_PERIPHID5_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID5_PERIPHID_SHIFT)) and ROM_PERIPHID5_PERIPHID_MASK;

   ROM_PERIPHID6_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3389
   ROM_PERIPHID6_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3390
   --  arg-macro: function ROM_PERIPHID6_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID6_PERIPHID_SHIFT)) and ROM_PERIPHID6_PERIPHID_MASK;

   ROM_PERIPHID7_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3394
   ROM_PERIPHID7_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3395
   --  arg-macro: function ROM_PERIPHID7_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID7_PERIPHID_SHIFT)) and ROM_PERIPHID7_PERIPHID_MASK;

   ROM_PERIPHID0_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3399
   ROM_PERIPHID0_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3400
   --  arg-macro: function ROM_PERIPHID0_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID0_PERIPHID_SHIFT)) and ROM_PERIPHID0_PERIPHID_MASK;

   ROM_PERIPHID1_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3404
   ROM_PERIPHID1_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3405
   --  arg-macro: function ROM_PERIPHID1_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID1_PERIPHID_SHIFT)) and ROM_PERIPHID1_PERIPHID_MASK;

   ROM_PERIPHID2_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3409
   ROM_PERIPHID2_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3410
   --  arg-macro: function ROM_PERIPHID2_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID2_PERIPHID_SHIFT)) and ROM_PERIPHID2_PERIPHID_MASK;

   ROM_PERIPHID3_PERIPHID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3414
   ROM_PERIPHID3_PERIPHID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3415
   --  arg-macro: function ROM_PERIPHID3_PERIPHID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_PERIPHID3_PERIPHID_SHIFT)) and ROM_PERIPHID3_PERIPHID_MASK;

   ROM_COMPID_COMPID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3419
   ROM_COMPID_COMPID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3420
   --  arg-macro: function ROM_COMPID_COMPID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << ROM_COMPID_COMPID_SHIFT)) and ROM_COMPID_COMPID_MASK;

   ROM_COMPID_COUNT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3424

   ROM_BASE : constant := (16#F0002000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3434
   --  unsupported macro: ROM ((ROM_Type *)ROM_BASE)
   --  unsupported macro: ROM_BASE_ADDRS { ROM_BASE }
   --  unsupported macro: ROM_BASE_PTRS { ROM }

   RTC_TSR_TSR_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3478
   RTC_TSR_TSR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3479
   --  arg-macro: function RTC_TSR_TSR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_TSR_TSR_SHIFT)) and RTC_TSR_TSR_MASK;

   RTC_TPR_TPR_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3483
   RTC_TPR_TPR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3484
   --  arg-macro: function RTC_TPR_TPR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_TPR_TPR_SHIFT)) and RTC_TPR_TPR_MASK;

   RTC_TAR_TAR_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3488
   RTC_TAR_TAR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3489
   --  arg-macro: function RTC_TAR_TAR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_TAR_TAR_SHIFT)) and RTC_TAR_TAR_MASK;

   RTC_TCR_TCR_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3493
   RTC_TCR_TCR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3494
   --  arg-macro: function RTC_TCR_TCR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_TCR_TCR_SHIFT)) and RTC_TCR_TCR_MASK;

   RTC_TCR_CIR_MASK : constant := (16#FF00#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3496
   RTC_TCR_CIR_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3497
   --  arg-macro: function RTC_TCR_CIR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_TCR_CIR_SHIFT)) and RTC_TCR_CIR_MASK;

   RTC_TCR_TCV_MASK : constant := (16#FF0000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3499
   RTC_TCR_TCV_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3500
   --  arg-macro: function RTC_TCR_TCV (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_TCR_TCV_SHIFT)) and RTC_TCR_TCV_MASK;

   RTC_TCR_CIC_MASK : constant := (16#FF000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3502
   RTC_TCR_CIC_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3503
   --  arg-macro: function RTC_TCR_CIC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_TCR_CIC_SHIFT)) and RTC_TCR_CIC_MASK;

   RTC_CR_SWR_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3507
   RTC_CR_SWR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3508
   --  arg-macro: function RTC_CR_SWR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_SWR_SHIFT)) and RTC_CR_SWR_MASK;

   RTC_CR_WPE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3510
   RTC_CR_WPE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3511
   --  arg-macro: function RTC_CR_WPE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_WPE_SHIFT)) and RTC_CR_WPE_MASK;

   RTC_CR_SUP_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3513
   RTC_CR_SUP_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3514
   --  arg-macro: function RTC_CR_SUP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_SUP_SHIFT)) and RTC_CR_SUP_MASK;

   RTC_CR_UM_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3516
   RTC_CR_UM_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3517
   --  arg-macro: function RTC_CR_UM (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_UM_SHIFT)) and RTC_CR_UM_MASK;

   RTC_CR_OSCE_MASK : constant := (16#100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3519
   RTC_CR_OSCE_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3520
   --  arg-macro: function RTC_CR_OSCE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_OSCE_SHIFT)) and RTC_CR_OSCE_MASK;

   RTC_CR_CLKO_MASK : constant := (16#200#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3522
   RTC_CR_CLKO_SHIFT : constant := (9);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3523
   --  arg-macro: function RTC_CR_CLKO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_CLKO_SHIFT)) and RTC_CR_CLKO_MASK;

   RTC_CR_SC16P_MASK : constant := (16#400#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3525
   RTC_CR_SC16P_SHIFT : constant := (10);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3526
   --  arg-macro: function RTC_CR_SC16P (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_SC16P_SHIFT)) and RTC_CR_SC16P_MASK;

   RTC_CR_SC8P_MASK : constant := (16#800#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3528
   RTC_CR_SC8P_SHIFT : constant := (11);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3529
   --  arg-macro: function RTC_CR_SC8P (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_SC8P_SHIFT)) and RTC_CR_SC8P_MASK;

   RTC_CR_SC4P_MASK : constant := (16#1000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3531
   RTC_CR_SC4P_SHIFT : constant := (12);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3532
   --  arg-macro: function RTC_CR_SC4P (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_SC4P_SHIFT)) and RTC_CR_SC4P_MASK;

   RTC_CR_SC2P_MASK : constant := (16#2000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3534
   RTC_CR_SC2P_SHIFT : constant := (13);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3535
   --  arg-macro: function RTC_CR_SC2P (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_CR_SC2P_SHIFT)) and RTC_CR_SC2P_MASK;

   RTC_SR_TIF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3539
   RTC_SR_TIF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3540
   --  arg-macro: function RTC_SR_TIF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_SR_TIF_SHIFT)) and RTC_SR_TIF_MASK;

   RTC_SR_TOF_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3542
   RTC_SR_TOF_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3543
   --  arg-macro: function RTC_SR_TOF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_SR_TOF_SHIFT)) and RTC_SR_TOF_MASK;

   RTC_SR_TAF_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3545
   RTC_SR_TAF_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3546
   --  arg-macro: function RTC_SR_TAF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_SR_TAF_SHIFT)) and RTC_SR_TAF_MASK;

   RTC_SR_TCE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3548
   RTC_SR_TCE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3549
   --  arg-macro: function RTC_SR_TCE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_SR_TCE_SHIFT)) and RTC_SR_TCE_MASK;

   RTC_LR_TCL_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3553
   RTC_LR_TCL_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3554
   --  arg-macro: function RTC_LR_TCL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_LR_TCL_SHIFT)) and RTC_LR_TCL_MASK;

   RTC_LR_CRL_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3556
   RTC_LR_CRL_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3557
   --  arg-macro: function RTC_LR_CRL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_LR_CRL_SHIFT)) and RTC_LR_CRL_MASK;

   RTC_LR_SRL_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3559
   RTC_LR_SRL_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3560
   --  arg-macro: function RTC_LR_SRL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_LR_SRL_SHIFT)) and RTC_LR_SRL_MASK;

   RTC_LR_LRL_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3562
   RTC_LR_LRL_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3563
   --  arg-macro: function RTC_LR_LRL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_LR_LRL_SHIFT)) and RTC_LR_LRL_MASK;

   RTC_IER_TIIE_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3567
   RTC_IER_TIIE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3568
   --  arg-macro: function RTC_IER_TIIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_IER_TIIE_SHIFT)) and RTC_IER_TIIE_MASK;

   RTC_IER_TOIE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3570
   RTC_IER_TOIE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3571
   --  arg-macro: function RTC_IER_TOIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_IER_TOIE_SHIFT)) and RTC_IER_TOIE_MASK;

   RTC_IER_TAIE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3573
   RTC_IER_TAIE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3574
   --  arg-macro: function RTC_IER_TAIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_IER_TAIE_SHIFT)) and RTC_IER_TAIE_MASK;

   RTC_IER_TSIE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3576
   RTC_IER_TSIE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3577
   --  arg-macro: function RTC_IER_TSIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_IER_TSIE_SHIFT)) and RTC_IER_TSIE_MASK;

   RTC_IER_WPON_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3579
   RTC_IER_WPON_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3580
   --  arg-macro: function RTC_IER_WPON (x)
   --    return ((uint32_t)(((uint32_t)(x)) << RTC_IER_WPON_SHIFT)) and RTC_IER_WPON_MASK;

   RTC_BASE : constant := (16#4003D000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3591
   --  unsupported macro: RTC ((RTC_Type *)RTC_BASE)
   --  unsupported macro: RTC_BASE_ADDRS { RTC_BASE }
   --  unsupported macro: RTC_BASE_PTRS { RTC }
   --  unsupported macro: RTC_IRQS { RTC_IRQn }
   --  unsupported macro: RTC_SECONDS_IRQS { RTC_Seconds_IRQn }

   SIM_SOPT1_OSC32KSEL_MASK : constant := (16#C0000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3657
   SIM_SOPT1_OSC32KSEL_SHIFT : constant := (18);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3658
   --  arg-macro: function SIM_SOPT1_OSC32KSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT1_OSC32KSEL_SHIFT)) and SIM_SOPT1_OSC32KSEL_MASK;

   SIM_SOPT1_USBVSTBY_MASK : constant := (16#20000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3660
   SIM_SOPT1_USBVSTBY_SHIFT : constant := (29);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3661
   --  arg-macro: function SIM_SOPT1_USBVSTBY (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT1_USBVSTBY_SHIFT)) and SIM_SOPT1_USBVSTBY_MASK;

   SIM_SOPT1_USBSSTBY_MASK : constant := (16#40000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3663
   SIM_SOPT1_USBSSTBY_SHIFT : constant := (30);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3664
   --  arg-macro: function SIM_SOPT1_USBSSTBY (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT1_USBSSTBY_SHIFT)) and SIM_SOPT1_USBSSTBY_MASK;

   SIM_SOPT1_USBREGEN_MASK : constant := (16#80000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3666
   SIM_SOPT1_USBREGEN_SHIFT : constant := (31);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3667
   --  arg-macro: function SIM_SOPT1_USBREGEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT1_USBREGEN_SHIFT)) and SIM_SOPT1_USBREGEN_MASK;

   SIM_SOPT1CFG_URWE_MASK : constant := (16#1000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3671
   SIM_SOPT1CFG_URWE_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3672
   --  arg-macro: function SIM_SOPT1CFG_URWE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT1CFG_URWE_SHIFT)) and SIM_SOPT1CFG_URWE_MASK;

   SIM_SOPT1CFG_UVSWE_MASK : constant := (16#2000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3674
   SIM_SOPT1CFG_UVSWE_SHIFT : constant := (25);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3675
   --  arg-macro: function SIM_SOPT1CFG_UVSWE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT1CFG_UVSWE_SHIFT)) and SIM_SOPT1CFG_UVSWE_MASK;

   SIM_SOPT1CFG_USSWE_MASK : constant := (16#4000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3677
   SIM_SOPT1CFG_USSWE_SHIFT : constant := (26);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3678
   --  arg-macro: function SIM_SOPT1CFG_USSWE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT1CFG_USSWE_SHIFT)) and SIM_SOPT1CFG_USSWE_MASK;

   SIM_SOPT2_RTCCLKOUTSEL_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3682
   SIM_SOPT2_RTCCLKOUTSEL_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3683
   --  arg-macro: function SIM_SOPT2_RTCCLKOUTSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_RTCCLKOUTSEL_SHIFT)) and SIM_SOPT2_RTCCLKOUTSEL_MASK;

   SIM_SOPT2_CLKOUTSEL_MASK : constant := (16#E0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3685
   SIM_SOPT2_CLKOUTSEL_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3686
   --  arg-macro: function SIM_SOPT2_CLKOUTSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_CLKOUTSEL_SHIFT)) and SIM_SOPT2_CLKOUTSEL_MASK;

   SIM_SOPT2_PLLFLLSEL_MASK : constant := (16#10000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3688
   SIM_SOPT2_PLLFLLSEL_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3689
   --  arg-macro: function SIM_SOPT2_PLLFLLSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_PLLFLLSEL_SHIFT)) and SIM_SOPT2_PLLFLLSEL_MASK;

   SIM_SOPT2_USBSRC_MASK : constant := (16#40000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3691
   SIM_SOPT2_USBSRC_SHIFT : constant := (18);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3692
   --  arg-macro: function SIM_SOPT2_USBSRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_USBSRC_SHIFT)) and SIM_SOPT2_USBSRC_MASK;

   SIM_SOPT2_TPMSRC_MASK : constant := (16#3000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3694
   SIM_SOPT2_TPMSRC_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3695
   --  arg-macro: function SIM_SOPT2_TPMSRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_TPMSRC_SHIFT)) and SIM_SOPT2_TPMSRC_MASK;

   SIM_SOPT2_UART0SRC_MASK : constant := (16#C000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3697
   SIM_SOPT2_UART0SRC_SHIFT : constant := (26);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3698
   --  arg-macro: function SIM_SOPT2_UART0SRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_UART0SRC_SHIFT)) and SIM_SOPT2_UART0SRC_MASK;

   SIM_SOPT4_TPM1CH0SRC_MASK : constant := (16#40000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3702
   SIM_SOPT4_TPM1CH0SRC_SHIFT : constant := (18);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3703
   --  arg-macro: function SIM_SOPT4_TPM1CH0SRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT4_TPM1CH0SRC_SHIFT)) and SIM_SOPT4_TPM1CH0SRC_MASK;

   SIM_SOPT4_TPM2CH0SRC_MASK : constant := (16#100000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3705
   SIM_SOPT4_TPM2CH0SRC_SHIFT : constant := (20);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3706
   --  arg-macro: function SIM_SOPT4_TPM2CH0SRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT4_TPM2CH0SRC_SHIFT)) and SIM_SOPT4_TPM2CH0SRC_MASK;

   SIM_SOPT4_TPM0CLKSEL_MASK : constant := (16#1000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3708
   SIM_SOPT4_TPM0CLKSEL_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3709
   --  arg-macro: function SIM_SOPT4_TPM0CLKSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT4_TPM0CLKSEL_SHIFT)) and SIM_SOPT4_TPM0CLKSEL_MASK;

   SIM_SOPT4_TPM1CLKSEL_MASK : constant := (16#2000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3711
   SIM_SOPT4_TPM1CLKSEL_SHIFT : constant := (25);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3712
   --  arg-macro: function SIM_SOPT4_TPM1CLKSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT4_TPM1CLKSEL_SHIFT)) and SIM_SOPT4_TPM1CLKSEL_MASK;

   SIM_SOPT4_TPM2CLKSEL_MASK : constant := (16#4000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3714
   SIM_SOPT4_TPM2CLKSEL_SHIFT : constant := (26);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3715
   --  arg-macro: function SIM_SOPT4_TPM2CLKSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT4_TPM2CLKSEL_SHIFT)) and SIM_SOPT4_TPM2CLKSEL_MASK;

   SIM_SOPT5_UART0TXSRC_MASK : constant := (16#3#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3719
   SIM_SOPT5_UART0TXSRC_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3720
   --  arg-macro: function SIM_SOPT5_UART0TXSRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT5_UART0TXSRC_SHIFT)) and SIM_SOPT5_UART0TXSRC_MASK;

   SIM_SOPT5_UART0RXSRC_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3722
   SIM_SOPT5_UART0RXSRC_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3723
   --  arg-macro: function SIM_SOPT5_UART0RXSRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT5_UART0RXSRC_SHIFT)) and SIM_SOPT5_UART0RXSRC_MASK;

   SIM_SOPT5_UART1TXSRC_MASK : constant := (16#30#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3725
   SIM_SOPT5_UART1TXSRC_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3726
   --  arg-macro: function SIM_SOPT5_UART1TXSRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT5_UART1TXSRC_SHIFT)) and SIM_SOPT5_UART1TXSRC_MASK;

   SIM_SOPT5_UART1RXSRC_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3728
   SIM_SOPT5_UART1RXSRC_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3729
   --  arg-macro: function SIM_SOPT5_UART1RXSRC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT5_UART1RXSRC_SHIFT)) and SIM_SOPT5_UART1RXSRC_MASK;

   SIM_SOPT5_UART0ODE_MASK : constant := (16#10000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3731
   SIM_SOPT5_UART0ODE_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3732
   --  arg-macro: function SIM_SOPT5_UART0ODE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT5_UART0ODE_SHIFT)) and SIM_SOPT5_UART0ODE_MASK;

   SIM_SOPT5_UART1ODE_MASK : constant := (16#20000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3734
   SIM_SOPT5_UART1ODE_SHIFT : constant := (17);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3735
   --  arg-macro: function SIM_SOPT5_UART1ODE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT5_UART1ODE_SHIFT)) and SIM_SOPT5_UART1ODE_MASK;

   SIM_SOPT5_UART2ODE_MASK : constant := (16#40000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3737
   SIM_SOPT5_UART2ODE_SHIFT : constant := (18);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3738
   --  arg-macro: function SIM_SOPT5_UART2ODE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT5_UART2ODE_SHIFT)) and SIM_SOPT5_UART2ODE_MASK;

   SIM_SOPT7_ADC0TRGSEL_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3742
   SIM_SOPT7_ADC0TRGSEL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3743
   --  arg-macro: function SIM_SOPT7_ADC0TRGSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT7_ADC0TRGSEL_SHIFT)) and SIM_SOPT7_ADC0TRGSEL_MASK;

   SIM_SOPT7_ADC0PRETRGSEL_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3745
   SIM_SOPT7_ADC0PRETRGSEL_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3746
   --  arg-macro: function SIM_SOPT7_ADC0PRETRGSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT7_ADC0PRETRGSEL_SHIFT)) and SIM_SOPT7_ADC0PRETRGSEL_MASK;

   SIM_SOPT7_ADC0ALTTRGEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3748
   SIM_SOPT7_ADC0ALTTRGEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3749
   --  arg-macro: function SIM_SOPT7_ADC0ALTTRGEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SOPT7_ADC0ALTTRGEN_SHIFT)) and SIM_SOPT7_ADC0ALTTRGEN_MASK;

   SIM_SDID_PINID_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3753
   SIM_SDID_PINID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3754
   --  arg-macro: function SIM_SDID_PINID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SDID_PINID_SHIFT)) and SIM_SDID_PINID_MASK;

   SIM_SDID_DIEID_MASK : constant := (16#F80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3756
   SIM_SDID_DIEID_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3757
   --  arg-macro: function SIM_SDID_DIEID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SDID_DIEID_SHIFT)) and SIM_SDID_DIEID_MASK;

   SIM_SDID_REVID_MASK : constant := (16#F000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3759
   SIM_SDID_REVID_SHIFT : constant := (12);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3760
   --  arg-macro: function SIM_SDID_REVID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SDID_REVID_SHIFT)) and SIM_SDID_REVID_MASK;

   SIM_SDID_SRAMSIZE_MASK : constant := (16#F0000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3762
   SIM_SDID_SRAMSIZE_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3763
   --  arg-macro: function SIM_SDID_SRAMSIZE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SDID_SRAMSIZE_SHIFT)) and SIM_SDID_SRAMSIZE_MASK;

   SIM_SDID_SERIESID_MASK : constant := (16#F00000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3765
   SIM_SDID_SERIESID_SHIFT : constant := (20);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3766
   --  arg-macro: function SIM_SDID_SERIESID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SDID_SERIESID_SHIFT)) and SIM_SDID_SERIESID_MASK;

   SIM_SDID_SUBFAMID_MASK : constant := (16#F000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3768
   SIM_SDID_SUBFAMID_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3769
   --  arg-macro: function SIM_SDID_SUBFAMID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SDID_SUBFAMID_SHIFT)) and SIM_SDID_SUBFAMID_MASK;

   SIM_SDID_FAMID_MASK : constant := (16#F0000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3771
   SIM_SDID_FAMID_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3772
   --  arg-macro: function SIM_SDID_FAMID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SDID_FAMID_SHIFT)) and SIM_SDID_FAMID_MASK;

   SIM_SCGC4_I2C0_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3776
   SIM_SCGC4_I2C0_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3777
   --  arg-macro: function SIM_SCGC4_I2C0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_I2C0_SHIFT)) and SIM_SCGC4_I2C0_MASK;

   SIM_SCGC4_I2C1_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3779
   SIM_SCGC4_I2C1_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3780
   --  arg-macro: function SIM_SCGC4_I2C1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_I2C1_SHIFT)) and SIM_SCGC4_I2C1_MASK;

   SIM_SCGC4_UART0_MASK : constant := (16#400#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3782
   SIM_SCGC4_UART0_SHIFT : constant := (10);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3783
   --  arg-macro: function SIM_SCGC4_UART0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_UART0_SHIFT)) and SIM_SCGC4_UART0_MASK;

   SIM_SCGC4_UART1_MASK : constant := (16#800#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3785
   SIM_SCGC4_UART1_SHIFT : constant := (11);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3786
   --  arg-macro: function SIM_SCGC4_UART1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_UART1_SHIFT)) and SIM_SCGC4_UART1_MASK;

   SIM_SCGC4_UART2_MASK : constant := (16#1000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3788
   SIM_SCGC4_UART2_SHIFT : constant := (12);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3789
   --  arg-macro: function SIM_SCGC4_UART2 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_UART2_SHIFT)) and SIM_SCGC4_UART2_MASK;

   SIM_SCGC4_USBOTG_MASK : constant := (16#40000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3791
   SIM_SCGC4_USBOTG_SHIFT : constant := (18);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3792
   --  arg-macro: function SIM_SCGC4_USBOTG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_USBOTG_SHIFT)) and SIM_SCGC4_USBOTG_MASK;

   SIM_SCGC4_CMP_MASK : constant := (16#80000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3794
   SIM_SCGC4_CMP_SHIFT : constant := (19);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3795
   --  arg-macro: function SIM_SCGC4_CMP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_CMP_SHIFT)) and SIM_SCGC4_CMP_MASK;

   SIM_SCGC4_SPI0_MASK : constant := (16#400000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3797
   SIM_SCGC4_SPI0_SHIFT : constant := (22);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3798
   --  arg-macro: function SIM_SCGC4_SPI0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_SPI0_SHIFT)) and SIM_SCGC4_SPI0_MASK;

   SIM_SCGC4_SPI1_MASK : constant := (16#800000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3800
   SIM_SCGC4_SPI1_SHIFT : constant := (23);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3801
   --  arg-macro: function SIM_SCGC4_SPI1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC4_SPI1_SHIFT)) and SIM_SCGC4_SPI1_MASK;

   SIM_SCGC5_LPTMR_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3805
   SIM_SCGC5_LPTMR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3806
   --  arg-macro: function SIM_SCGC5_LPTMR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC5_LPTMR_SHIFT)) and SIM_SCGC5_LPTMR_MASK;

   SIM_SCGC5_TSI_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3808
   SIM_SCGC5_TSI_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3809
   --  arg-macro: function SIM_SCGC5_TSI (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC5_TSI_SHIFT)) and SIM_SCGC5_TSI_MASK;

   SIM_SCGC5_PORTA_MASK : constant := (16#200#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3811
   SIM_SCGC5_PORTA_SHIFT : constant := (9);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3812
   --  arg-macro: function SIM_SCGC5_PORTA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC5_PORTA_SHIFT)) and SIM_SCGC5_PORTA_MASK;

   SIM_SCGC5_PORTB_MASK : constant := (16#400#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3814
   SIM_SCGC5_PORTB_SHIFT : constant := (10);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3815
   --  arg-macro: function SIM_SCGC5_PORTB (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC5_PORTB_SHIFT)) and SIM_SCGC5_PORTB_MASK;

   SIM_SCGC5_PORTC_MASK : constant := (16#800#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3817
   SIM_SCGC5_PORTC_SHIFT : constant := (11);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3818
   --  arg-macro: function SIM_SCGC5_PORTC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC5_PORTC_SHIFT)) and SIM_SCGC5_PORTC_MASK;

   SIM_SCGC5_PORTD_MASK : constant := (16#1000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3820
   SIM_SCGC5_PORTD_SHIFT : constant := (12);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3821
   --  arg-macro: function SIM_SCGC5_PORTD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC5_PORTD_SHIFT)) and SIM_SCGC5_PORTD_MASK;

   SIM_SCGC5_PORTE_MASK : constant := (16#2000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3823
   SIM_SCGC5_PORTE_SHIFT : constant := (13);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3824
   --  arg-macro: function SIM_SCGC5_PORTE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC5_PORTE_SHIFT)) and SIM_SCGC5_PORTE_MASK;

   SIM_SCGC6_FTF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3828
   SIM_SCGC6_FTF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3829
   --  arg-macro: function SIM_SCGC6_FTF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_FTF_SHIFT)) and SIM_SCGC6_FTF_MASK;

   SIM_SCGC6_DMAMUX_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3831
   SIM_SCGC6_DMAMUX_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3832
   --  arg-macro: function SIM_SCGC6_DMAMUX (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_DMAMUX_SHIFT)) and SIM_SCGC6_DMAMUX_MASK;

   SIM_SCGC6_PIT_MASK : constant := (16#800000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3834
   SIM_SCGC6_PIT_SHIFT : constant := (23);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3835
   --  arg-macro: function SIM_SCGC6_PIT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_PIT_SHIFT)) and SIM_SCGC6_PIT_MASK;

   SIM_SCGC6_TPM0_MASK : constant := (16#1000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3837
   SIM_SCGC6_TPM0_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3838
   --  arg-macro: function SIM_SCGC6_TPM0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_TPM0_SHIFT)) and SIM_SCGC6_TPM0_MASK;

   SIM_SCGC6_TPM1_MASK : constant := (16#2000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3840
   SIM_SCGC6_TPM1_SHIFT : constant := (25);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3841
   --  arg-macro: function SIM_SCGC6_TPM1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_TPM1_SHIFT)) and SIM_SCGC6_TPM1_MASK;

   SIM_SCGC6_TPM2_MASK : constant := (16#4000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3843
   SIM_SCGC6_TPM2_SHIFT : constant := (26);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3844
   --  arg-macro: function SIM_SCGC6_TPM2 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_TPM2_SHIFT)) and SIM_SCGC6_TPM2_MASK;

   SIM_SCGC6_ADC0_MASK : constant := (16#8000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3846
   SIM_SCGC6_ADC0_SHIFT : constant := (27);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3847
   --  arg-macro: function SIM_SCGC6_ADC0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_ADC0_SHIFT)) and SIM_SCGC6_ADC0_MASK;

   SIM_SCGC6_RTC_MASK : constant := (16#20000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3849
   SIM_SCGC6_RTC_SHIFT : constant := (29);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3850
   --  arg-macro: function SIM_SCGC6_RTC (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_RTC_SHIFT)) and SIM_SCGC6_RTC_MASK;

   SIM_SCGC6_DAC0_MASK : constant := (16#80000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3852
   SIM_SCGC6_DAC0_SHIFT : constant := (31);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3853
   --  arg-macro: function SIM_SCGC6_DAC0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC6_DAC0_SHIFT)) and SIM_SCGC6_DAC0_MASK;

   SIM_SCGC7_DMA_MASK : constant := (16#100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3857
   SIM_SCGC7_DMA_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3858
   --  arg-macro: function SIM_SCGC7_DMA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SCGC7_DMA_SHIFT)) and SIM_SCGC7_DMA_MASK;

   SIM_CLKDIV1_OUTDIV4_MASK : constant := (16#70000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3862
   SIM_CLKDIV1_OUTDIV4_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3863
   --  arg-macro: function SIM_CLKDIV1_OUTDIV4 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_CLKDIV1_OUTDIV4_SHIFT)) and SIM_CLKDIV1_OUTDIV4_MASK;

   SIM_CLKDIV1_OUTDIV1_MASK : constant := (16#F0000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3865
   SIM_CLKDIV1_OUTDIV1_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3866
   --  arg-macro: function SIM_CLKDIV1_OUTDIV1 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_CLKDIV1_OUTDIV1_SHIFT)) and SIM_CLKDIV1_OUTDIV1_MASK;

   SIM_FCFG1_FLASHDIS_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3870
   SIM_FCFG1_FLASHDIS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3871
   --  arg-macro: function SIM_FCFG1_FLASHDIS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_FCFG1_FLASHDIS_SHIFT)) and SIM_FCFG1_FLASHDIS_MASK;

   SIM_FCFG1_FLASHDOZE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3873
   SIM_FCFG1_FLASHDOZE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3874
   --  arg-macro: function SIM_FCFG1_FLASHDOZE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_FCFG1_FLASHDOZE_SHIFT)) and SIM_FCFG1_FLASHDOZE_MASK;

   SIM_FCFG1_PFSIZE_MASK : constant := (16#F000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3876
   SIM_FCFG1_PFSIZE_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3877
   --  arg-macro: function SIM_FCFG1_PFSIZE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_FCFG1_PFSIZE_SHIFT)) and SIM_FCFG1_PFSIZE_MASK;

   SIM_FCFG2_MAXADDR0_MASK : constant := (16#7F000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3881
   SIM_FCFG2_MAXADDR0_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3882
   --  arg-macro: function SIM_FCFG2_MAXADDR0 (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_FCFG2_MAXADDR0_SHIFT)) and SIM_FCFG2_MAXADDR0_MASK;

   SIM_UIDMH_UID_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3886
   SIM_UIDMH_UID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3887
   --  arg-macro: function SIM_UIDMH_UID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_UIDMH_UID_SHIFT)) and SIM_UIDMH_UID_MASK;

   SIM_UIDML_UID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3891
   SIM_UIDML_UID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3892
   --  arg-macro: function SIM_UIDML_UID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_UIDML_UID_SHIFT)) and SIM_UIDML_UID_MASK;

   SIM_UIDL_UID_MASK : constant := (16#FFFFFFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3896
   SIM_UIDL_UID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3897
   --  arg-macro: function SIM_UIDL_UID (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_UIDL_UID_SHIFT)) and SIM_UIDL_UID_MASK;

   SIM_COPC_COPW_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3901
   SIM_COPC_COPW_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3902
   --  arg-macro: function SIM_COPC_COPW (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_COPC_COPW_SHIFT)) and SIM_COPC_COPW_MASK;

   SIM_COPC_COPCLKS_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3904
   SIM_COPC_COPCLKS_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3905
   --  arg-macro: function SIM_COPC_COPCLKS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_COPC_COPCLKS_SHIFT)) and SIM_COPC_COPCLKS_MASK;

   SIM_COPC_COPT_MASK : constant := (16#C#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3907
   SIM_COPC_COPT_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3908
   --  arg-macro: function SIM_COPC_COPT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_COPC_COPT_SHIFT)) and SIM_COPC_COPT_MASK;

   SIM_SRVCOP_SRVCOP_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3912
   SIM_SRVCOP_SRVCOP_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3913
   --  arg-macro: function SIM_SRVCOP_SRVCOP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << SIM_SRVCOP_SRVCOP_SHIFT)) and SIM_SRVCOP_SRVCOP_MASK;

   SIM_BASE : constant := (16#40047000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3924
   --  unsupported macro: SIM ((SIM_Type *)SIM_BASE)
   --  unsupported macro: SIM_BASE_ADDRS { SIM_BASE }
   --  unsupported macro: SIM_BASE_PTRS { SIM }

   SMC_PMPROT_AVLLS_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3964
   SMC_PMPROT_AVLLS_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3965
   --  arg-macro: function SMC_PMPROT_AVLLS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_PMPROT_AVLLS_SHIFT)) and SMC_PMPROT_AVLLS_MASK;

   SMC_PMPROT_ALLS_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3967
   SMC_PMPROT_ALLS_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3968
   --  arg-macro: function SMC_PMPROT_ALLS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_PMPROT_ALLS_SHIFT)) and SMC_PMPROT_ALLS_MASK;

   SMC_PMPROT_AVLP_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3970
   SMC_PMPROT_AVLP_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3971
   --  arg-macro: function SMC_PMPROT_AVLP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_PMPROT_AVLP_SHIFT)) and SMC_PMPROT_AVLP_MASK;

   SMC_PMCTRL_STOPM_MASK : constant := (16#7#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3975
   SMC_PMCTRL_STOPM_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3976
   --  arg-macro: function SMC_PMCTRL_STOPM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_PMCTRL_STOPM_SHIFT)) and SMC_PMCTRL_STOPM_MASK;

   SMC_PMCTRL_STOPA_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3978
   SMC_PMCTRL_STOPA_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3979
   --  arg-macro: function SMC_PMCTRL_STOPA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_PMCTRL_STOPA_SHIFT)) and SMC_PMCTRL_STOPA_MASK;

   SMC_PMCTRL_RUNM_MASK : constant := (16#60#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3981
   SMC_PMCTRL_RUNM_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3982
   --  arg-macro: function SMC_PMCTRL_RUNM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_PMCTRL_RUNM_SHIFT)) and SMC_PMCTRL_RUNM_MASK;

   SMC_STOPCTRL_VLLSM_MASK : constant := (16#7#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3986
   SMC_STOPCTRL_VLLSM_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3987
   --  arg-macro: function SMC_STOPCTRL_VLLSM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_STOPCTRL_VLLSM_SHIFT)) and SMC_STOPCTRL_VLLSM_MASK;

   SMC_STOPCTRL_PORPO_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3989
   SMC_STOPCTRL_PORPO_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3990
   --  arg-macro: function SMC_STOPCTRL_PORPO (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_STOPCTRL_PORPO_SHIFT)) and SMC_STOPCTRL_PORPO_MASK;

   SMC_STOPCTRL_PSTOPO_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3992
   SMC_STOPCTRL_PSTOPO_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3993
   --  arg-macro: function SMC_STOPCTRL_PSTOPO (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_STOPCTRL_PSTOPO_SHIFT)) and SMC_STOPCTRL_PSTOPO_MASK;

   SMC_PMSTAT_PMSTAT_MASK : constant := (16#7F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3997
   SMC_PMSTAT_PMSTAT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3998
   --  arg-macro: function SMC_PMSTAT_PMSTAT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SMC_PMSTAT_PMSTAT_SHIFT)) and SMC_PMSTAT_PMSTAT_MASK;

   SMC_BASE : constant := (16#4007E000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4009
   --  unsupported macro: SMC ((SMC_Type *)SMC_BASE)
   --  unsupported macro: SMC_BASE_ADDRS { SMC_BASE }
   --  unsupported macro: SMC_BASE_PTRS { SMC }

   SPI_C1_LSBFE_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4053
   SPI_C1_LSBFE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4054
   --  arg-macro: function SPI_C1_LSBFE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_LSBFE_SHIFT)) and SPI_C1_LSBFE_MASK;

   SPI_C1_SSOE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4056
   SPI_C1_SSOE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4057
   --  arg-macro: function SPI_C1_SSOE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_SSOE_SHIFT)) and SPI_C1_SSOE_MASK;

   SPI_C1_CPHA_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4059
   SPI_C1_CPHA_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4060
   --  arg-macro: function SPI_C1_CPHA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_CPHA_SHIFT)) and SPI_C1_CPHA_MASK;

   SPI_C1_CPOL_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4062
   SPI_C1_CPOL_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4063
   --  arg-macro: function SPI_C1_CPOL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_CPOL_SHIFT)) and SPI_C1_CPOL_MASK;

   SPI_C1_MSTR_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4065
   SPI_C1_MSTR_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4066
   --  arg-macro: function SPI_C1_MSTR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_MSTR_SHIFT)) and SPI_C1_MSTR_MASK;

   SPI_C1_SPTIE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4068
   SPI_C1_SPTIE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4069
   --  arg-macro: function SPI_C1_SPTIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_SPTIE_SHIFT)) and SPI_C1_SPTIE_MASK;

   SPI_C1_SPE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4071
   SPI_C1_SPE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4072
   --  arg-macro: function SPI_C1_SPE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_SPE_SHIFT)) and SPI_C1_SPE_MASK;

   SPI_C1_SPIE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4074
   SPI_C1_SPIE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4075
   --  arg-macro: function SPI_C1_SPIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C1_SPIE_SHIFT)) and SPI_C1_SPIE_MASK;

   SPI_C2_SPC0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4079
   SPI_C2_SPC0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4080
   --  arg-macro: function SPI_C2_SPC0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C2_SPC0_SHIFT)) and SPI_C2_SPC0_MASK;

   SPI_C2_SPISWAI_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4082
   SPI_C2_SPISWAI_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4083
   --  arg-macro: function SPI_C2_SPISWAI (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C2_SPISWAI_SHIFT)) and SPI_C2_SPISWAI_MASK;

   SPI_C2_RXDMAE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4085
   SPI_C2_RXDMAE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4086
   --  arg-macro: function SPI_C2_RXDMAE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C2_RXDMAE_SHIFT)) and SPI_C2_RXDMAE_MASK;

   SPI_C2_BIDIROE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4088
   SPI_C2_BIDIROE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4089
   --  arg-macro: function SPI_C2_BIDIROE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C2_BIDIROE_SHIFT)) and SPI_C2_BIDIROE_MASK;

   SPI_C2_MODFEN_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4091
   SPI_C2_MODFEN_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4092
   --  arg-macro: function SPI_C2_MODFEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C2_MODFEN_SHIFT)) and SPI_C2_MODFEN_MASK;

   SPI_C2_TXDMAE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4094
   SPI_C2_TXDMAE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4095
   --  arg-macro: function SPI_C2_TXDMAE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C2_TXDMAE_SHIFT)) and SPI_C2_TXDMAE_MASK;

   SPI_C2_SPMIE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4097
   SPI_C2_SPMIE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4098
   --  arg-macro: function SPI_C2_SPMIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_C2_SPMIE_SHIFT)) and SPI_C2_SPMIE_MASK;

   SPI_BR_SPR_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4102
   SPI_BR_SPR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4103
   --  arg-macro: function SPI_BR_SPR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_BR_SPR_SHIFT)) and SPI_BR_SPR_MASK;

   SPI_BR_SPPR_MASK : constant := (16#70#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4105
   SPI_BR_SPPR_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4106
   --  arg-macro: function SPI_BR_SPPR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_BR_SPPR_SHIFT)) and SPI_BR_SPPR_MASK;

   SPI_S_MODF_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4110
   SPI_S_MODF_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4111
   --  arg-macro: function SPI_S_MODF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_S_MODF_SHIFT)) and SPI_S_MODF_MASK;

   SPI_S_SPTEF_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4113
   SPI_S_SPTEF_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4114
   --  arg-macro: function SPI_S_SPTEF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_S_SPTEF_SHIFT)) and SPI_S_SPTEF_MASK;

   SPI_S_SPMF_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4116
   SPI_S_SPMF_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4117
   --  arg-macro: function SPI_S_SPMF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_S_SPMF_SHIFT)) and SPI_S_SPMF_MASK;

   SPI_S_SPRF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4119
   SPI_S_SPRF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4120
   --  arg-macro: function SPI_S_SPRF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_S_SPRF_SHIFT)) and SPI_S_SPRF_MASK;

   SPI_D_Bits_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4124
   SPI_D_Bits_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4125
   --  arg-macro: function SPI_D_Bits (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_D_Bits_SHIFT)) and SPI_D_Bits_MASK;

   SPI_M_Bits_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4129
   SPI_M_Bits_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4130
   --  arg-macro: function SPI_M_Bits (x)
   --    return ((uint8_t)(((uint8_t)(x)) << SPI_M_Bits_SHIFT)) and SPI_M_Bits_MASK;

   SPI0_BASE : constant := (16#40076000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4141
   --  unsupported macro: SPI0 ((SPI_Type *)SPI0_BASE)

   SPI1_BASE : constant := (16#40077000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4145
   --  unsupported macro: SPI1 ((SPI_Type *)SPI1_BASE)
   --  unsupported macro: SPI_BASE_ADDRS { SPI0_BASE, SPI1_BASE }
   --  unsupported macro: SPI_BASE_PTRS { SPI0, SPI1 }
   --  unsupported macro: SPI_IRQS { SPI0_IRQn, SPI1_IRQn }

   TPM_SC_PS_MASK : constant := (16#7#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4194
   TPM_SC_PS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4195
   --  arg-macro: function TPM_SC_PS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_SC_PS_SHIFT)) and TPM_SC_PS_MASK;

   TPM_SC_CMOD_MASK : constant := (16#18#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4197
   TPM_SC_CMOD_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4198
   --  arg-macro: function TPM_SC_CMOD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_SC_CMOD_SHIFT)) and TPM_SC_CMOD_MASK;

   TPM_SC_CPWMS_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4200
   TPM_SC_CPWMS_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4201
   --  arg-macro: function TPM_SC_CPWMS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_SC_CPWMS_SHIFT)) and TPM_SC_CPWMS_MASK;

   TPM_SC_TOIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4203
   TPM_SC_TOIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4204
   --  arg-macro: function TPM_SC_TOIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_SC_TOIE_SHIFT)) and TPM_SC_TOIE_MASK;

   TPM_SC_TOF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4206
   TPM_SC_TOF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4207
   --  arg-macro: function TPM_SC_TOF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_SC_TOF_SHIFT)) and TPM_SC_TOF_MASK;

   TPM_SC_DMA_MASK : constant := (16#100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4209
   TPM_SC_DMA_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4210
   --  arg-macro: function TPM_SC_DMA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_SC_DMA_SHIFT)) and TPM_SC_DMA_MASK;

   TPM_CNT_COUNT_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4214
   TPM_CNT_COUNT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4215
   --  arg-macro: function TPM_CNT_COUNT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CNT_COUNT_SHIFT)) and TPM_CNT_COUNT_MASK;

   TPM_MOD_MOD_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4219
   TPM_MOD_MOD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4220
   --  arg-macro: function TPM_MOD_MOD (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_MOD_MOD_SHIFT)) and TPM_MOD_MOD_MASK;

   TPM_CnSC_DMA_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4224
   TPM_CnSC_DMA_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4225
   --  arg-macro: function TPM_CnSC_DMA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnSC_DMA_SHIFT)) and TPM_CnSC_DMA_MASK;

   TPM_CnSC_ELSA_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4227
   TPM_CnSC_ELSA_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4228
   --  arg-macro: function TPM_CnSC_ELSA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnSC_ELSA_SHIFT)) and TPM_CnSC_ELSA_MASK;

   TPM_CnSC_ELSB_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4230
   TPM_CnSC_ELSB_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4231
   --  arg-macro: function TPM_CnSC_ELSB (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnSC_ELSB_SHIFT)) and TPM_CnSC_ELSB_MASK;

   TPM_CnSC_MSA_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4233
   TPM_CnSC_MSA_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4234
   --  arg-macro: function TPM_CnSC_MSA (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnSC_MSA_SHIFT)) and TPM_CnSC_MSA_MASK;

   TPM_CnSC_MSB_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4236
   TPM_CnSC_MSB_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4237
   --  arg-macro: function TPM_CnSC_MSB (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnSC_MSB_SHIFT)) and TPM_CnSC_MSB_MASK;

   TPM_CnSC_CHIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4239
   TPM_CnSC_CHIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4240
   --  arg-macro: function TPM_CnSC_CHIE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnSC_CHIE_SHIFT)) and TPM_CnSC_CHIE_MASK;

   TPM_CnSC_CHF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4242
   TPM_CnSC_CHF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4243
   --  arg-macro: function TPM_CnSC_CHF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnSC_CHF_SHIFT)) and TPM_CnSC_CHF_MASK;

   TPM_CnSC_COUNT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4247

   TPM_CnV_VAL_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4250
   TPM_CnV_VAL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4251
   --  arg-macro: function TPM_CnV_VAL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CnV_VAL_SHIFT)) and TPM_CnV_VAL_MASK;

   TPM_CnV_COUNT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4255

   TPM_STATUS_CH0F_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4258
   TPM_STATUS_CH0F_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4259
   --  arg-macro: function TPM_STATUS_CH0F (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_STATUS_CH0F_SHIFT)) and TPM_STATUS_CH0F_MASK;

   TPM_STATUS_CH1F_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4261
   TPM_STATUS_CH1F_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4262
   --  arg-macro: function TPM_STATUS_CH1F (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_STATUS_CH1F_SHIFT)) and TPM_STATUS_CH1F_MASK;

   TPM_STATUS_CH2F_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4264
   TPM_STATUS_CH2F_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4265
   --  arg-macro: function TPM_STATUS_CH2F (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_STATUS_CH2F_SHIFT)) and TPM_STATUS_CH2F_MASK;

   TPM_STATUS_CH3F_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4267
   TPM_STATUS_CH3F_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4268
   --  arg-macro: function TPM_STATUS_CH3F (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_STATUS_CH3F_SHIFT)) and TPM_STATUS_CH3F_MASK;

   TPM_STATUS_CH4F_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4270
   TPM_STATUS_CH4F_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4271
   --  arg-macro: function TPM_STATUS_CH4F (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_STATUS_CH4F_SHIFT)) and TPM_STATUS_CH4F_MASK;

   TPM_STATUS_CH5F_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4273
   TPM_STATUS_CH5F_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4274
   --  arg-macro: function TPM_STATUS_CH5F (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_STATUS_CH5F_SHIFT)) and TPM_STATUS_CH5F_MASK;

   TPM_STATUS_TOF_MASK : constant := (16#100#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4276
   TPM_STATUS_TOF_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4277
   --  arg-macro: function TPM_STATUS_TOF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_STATUS_TOF_SHIFT)) and TPM_STATUS_TOF_MASK;

   TPM_CONF_DOZEEN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4281
   TPM_CONF_DOZEEN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4282
   --  arg-macro: function TPM_CONF_DOZEEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CONF_DOZEEN_SHIFT)) and TPM_CONF_DOZEEN_MASK;

   TPM_CONF_DBGMODE_MASK : constant := (16#C0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4284
   TPM_CONF_DBGMODE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4285
   --  arg-macro: function TPM_CONF_DBGMODE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CONF_DBGMODE_SHIFT)) and TPM_CONF_DBGMODE_MASK;

   TPM_CONF_GTBEEN_MASK : constant := (16#200#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4287
   TPM_CONF_GTBEEN_SHIFT : constant := (9);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4288
   --  arg-macro: function TPM_CONF_GTBEEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CONF_GTBEEN_SHIFT)) and TPM_CONF_GTBEEN_MASK;

   TPM_CONF_CSOT_MASK : constant := (16#10000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4290
   TPM_CONF_CSOT_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4291
   --  arg-macro: function TPM_CONF_CSOT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CONF_CSOT_SHIFT)) and TPM_CONF_CSOT_MASK;

   TPM_CONF_CSOO_MASK : constant := (16#20000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4293
   TPM_CONF_CSOO_SHIFT : constant := (17);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4294
   --  arg-macro: function TPM_CONF_CSOO (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CONF_CSOO_SHIFT)) and TPM_CONF_CSOO_MASK;

   TPM_CONF_CROT_MASK : constant := (16#40000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4296
   TPM_CONF_CROT_SHIFT : constant := (18);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4297
   --  arg-macro: function TPM_CONF_CROT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CONF_CROT_SHIFT)) and TPM_CONF_CROT_MASK;

   TPM_CONF_TRGSEL_MASK : constant := (16#F000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4299
   TPM_CONF_TRGSEL_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4300
   --  arg-macro: function TPM_CONF_TRGSEL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TPM_CONF_TRGSEL_SHIFT)) and TPM_CONF_TRGSEL_MASK;

   TPM0_BASE : constant := (16#40038000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4311
   --  unsupported macro: TPM0 ((TPM_Type *)TPM0_BASE)

   TPM1_BASE : constant := (16#40039000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4315
   --  unsupported macro: TPM1 ((TPM_Type *)TPM1_BASE)

   TPM2_BASE : constant := (16#4003A000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4319
   --  unsupported macro: TPM2 ((TPM_Type *)TPM2_BASE)
   --  unsupported macro: TPM_BASE_ADDRS { TPM0_BASE, TPM1_BASE, TPM2_BASE }
   --  unsupported macro: TPM_BASE_PTRS { TPM0, TPM1, TPM2 }
   --  unsupported macro: TPM_IRQS { TPM0_IRQn, TPM1_IRQn, TPM2_IRQn }

   TSI_GENCS_CURSW_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4360
   TSI_GENCS_CURSW_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4361
   --  arg-macro: function TSI_GENCS_CURSW (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_CURSW_SHIFT)) and TSI_GENCS_CURSW_MASK;

   TSI_GENCS_EOSF_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4363
   TSI_GENCS_EOSF_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4364
   --  arg-macro: function TSI_GENCS_EOSF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_EOSF_SHIFT)) and TSI_GENCS_EOSF_MASK;

   TSI_GENCS_SCNIP_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4366
   TSI_GENCS_SCNIP_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4367
   --  arg-macro: function TSI_GENCS_SCNIP (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_SCNIP_SHIFT)) and TSI_GENCS_SCNIP_MASK;

   TSI_GENCS_STM_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4369
   TSI_GENCS_STM_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4370
   --  arg-macro: function TSI_GENCS_STM (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_STM_SHIFT)) and TSI_GENCS_STM_MASK;

   TSI_GENCS_STPE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4372
   TSI_GENCS_STPE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4373
   --  arg-macro: function TSI_GENCS_STPE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_STPE_SHIFT)) and TSI_GENCS_STPE_MASK;

   TSI_GENCS_TSIIEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4375
   TSI_GENCS_TSIIEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4376
   --  arg-macro: function TSI_GENCS_TSIIEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_TSIIEN_SHIFT)) and TSI_GENCS_TSIIEN_MASK;

   TSI_GENCS_TSIEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4378
   TSI_GENCS_TSIEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4379
   --  arg-macro: function TSI_GENCS_TSIEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_TSIEN_SHIFT)) and TSI_GENCS_TSIEN_MASK;

   TSI_GENCS_NSCN_MASK : constant := (16#1F00#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4381
   TSI_GENCS_NSCN_SHIFT : constant := (8);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4382
   --  arg-macro: function TSI_GENCS_NSCN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_NSCN_SHIFT)) and TSI_GENCS_NSCN_MASK;

   TSI_GENCS_PS_MASK : constant := (16#E000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4384
   TSI_GENCS_PS_SHIFT : constant := (13);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4385
   --  arg-macro: function TSI_GENCS_PS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_PS_SHIFT)) and TSI_GENCS_PS_MASK;

   TSI_GENCS_EXTCHRG_MASK : constant := (16#70000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4387
   TSI_GENCS_EXTCHRG_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4388
   --  arg-macro: function TSI_GENCS_EXTCHRG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_EXTCHRG_SHIFT)) and TSI_GENCS_EXTCHRG_MASK;

   TSI_GENCS_DVOLT_MASK : constant := (16#180000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4390
   TSI_GENCS_DVOLT_SHIFT : constant := (19);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4391
   --  arg-macro: function TSI_GENCS_DVOLT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_DVOLT_SHIFT)) and TSI_GENCS_DVOLT_MASK;

   TSI_GENCS_REFCHRG_MASK : constant := (16#E00000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4393
   TSI_GENCS_REFCHRG_SHIFT : constant := (21);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4394
   --  arg-macro: function TSI_GENCS_REFCHRG (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_REFCHRG_SHIFT)) and TSI_GENCS_REFCHRG_MASK;

   TSI_GENCS_MODE_MASK : constant := (16#F000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4396
   TSI_GENCS_MODE_SHIFT : constant := (24);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4397
   --  arg-macro: function TSI_GENCS_MODE (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_MODE_SHIFT)) and TSI_GENCS_MODE_MASK;

   TSI_GENCS_ESOR_MASK : constant := (16#10000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4399
   TSI_GENCS_ESOR_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4400
   --  arg-macro: function TSI_GENCS_ESOR (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_ESOR_SHIFT)) and TSI_GENCS_ESOR_MASK;

   TSI_GENCS_OUTRGF_MASK : constant := (16#80000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4402
   TSI_GENCS_OUTRGF_SHIFT : constant := (31);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4403
   --  arg-macro: function TSI_GENCS_OUTRGF (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_GENCS_OUTRGF_SHIFT)) and TSI_GENCS_OUTRGF_MASK;

   TSI_DATA_TSICNT_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4407
   TSI_DATA_TSICNT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4408
   --  arg-macro: function TSI_DATA_TSICNT (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_DATA_TSICNT_SHIFT)) and TSI_DATA_TSICNT_MASK;

   TSI_DATA_SWTS_MASK : constant := (16#400000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4410
   TSI_DATA_SWTS_SHIFT : constant := (22);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4411
   --  arg-macro: function TSI_DATA_SWTS (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_DATA_SWTS_SHIFT)) and TSI_DATA_SWTS_MASK;

   TSI_DATA_DMAEN_MASK : constant := (16#800000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4413
   TSI_DATA_DMAEN_SHIFT : constant := (23);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4414
   --  arg-macro: function TSI_DATA_DMAEN (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_DATA_DMAEN_SHIFT)) and TSI_DATA_DMAEN_MASK;

   TSI_DATA_TSICH_MASK : constant := (16#F0000000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4416
   TSI_DATA_TSICH_SHIFT : constant := (28);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4417
   --  arg-macro: function TSI_DATA_TSICH (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_DATA_TSICH_SHIFT)) and TSI_DATA_TSICH_MASK;

   TSI_TSHD_THRESL_MASK : constant := (16#FFFF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4421
   TSI_TSHD_THRESL_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4422
   --  arg-macro: function TSI_TSHD_THRESL (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_TSHD_THRESL_SHIFT)) and TSI_TSHD_THRESL_MASK;

   TSI_TSHD_THRESH_MASK : constant := (16#FFFF0000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4424
   TSI_TSHD_THRESH_SHIFT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4425
   --  arg-macro: function TSI_TSHD_THRESH (x)
   --    return ((uint32_t)(((uint32_t)(x)) << TSI_TSHD_THRESH_SHIFT)) and TSI_TSHD_THRESH_MASK;

   TSI0_BASE : constant := (16#40045000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4436
   --  unsupported macro: TSI0 ((TSI_Type *)TSI0_BASE)
   --  unsupported macro: TSI_BASE_ADDRS { TSI0_BASE }
   --  unsupported macro: TSI_BASE_PTRS { TSI0 }
   --  unsupported macro: TSI_IRQS { TSI0_IRQn }

   UART_BDH_SBR_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4483
   UART_BDH_SBR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4484
   --  arg-macro: function UART_BDH_SBR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_BDH_SBR_SHIFT)) and UART_BDH_SBR_MASK;

   UART_BDH_SBNS_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4486
   UART_BDH_SBNS_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4487
   --  arg-macro: function UART_BDH_SBNS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_BDH_SBNS_SHIFT)) and UART_BDH_SBNS_MASK;

   UART_BDH_RXEDGIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4489
   UART_BDH_RXEDGIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4490
   --  arg-macro: function UART_BDH_RXEDGIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_BDH_RXEDGIE_SHIFT)) and UART_BDH_RXEDGIE_MASK;

   UART_BDH_LBKDIE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4492
   UART_BDH_LBKDIE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4493
   --  arg-macro: function UART_BDH_LBKDIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_BDH_LBKDIE_SHIFT)) and UART_BDH_LBKDIE_MASK;

   UART_BDL_SBR_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4497
   UART_BDL_SBR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4498
   --  arg-macro: function UART_BDL_SBR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_BDL_SBR_SHIFT)) and UART_BDL_SBR_MASK;

   UART_C1_PT_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4502
   UART_C1_PT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4503
   --  arg-macro: function UART_C1_PT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_PT_SHIFT)) and UART_C1_PT_MASK;

   UART_C1_PE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4505
   UART_C1_PE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4506
   --  arg-macro: function UART_C1_PE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_PE_SHIFT)) and UART_C1_PE_MASK;

   UART_C1_ILT_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4508
   UART_C1_ILT_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4509
   --  arg-macro: function UART_C1_ILT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_ILT_SHIFT)) and UART_C1_ILT_MASK;

   UART_C1_WAKE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4511
   UART_C1_WAKE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4512
   --  arg-macro: function UART_C1_WAKE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_WAKE_SHIFT)) and UART_C1_WAKE_MASK;

   UART_C1_M_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4514
   UART_C1_M_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4515
   --  arg-macro: function UART_C1_M (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_M_SHIFT)) and UART_C1_M_MASK;

   UART_C1_RSRC_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4517
   UART_C1_RSRC_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4518
   --  arg-macro: function UART_C1_RSRC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_RSRC_SHIFT)) and UART_C1_RSRC_MASK;

   UART_C1_UARTSWAI_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4520
   UART_C1_UARTSWAI_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4521
   --  arg-macro: function UART_C1_UARTSWAI (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_UARTSWAI_SHIFT)) and UART_C1_UARTSWAI_MASK;

   UART_C1_LOOPS_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4523
   UART_C1_LOOPS_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4524
   --  arg-macro: function UART_C1_LOOPS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C1_LOOPS_SHIFT)) and UART_C1_LOOPS_MASK;

   UART_C2_SBK_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4528
   UART_C2_SBK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4529
   --  arg-macro: function UART_C2_SBK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_SBK_SHIFT)) and UART_C2_SBK_MASK;

   UART_C2_RWU_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4531
   UART_C2_RWU_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4532
   --  arg-macro: function UART_C2_RWU (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_RWU_SHIFT)) and UART_C2_RWU_MASK;

   UART_C2_RE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4534
   UART_C2_RE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4535
   --  arg-macro: function UART_C2_RE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_RE_SHIFT)) and UART_C2_RE_MASK;

   UART_C2_TE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4537
   UART_C2_TE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4538
   --  arg-macro: function UART_C2_TE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_TE_SHIFT)) and UART_C2_TE_MASK;

   UART_C2_ILIE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4540
   UART_C2_ILIE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4541
   --  arg-macro: function UART_C2_ILIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_ILIE_SHIFT)) and UART_C2_ILIE_MASK;

   UART_C2_RIE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4543
   UART_C2_RIE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4544
   --  arg-macro: function UART_C2_RIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_RIE_SHIFT)) and UART_C2_RIE_MASK;

   UART_C2_TCIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4546
   UART_C2_TCIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4547
   --  arg-macro: function UART_C2_TCIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_TCIE_SHIFT)) and UART_C2_TCIE_MASK;

   UART_C2_TIE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4549
   UART_C2_TIE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4550
   --  arg-macro: function UART_C2_TIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C2_TIE_SHIFT)) and UART_C2_TIE_MASK;

   UART_S1_PF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4554
   UART_S1_PF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4555
   --  arg-macro: function UART_S1_PF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_PF_SHIFT)) and UART_S1_PF_MASK;

   UART_S1_FE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4557
   UART_S1_FE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4558
   --  arg-macro: function UART_S1_FE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_FE_SHIFT)) and UART_S1_FE_MASK;

   UART_S1_NF_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4560
   UART_S1_NF_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4561
   --  arg-macro: function UART_S1_NF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_NF_SHIFT)) and UART_S1_NF_MASK;

   UART_S1_OR_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4563
   UART_S1_OR_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4564
   --  arg-macro: function UART_S1_OR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_OR_SHIFT)) and UART_S1_OR_MASK;

   UART_S1_IDLE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4566
   UART_S1_IDLE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4567
   --  arg-macro: function UART_S1_IDLE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_IDLE_SHIFT)) and UART_S1_IDLE_MASK;

   UART_S1_RDRF_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4569
   UART_S1_RDRF_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4570
   --  arg-macro: function UART_S1_RDRF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_RDRF_SHIFT)) and UART_S1_RDRF_MASK;

   UART_S1_TC_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4572
   UART_S1_TC_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4573
   --  arg-macro: function UART_S1_TC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_TC_SHIFT)) and UART_S1_TC_MASK;

   UART_S1_TDRE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4575
   UART_S1_TDRE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4576
   --  arg-macro: function UART_S1_TDRE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S1_TDRE_SHIFT)) and UART_S1_TDRE_MASK;

   UART_S2_RAF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4580
   UART_S2_RAF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4581
   --  arg-macro: function UART_S2_RAF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S2_RAF_SHIFT)) and UART_S2_RAF_MASK;

   UART_S2_LBKDE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4583
   UART_S2_LBKDE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4584
   --  arg-macro: function UART_S2_LBKDE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S2_LBKDE_SHIFT)) and UART_S2_LBKDE_MASK;

   UART_S2_BRK13_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4586
   UART_S2_BRK13_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4587
   --  arg-macro: function UART_S2_BRK13 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S2_BRK13_SHIFT)) and UART_S2_BRK13_MASK;

   UART_S2_RWUID_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4589
   UART_S2_RWUID_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4590
   --  arg-macro: function UART_S2_RWUID (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S2_RWUID_SHIFT)) and UART_S2_RWUID_MASK;

   UART_S2_RXINV_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4592
   UART_S2_RXINV_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4593
   --  arg-macro: function UART_S2_RXINV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S2_RXINV_SHIFT)) and UART_S2_RXINV_MASK;

   UART_S2_RXEDGIF_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4595
   UART_S2_RXEDGIF_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4596
   --  arg-macro: function UART_S2_RXEDGIF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S2_RXEDGIF_SHIFT)) and UART_S2_RXEDGIF_MASK;

   UART_S2_LBKDIF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4598
   UART_S2_LBKDIF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4599
   --  arg-macro: function UART_S2_LBKDIF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_S2_LBKDIF_SHIFT)) and UART_S2_LBKDIF_MASK;

   UART_C3_PEIE_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4603
   UART_C3_PEIE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4604
   --  arg-macro: function UART_C3_PEIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_PEIE_SHIFT)) and UART_C3_PEIE_MASK;

   UART_C3_FEIE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4606
   UART_C3_FEIE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4607
   --  arg-macro: function UART_C3_FEIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_FEIE_SHIFT)) and UART_C3_FEIE_MASK;

   UART_C3_NEIE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4609
   UART_C3_NEIE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4610
   --  arg-macro: function UART_C3_NEIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_NEIE_SHIFT)) and UART_C3_NEIE_MASK;

   UART_C3_ORIE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4612
   UART_C3_ORIE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4613
   --  arg-macro: function UART_C3_ORIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_ORIE_SHIFT)) and UART_C3_ORIE_MASK;

   UART_C3_TXINV_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4615
   UART_C3_TXINV_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4616
   --  arg-macro: function UART_C3_TXINV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_TXINV_SHIFT)) and UART_C3_TXINV_MASK;

   UART_C3_TXDIR_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4618
   UART_C3_TXDIR_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4619
   --  arg-macro: function UART_C3_TXDIR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_TXDIR_SHIFT)) and UART_C3_TXDIR_MASK;

   UART_C3_T8_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4621
   UART_C3_T8_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4622
   --  arg-macro: function UART_C3_T8 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_T8_SHIFT)) and UART_C3_T8_MASK;

   UART_C3_R8_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4624
   UART_C3_R8_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4625
   --  arg-macro: function UART_C3_R8 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C3_R8_SHIFT)) and UART_C3_R8_MASK;

   UART_D_R0T0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4629
   UART_D_R0T0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4630
   --  arg-macro: function UART_D_R0T0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R0T0_SHIFT)) and UART_D_R0T0_MASK;

   UART_D_R1T1_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4632
   UART_D_R1T1_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4633
   --  arg-macro: function UART_D_R1T1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R1T1_SHIFT)) and UART_D_R1T1_MASK;

   UART_D_R2T2_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4635
   UART_D_R2T2_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4636
   --  arg-macro: function UART_D_R2T2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R2T2_SHIFT)) and UART_D_R2T2_MASK;

   UART_D_R3T3_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4638
   UART_D_R3T3_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4639
   --  arg-macro: function UART_D_R3T3 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R3T3_SHIFT)) and UART_D_R3T3_MASK;

   UART_D_R4T4_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4641
   UART_D_R4T4_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4642
   --  arg-macro: function UART_D_R4T4 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R4T4_SHIFT)) and UART_D_R4T4_MASK;

   UART_D_R5T5_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4644
   UART_D_R5T5_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4645
   --  arg-macro: function UART_D_R5T5 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R5T5_SHIFT)) and UART_D_R5T5_MASK;

   UART_D_R6T6_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4647
   UART_D_R6T6_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4648
   --  arg-macro: function UART_D_R6T6 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R6T6_SHIFT)) and UART_D_R6T6_MASK;

   UART_D_R7T7_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4650
   UART_D_R7T7_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4651
   --  arg-macro: function UART_D_R7T7 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_D_R7T7_SHIFT)) and UART_D_R7T7_MASK;

   UART_C4_RDMAS_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4655
   UART_C4_RDMAS_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4656
   --  arg-macro: function UART_C4_RDMAS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C4_RDMAS_SHIFT)) and UART_C4_RDMAS_MASK;

   UART_C4_TDMAS_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4658
   UART_C4_TDMAS_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4659
   --  arg-macro: function UART_C4_TDMAS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART_C4_TDMAS_SHIFT)) and UART_C4_TDMAS_MASK;

   UART1_BASE : constant := (16#4006B000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4670
   --  unsupported macro: UART1 ((UART_Type *)UART1_BASE)

   UART2_BASE : constant := (16#4006C000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4674
   --  unsupported macro: UART2 ((UART_Type *)UART2_BASE)
   --  unsupported macro: UART_BASE_ADDRS { 0u, UART1_BASE, UART2_BASE }
   --  unsupported macro: UART_BASE_PTRS { (UART_Type *)0u, UART1, UART2 }
   --  unsupported macro: UART_RX_TX_IRQS { NotAvail_IRQn, UART1_IRQn, UART2_IRQn }
   --  unsupported macro: UART_ERR_IRQS { NotAvail_IRQn, UART1_IRQn, UART2_IRQn }

   UART0_BDH_SBR_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4725
   UART0_BDH_SBR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4726
   --  arg-macro: function UART0_BDH_SBR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_BDH_SBR_SHIFT)) and UART0_BDH_SBR_MASK;

   UART0_BDH_SBNS_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4728
   UART0_BDH_SBNS_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4729
   --  arg-macro: function UART0_BDH_SBNS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_BDH_SBNS_SHIFT)) and UART0_BDH_SBNS_MASK;

   UART0_BDH_RXEDGIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4731
   UART0_BDH_RXEDGIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4732
   --  arg-macro: function UART0_BDH_RXEDGIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_BDH_RXEDGIE_SHIFT)) and UART0_BDH_RXEDGIE_MASK;

   UART0_BDH_LBKDIE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4734
   UART0_BDH_LBKDIE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4735
   --  arg-macro: function UART0_BDH_LBKDIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_BDH_LBKDIE_SHIFT)) and UART0_BDH_LBKDIE_MASK;

   UART0_BDL_SBR_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4739
   UART0_BDL_SBR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4740
   --  arg-macro: function UART0_BDL_SBR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_BDL_SBR_SHIFT)) and UART0_BDL_SBR_MASK;

   UART0_C1_PT_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4744
   UART0_C1_PT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4745
   --  arg-macro: function UART0_C1_PT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_PT_SHIFT)) and UART0_C1_PT_MASK;

   UART0_C1_PE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4747
   UART0_C1_PE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4748
   --  arg-macro: function UART0_C1_PE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_PE_SHIFT)) and UART0_C1_PE_MASK;

   UART0_C1_ILT_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4750
   UART0_C1_ILT_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4751
   --  arg-macro: function UART0_C1_ILT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_ILT_SHIFT)) and UART0_C1_ILT_MASK;

   UART0_C1_WAKE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4753
   UART0_C1_WAKE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4754
   --  arg-macro: function UART0_C1_WAKE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_WAKE_SHIFT)) and UART0_C1_WAKE_MASK;

   UART0_C1_M_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4756
   UART0_C1_M_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4757
   --  arg-macro: function UART0_C1_M (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_M_SHIFT)) and UART0_C1_M_MASK;

   UART0_C1_RSRC_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4759
   UART0_C1_RSRC_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4760
   --  arg-macro: function UART0_C1_RSRC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_RSRC_SHIFT)) and UART0_C1_RSRC_MASK;

   UART0_C1_DOZEEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4762
   UART0_C1_DOZEEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4763
   --  arg-macro: function UART0_C1_DOZEEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_DOZEEN_SHIFT)) and UART0_C1_DOZEEN_MASK;

   UART0_C1_LOOPS_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4765
   UART0_C1_LOOPS_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4766
   --  arg-macro: function UART0_C1_LOOPS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C1_LOOPS_SHIFT)) and UART0_C1_LOOPS_MASK;

   UART0_C2_SBK_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4770
   UART0_C2_SBK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4771
   --  arg-macro: function UART0_C2_SBK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_SBK_SHIFT)) and UART0_C2_SBK_MASK;

   UART0_C2_RWU_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4773
   UART0_C2_RWU_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4774
   --  arg-macro: function UART0_C2_RWU (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_RWU_SHIFT)) and UART0_C2_RWU_MASK;

   UART0_C2_RE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4776
   UART0_C2_RE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4777
   --  arg-macro: function UART0_C2_RE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_RE_SHIFT)) and UART0_C2_RE_MASK;

   UART0_C2_TE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4779
   UART0_C2_TE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4780
   --  arg-macro: function UART0_C2_TE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_TE_SHIFT)) and UART0_C2_TE_MASK;

   UART0_C2_ILIE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4782
   UART0_C2_ILIE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4783
   --  arg-macro: function UART0_C2_ILIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_ILIE_SHIFT)) and UART0_C2_ILIE_MASK;

   UART0_C2_RIE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4785
   UART0_C2_RIE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4786
   --  arg-macro: function UART0_C2_RIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_RIE_SHIFT)) and UART0_C2_RIE_MASK;

   UART0_C2_TCIE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4788
   UART0_C2_TCIE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4789
   --  arg-macro: function UART0_C2_TCIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_TCIE_SHIFT)) and UART0_C2_TCIE_MASK;

   UART0_C2_TIE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4791
   UART0_C2_TIE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4792
   --  arg-macro: function UART0_C2_TIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C2_TIE_SHIFT)) and UART0_C2_TIE_MASK;

   UART0_S1_PF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4796
   UART0_S1_PF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4797
   --  arg-macro: function UART0_S1_PF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_PF_SHIFT)) and UART0_S1_PF_MASK;

   UART0_S1_FE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4799
   UART0_S1_FE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4800
   --  arg-macro: function UART0_S1_FE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_FE_SHIFT)) and UART0_S1_FE_MASK;

   UART0_S1_NF_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4802
   UART0_S1_NF_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4803
   --  arg-macro: function UART0_S1_NF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_NF_SHIFT)) and UART0_S1_NF_MASK;

   UART0_S1_OR_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4805
   UART0_S1_OR_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4806
   --  arg-macro: function UART0_S1_OR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_OR_SHIFT)) and UART0_S1_OR_MASK;

   UART0_S1_IDLE_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4808
   UART0_S1_IDLE_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4809
   --  arg-macro: function UART0_S1_IDLE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_IDLE_SHIFT)) and UART0_S1_IDLE_MASK;

   UART0_S1_RDRF_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4811
   UART0_S1_RDRF_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4812
   --  arg-macro: function UART0_S1_RDRF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_RDRF_SHIFT)) and UART0_S1_RDRF_MASK;

   UART0_S1_TC_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4814
   UART0_S1_TC_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4815
   --  arg-macro: function UART0_S1_TC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_TC_SHIFT)) and UART0_S1_TC_MASK;

   UART0_S1_TDRE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4817
   UART0_S1_TDRE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4818
   --  arg-macro: function UART0_S1_TDRE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S1_TDRE_SHIFT)) and UART0_S1_TDRE_MASK;

   UART0_S2_RAF_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4822
   UART0_S2_RAF_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4823
   --  arg-macro: function UART0_S2_RAF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_RAF_SHIFT)) and UART0_S2_RAF_MASK;

   UART0_S2_LBKDE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4825
   UART0_S2_LBKDE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4826
   --  arg-macro: function UART0_S2_LBKDE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_LBKDE_SHIFT)) and UART0_S2_LBKDE_MASK;

   UART0_S2_BRK13_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4828
   UART0_S2_BRK13_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4829
   --  arg-macro: function UART0_S2_BRK13 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_BRK13_SHIFT)) and UART0_S2_BRK13_MASK;

   UART0_S2_RWUID_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4831
   UART0_S2_RWUID_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4832
   --  arg-macro: function UART0_S2_RWUID (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_RWUID_SHIFT)) and UART0_S2_RWUID_MASK;

   UART0_S2_RXINV_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4834
   UART0_S2_RXINV_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4835
   --  arg-macro: function UART0_S2_RXINV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_RXINV_SHIFT)) and UART0_S2_RXINV_MASK;

   UART0_S2_MSBF_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4837
   UART0_S2_MSBF_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4838
   --  arg-macro: function UART0_S2_MSBF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_MSBF_SHIFT)) and UART0_S2_MSBF_MASK;

   UART0_S2_RXEDGIF_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4840
   UART0_S2_RXEDGIF_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4841
   --  arg-macro: function UART0_S2_RXEDGIF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_RXEDGIF_SHIFT)) and UART0_S2_RXEDGIF_MASK;

   UART0_S2_LBKDIF_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4843
   UART0_S2_LBKDIF_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4844
   --  arg-macro: function UART0_S2_LBKDIF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_S2_LBKDIF_SHIFT)) and UART0_S2_LBKDIF_MASK;

   UART0_C3_PEIE_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4848
   UART0_C3_PEIE_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4849
   --  arg-macro: function UART0_C3_PEIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_PEIE_SHIFT)) and UART0_C3_PEIE_MASK;

   UART0_C3_FEIE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4851
   UART0_C3_FEIE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4852
   --  arg-macro: function UART0_C3_FEIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_FEIE_SHIFT)) and UART0_C3_FEIE_MASK;

   UART0_C3_NEIE_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4854
   UART0_C3_NEIE_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4855
   --  arg-macro: function UART0_C3_NEIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_NEIE_SHIFT)) and UART0_C3_NEIE_MASK;

   UART0_C3_ORIE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4857
   UART0_C3_ORIE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4858
   --  arg-macro: function UART0_C3_ORIE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_ORIE_SHIFT)) and UART0_C3_ORIE_MASK;

   UART0_C3_TXINV_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4860
   UART0_C3_TXINV_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4861
   --  arg-macro: function UART0_C3_TXINV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_TXINV_SHIFT)) and UART0_C3_TXINV_MASK;

   UART0_C3_TXDIR_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4863
   UART0_C3_TXDIR_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4864
   --  arg-macro: function UART0_C3_TXDIR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_TXDIR_SHIFT)) and UART0_C3_TXDIR_MASK;

   UART0_C3_R9T8_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4866
   UART0_C3_R9T8_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4867
   --  arg-macro: function UART0_C3_R9T8 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_R9T8_SHIFT)) and UART0_C3_R9T8_MASK;

   UART0_C3_R8T9_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4869
   UART0_C3_R8T9_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4870
   --  arg-macro: function UART0_C3_R8T9 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C3_R8T9_SHIFT)) and UART0_C3_R8T9_MASK;

   UART0_D_R0T0_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4874
   UART0_D_R0T0_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4875
   --  arg-macro: function UART0_D_R0T0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R0T0_SHIFT)) and UART0_D_R0T0_MASK;

   UART0_D_R1T1_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4877
   UART0_D_R1T1_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4878
   --  arg-macro: function UART0_D_R1T1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R1T1_SHIFT)) and UART0_D_R1T1_MASK;

   UART0_D_R2T2_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4880
   UART0_D_R2T2_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4881
   --  arg-macro: function UART0_D_R2T2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R2T2_SHIFT)) and UART0_D_R2T2_MASK;

   UART0_D_R3T3_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4883
   UART0_D_R3T3_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4884
   --  arg-macro: function UART0_D_R3T3 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R3T3_SHIFT)) and UART0_D_R3T3_MASK;

   UART0_D_R4T4_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4886
   UART0_D_R4T4_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4887
   --  arg-macro: function UART0_D_R4T4 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R4T4_SHIFT)) and UART0_D_R4T4_MASK;

   UART0_D_R5T5_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4889
   UART0_D_R5T5_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4890
   --  arg-macro: function UART0_D_R5T5 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R5T5_SHIFT)) and UART0_D_R5T5_MASK;

   UART0_D_R6T6_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4892
   UART0_D_R6T6_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4893
   --  arg-macro: function UART0_D_R6T6 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R6T6_SHIFT)) and UART0_D_R6T6_MASK;

   UART0_D_R7T7_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4895
   UART0_D_R7T7_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4896
   --  arg-macro: function UART0_D_R7T7 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_D_R7T7_SHIFT)) and UART0_D_R7T7_MASK;

   UART0_MA1_MA_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4900
   UART0_MA1_MA_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4901
   --  arg-macro: function UART0_MA1_MA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_MA1_MA_SHIFT)) and UART0_MA1_MA_MASK;

   UART0_MA2_MA_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4905
   UART0_MA2_MA_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4906
   --  arg-macro: function UART0_MA2_MA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_MA2_MA_SHIFT)) and UART0_MA2_MA_MASK;

   UART0_C4_OSR_MASK : constant := (16#1F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4910
   UART0_C4_OSR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4911
   --  arg-macro: function UART0_C4_OSR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C4_OSR_SHIFT)) and UART0_C4_OSR_MASK;

   UART0_C4_M10_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4913
   UART0_C4_M10_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4914
   --  arg-macro: function UART0_C4_M10 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C4_M10_SHIFT)) and UART0_C4_M10_MASK;

   UART0_C4_MAEN2_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4916
   UART0_C4_MAEN2_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4917
   --  arg-macro: function UART0_C4_MAEN2 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C4_MAEN2_SHIFT)) and UART0_C4_MAEN2_MASK;

   UART0_C4_MAEN1_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4919
   UART0_C4_MAEN1_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4920
   --  arg-macro: function UART0_C4_MAEN1 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C4_MAEN1_SHIFT)) and UART0_C4_MAEN1_MASK;

   UART0_C5_RESYNCDIS_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4924
   UART0_C5_RESYNCDIS_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4925
   --  arg-macro: function UART0_C5_RESYNCDIS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C5_RESYNCDIS_SHIFT)) and UART0_C5_RESYNCDIS_MASK;

   UART0_C5_BOTHEDGE_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4927
   UART0_C5_BOTHEDGE_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4928
   --  arg-macro: function UART0_C5_BOTHEDGE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C5_BOTHEDGE_SHIFT)) and UART0_C5_BOTHEDGE_MASK;

   UART0_C5_RDMAE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4930
   UART0_C5_RDMAE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4931
   --  arg-macro: function UART0_C5_RDMAE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C5_RDMAE_SHIFT)) and UART0_C5_RDMAE_MASK;

   UART0_C5_TDMAE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4933
   UART0_C5_TDMAE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4934
   --  arg-macro: function UART0_C5_TDMAE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << UART0_C5_TDMAE_SHIFT)) and UART0_C5_TDMAE_MASK;

   UART0_BASE : constant := (16#4006A000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4945
   --  unsupported macro: UART0 ((UART0_Type *)UART0_BASE)
   --  unsupported macro: UART0_BASE_ADDRS { UART0_BASE }
   --  unsupported macro: UART0_BASE_PTRS { UART0 }
   --  unsupported macro: UART0_RX_TX_IRQS { UART0_IRQn }
   --  unsupported macro: UART0_ERR_IRQS { UART0_IRQn }

   USB_PERID_ID_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5041
   USB_PERID_ID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5042
   --  arg-macro: function USB_PERID_ID (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_PERID_ID_SHIFT)) and USB_PERID_ID_MASK;

   USB_IDCOMP_NID_MASK : constant := (16#3F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5046
   USB_IDCOMP_NID_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5047
   --  arg-macro: function USB_IDCOMP_NID (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_IDCOMP_NID_SHIFT)) and USB_IDCOMP_NID_MASK;

   USB_REV_REV_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5051
   USB_REV_REV_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5052
   --  arg-macro: function USB_REV_REV (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_REV_REV_SHIFT)) and USB_REV_REV_MASK;

   USB_ADDINFO_IEHOST_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5056
   USB_ADDINFO_IEHOST_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5057
   --  arg-macro: function USB_ADDINFO_IEHOST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ADDINFO_IEHOST_SHIFT)) and USB_ADDINFO_IEHOST_MASK;

   USB_ADDINFO_IRQNUM_MASK : constant := (16#F8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5059
   USB_ADDINFO_IRQNUM_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5060
   --  arg-macro: function USB_ADDINFO_IRQNUM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ADDINFO_IRQNUM_SHIFT)) and USB_ADDINFO_IRQNUM_MASK;

   USB_OTGISTAT_AVBUSCHG_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5064
   USB_OTGISTAT_AVBUSCHG_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5065
   --  arg-macro: function USB_OTGISTAT_AVBUSCHG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGISTAT_AVBUSCHG_SHIFT)) and USB_OTGISTAT_AVBUSCHG_MASK;

   USB_OTGISTAT_B_SESS_CHG_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5067
   USB_OTGISTAT_B_SESS_CHG_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5068
   --  arg-macro: function USB_OTGISTAT_B_SESS_CHG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGISTAT_B_SESS_CHG_SHIFT)) and USB_OTGISTAT_B_SESS_CHG_MASK;

   USB_OTGISTAT_SESSVLDCHG_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5070
   USB_OTGISTAT_SESSVLDCHG_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5071
   --  arg-macro: function USB_OTGISTAT_SESSVLDCHG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGISTAT_SESSVLDCHG_SHIFT)) and USB_OTGISTAT_SESSVLDCHG_MASK;

   USB_OTGISTAT_LINE_STATE_CHG_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5073
   USB_OTGISTAT_LINE_STATE_CHG_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5074
   --  arg-macro: function USB_OTGISTAT_LINE_STATE_CHG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGISTAT_LINE_STATE_CHG_SHIFT)) and USB_OTGISTAT_LINE_STATE_CHG_MASK;

   USB_OTGISTAT_ONEMSEC_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5076
   USB_OTGISTAT_ONEMSEC_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5077
   --  arg-macro: function USB_OTGISTAT_ONEMSEC (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGISTAT_ONEMSEC_SHIFT)) and USB_OTGISTAT_ONEMSEC_MASK;

   USB_OTGISTAT_IDCHG_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5079
   USB_OTGISTAT_IDCHG_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5080
   --  arg-macro: function USB_OTGISTAT_IDCHG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGISTAT_IDCHG_SHIFT)) and USB_OTGISTAT_IDCHG_MASK;

   USB_OTGICR_AVBUSEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5084
   USB_OTGICR_AVBUSEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5085
   --  arg-macro: function USB_OTGICR_AVBUSEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGICR_AVBUSEN_SHIFT)) and USB_OTGICR_AVBUSEN_MASK;

   USB_OTGICR_BSESSEN_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5087
   USB_OTGICR_BSESSEN_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5088
   --  arg-macro: function USB_OTGICR_BSESSEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGICR_BSESSEN_SHIFT)) and USB_OTGICR_BSESSEN_MASK;

   USB_OTGICR_SESSVLDEN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5090
   USB_OTGICR_SESSVLDEN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5091
   --  arg-macro: function USB_OTGICR_SESSVLDEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGICR_SESSVLDEN_SHIFT)) and USB_OTGICR_SESSVLDEN_MASK;

   USB_OTGICR_LINESTATEEN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5093
   USB_OTGICR_LINESTATEEN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5094
   --  arg-macro: function USB_OTGICR_LINESTATEEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGICR_LINESTATEEN_SHIFT)) and USB_OTGICR_LINESTATEEN_MASK;

   USB_OTGICR_ONEMSECEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5096
   USB_OTGICR_ONEMSECEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5097
   --  arg-macro: function USB_OTGICR_ONEMSECEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGICR_ONEMSECEN_SHIFT)) and USB_OTGICR_ONEMSECEN_MASK;

   USB_OTGICR_IDEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5099
   USB_OTGICR_IDEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5100
   --  arg-macro: function USB_OTGICR_IDEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGICR_IDEN_SHIFT)) and USB_OTGICR_IDEN_MASK;

   USB_OTGSTAT_AVBUSVLD_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5104
   USB_OTGSTAT_AVBUSVLD_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5105
   --  arg-macro: function USB_OTGSTAT_AVBUSVLD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGSTAT_AVBUSVLD_SHIFT)) and USB_OTGSTAT_AVBUSVLD_MASK;

   USB_OTGSTAT_BSESSEND_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5107
   USB_OTGSTAT_BSESSEND_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5108
   --  arg-macro: function USB_OTGSTAT_BSESSEND (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGSTAT_BSESSEND_SHIFT)) and USB_OTGSTAT_BSESSEND_MASK;

   USB_OTGSTAT_SESS_VLD_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5110
   USB_OTGSTAT_SESS_VLD_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5111
   --  arg-macro: function USB_OTGSTAT_SESS_VLD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGSTAT_SESS_VLD_SHIFT)) and USB_OTGSTAT_SESS_VLD_MASK;

   USB_OTGSTAT_LINESTATESTABLE_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5113
   USB_OTGSTAT_LINESTATESTABLE_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5114
   --  arg-macro: function USB_OTGSTAT_LINESTATESTABLE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGSTAT_LINESTATESTABLE_SHIFT)) and USB_OTGSTAT_LINESTATESTABLE_MASK;

   USB_OTGSTAT_ONEMSECEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5116
   USB_OTGSTAT_ONEMSECEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5117
   --  arg-macro: function USB_OTGSTAT_ONEMSECEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGSTAT_ONEMSECEN_SHIFT)) and USB_OTGSTAT_ONEMSECEN_MASK;

   USB_OTGSTAT_ID_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5119
   USB_OTGSTAT_ID_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5120
   --  arg-macro: function USB_OTGSTAT_ID (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGSTAT_ID_SHIFT)) and USB_OTGSTAT_ID_MASK;

   USB_OTGCTL_OTGEN_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5124
   USB_OTGCTL_OTGEN_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5125
   --  arg-macro: function USB_OTGCTL_OTGEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGCTL_OTGEN_SHIFT)) and USB_OTGCTL_OTGEN_MASK;

   USB_OTGCTL_DMLOW_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5127
   USB_OTGCTL_DMLOW_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5128
   --  arg-macro: function USB_OTGCTL_DMLOW (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGCTL_DMLOW_SHIFT)) and USB_OTGCTL_DMLOW_MASK;

   USB_OTGCTL_DPLOW_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5130
   USB_OTGCTL_DPLOW_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5131
   --  arg-macro: function USB_OTGCTL_DPLOW (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGCTL_DPLOW_SHIFT)) and USB_OTGCTL_DPLOW_MASK;

   USB_OTGCTL_DPHIGH_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5133
   USB_OTGCTL_DPHIGH_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5134
   --  arg-macro: function USB_OTGCTL_DPHIGH (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OTGCTL_DPHIGH_SHIFT)) and USB_OTGCTL_DPHIGH_MASK;

   USB_ISTAT_USBRST_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5138
   USB_ISTAT_USBRST_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5139
   --  arg-macro: function USB_ISTAT_USBRST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_USBRST_SHIFT)) and USB_ISTAT_USBRST_MASK;

   USB_ISTAT_ERROR_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5141
   USB_ISTAT_ERROR_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5142
   --  arg-macro: function USB_ISTAT_ERROR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_ERROR_SHIFT)) and USB_ISTAT_ERROR_MASK;

   USB_ISTAT_SOFTOK_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5144
   USB_ISTAT_SOFTOK_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5145
   --  arg-macro: function USB_ISTAT_SOFTOK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_SOFTOK_SHIFT)) and USB_ISTAT_SOFTOK_MASK;

   USB_ISTAT_TOKDNE_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5147
   USB_ISTAT_TOKDNE_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5148
   --  arg-macro: function USB_ISTAT_TOKDNE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_TOKDNE_SHIFT)) and USB_ISTAT_TOKDNE_MASK;

   USB_ISTAT_SLEEP_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5150
   USB_ISTAT_SLEEP_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5151
   --  arg-macro: function USB_ISTAT_SLEEP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_SLEEP_SHIFT)) and USB_ISTAT_SLEEP_MASK;

   USB_ISTAT_RESUME_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5153
   USB_ISTAT_RESUME_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5154
   --  arg-macro: function USB_ISTAT_RESUME (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_RESUME_SHIFT)) and USB_ISTAT_RESUME_MASK;

   USB_ISTAT_ATTACH_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5156
   USB_ISTAT_ATTACH_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5157
   --  arg-macro: function USB_ISTAT_ATTACH (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_ATTACH_SHIFT)) and USB_ISTAT_ATTACH_MASK;

   USB_ISTAT_STALL_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5159
   USB_ISTAT_STALL_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5160
   --  arg-macro: function USB_ISTAT_STALL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ISTAT_STALL_SHIFT)) and USB_ISTAT_STALL_MASK;

   USB_INTEN_USBRSTEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5164
   USB_INTEN_USBRSTEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5165
   --  arg-macro: function USB_INTEN_USBRSTEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_USBRSTEN_SHIFT)) and USB_INTEN_USBRSTEN_MASK;

   USB_INTEN_ERROREN_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5167
   USB_INTEN_ERROREN_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5168
   --  arg-macro: function USB_INTEN_ERROREN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_ERROREN_SHIFT)) and USB_INTEN_ERROREN_MASK;

   USB_INTEN_SOFTOKEN_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5170
   USB_INTEN_SOFTOKEN_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5171
   --  arg-macro: function USB_INTEN_SOFTOKEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_SOFTOKEN_SHIFT)) and USB_INTEN_SOFTOKEN_MASK;

   USB_INTEN_TOKDNEEN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5173
   USB_INTEN_TOKDNEEN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5174
   --  arg-macro: function USB_INTEN_TOKDNEEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_TOKDNEEN_SHIFT)) and USB_INTEN_TOKDNEEN_MASK;

   USB_INTEN_SLEEPEN_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5176
   USB_INTEN_SLEEPEN_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5177
   --  arg-macro: function USB_INTEN_SLEEPEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_SLEEPEN_SHIFT)) and USB_INTEN_SLEEPEN_MASK;

   USB_INTEN_RESUMEEN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5179
   USB_INTEN_RESUMEEN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5180
   --  arg-macro: function USB_INTEN_RESUMEEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_RESUMEEN_SHIFT)) and USB_INTEN_RESUMEEN_MASK;

   USB_INTEN_ATTACHEN_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5182
   USB_INTEN_ATTACHEN_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5183
   --  arg-macro: function USB_INTEN_ATTACHEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_ATTACHEN_SHIFT)) and USB_INTEN_ATTACHEN_MASK;

   USB_INTEN_STALLEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5185
   USB_INTEN_STALLEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5186
   --  arg-macro: function USB_INTEN_STALLEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_INTEN_STALLEN_SHIFT)) and USB_INTEN_STALLEN_MASK;

   USB_ERRSTAT_PIDERR_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5190
   USB_ERRSTAT_PIDERR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5191
   --  arg-macro: function USB_ERRSTAT_PIDERR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERRSTAT_PIDERR_SHIFT)) and USB_ERRSTAT_PIDERR_MASK;

   USB_ERRSTAT_CRC5EOF_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5193
   USB_ERRSTAT_CRC5EOF_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5194
   --  arg-macro: function USB_ERRSTAT_CRC5EOF (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERRSTAT_CRC5EOF_SHIFT)) and USB_ERRSTAT_CRC5EOF_MASK;

   USB_ERRSTAT_CRC16_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5196
   USB_ERRSTAT_CRC16_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5197
   --  arg-macro: function USB_ERRSTAT_CRC16 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERRSTAT_CRC16_SHIFT)) and USB_ERRSTAT_CRC16_MASK;

   USB_ERRSTAT_DFN8_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5199
   USB_ERRSTAT_DFN8_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5200
   --  arg-macro: function USB_ERRSTAT_DFN8 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERRSTAT_DFN8_SHIFT)) and USB_ERRSTAT_DFN8_MASK;

   USB_ERRSTAT_BTOERR_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5202
   USB_ERRSTAT_BTOERR_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5203
   --  arg-macro: function USB_ERRSTAT_BTOERR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERRSTAT_BTOERR_SHIFT)) and USB_ERRSTAT_BTOERR_MASK;

   USB_ERRSTAT_DMAERR_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5205
   USB_ERRSTAT_DMAERR_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5206
   --  arg-macro: function USB_ERRSTAT_DMAERR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERRSTAT_DMAERR_SHIFT)) and USB_ERRSTAT_DMAERR_MASK;

   USB_ERRSTAT_BTSERR_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5208
   USB_ERRSTAT_BTSERR_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5209
   --  arg-macro: function USB_ERRSTAT_BTSERR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERRSTAT_BTSERR_SHIFT)) and USB_ERRSTAT_BTSERR_MASK;

   USB_ERREN_PIDERREN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5213
   USB_ERREN_PIDERREN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5214
   --  arg-macro: function USB_ERREN_PIDERREN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERREN_PIDERREN_SHIFT)) and USB_ERREN_PIDERREN_MASK;

   USB_ERREN_CRC5EOFEN_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5216
   USB_ERREN_CRC5EOFEN_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5217
   --  arg-macro: function USB_ERREN_CRC5EOFEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERREN_CRC5EOFEN_SHIFT)) and USB_ERREN_CRC5EOFEN_MASK;

   USB_ERREN_CRC16EN_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5219
   USB_ERREN_CRC16EN_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5220
   --  arg-macro: function USB_ERREN_CRC16EN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERREN_CRC16EN_SHIFT)) and USB_ERREN_CRC16EN_MASK;

   USB_ERREN_DFN8EN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5222
   USB_ERREN_DFN8EN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5223
   --  arg-macro: function USB_ERREN_DFN8EN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERREN_DFN8EN_SHIFT)) and USB_ERREN_DFN8EN_MASK;

   USB_ERREN_BTOERREN_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5225
   USB_ERREN_BTOERREN_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5226
   --  arg-macro: function USB_ERREN_BTOERREN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERREN_BTOERREN_SHIFT)) and USB_ERREN_BTOERREN_MASK;

   USB_ERREN_DMAERREN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5228
   USB_ERREN_DMAERREN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5229
   --  arg-macro: function USB_ERREN_DMAERREN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERREN_DMAERREN_SHIFT)) and USB_ERREN_DMAERREN_MASK;

   USB_ERREN_BTSERREN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5231
   USB_ERREN_BTSERREN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5232
   --  arg-macro: function USB_ERREN_BTSERREN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ERREN_BTSERREN_SHIFT)) and USB_ERREN_BTSERREN_MASK;

   USB_STAT_ODD_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5236
   USB_STAT_ODD_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5237
   --  arg-macro: function USB_STAT_ODD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_STAT_ODD_SHIFT)) and USB_STAT_ODD_MASK;

   USB_STAT_TX_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5239
   USB_STAT_TX_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5240
   --  arg-macro: function USB_STAT_TX (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_STAT_TX_SHIFT)) and USB_STAT_TX_MASK;

   USB_STAT_ENDP_MASK : constant := (16#F0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5242
   USB_STAT_ENDP_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5243
   --  arg-macro: function USB_STAT_ENDP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_STAT_ENDP_SHIFT)) and USB_STAT_ENDP_MASK;

   USB_CTL_USBENSOFEN_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5247
   USB_CTL_USBENSOFEN_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5248
   --  arg-macro: function USB_CTL_USBENSOFEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_USBENSOFEN_SHIFT)) and USB_CTL_USBENSOFEN_MASK;

   USB_CTL_ODDRST_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5250
   USB_CTL_ODDRST_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5251
   --  arg-macro: function USB_CTL_ODDRST (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_ODDRST_SHIFT)) and USB_CTL_ODDRST_MASK;

   USB_CTL_RESUME_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5253
   USB_CTL_RESUME_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5254
   --  arg-macro: function USB_CTL_RESUME (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_RESUME_SHIFT)) and USB_CTL_RESUME_MASK;

   USB_CTL_HOSTMODEEN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5256
   USB_CTL_HOSTMODEEN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5257
   --  arg-macro: function USB_CTL_HOSTMODEEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_HOSTMODEEN_SHIFT)) and USB_CTL_HOSTMODEEN_MASK;

   USB_CTL_RESET_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5259
   USB_CTL_RESET_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5260
   --  arg-macro: function USB_CTL_RESET (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_RESET_SHIFT)) and USB_CTL_RESET_MASK;

   USB_CTL_TXSUSPENDTOKENBUSY_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5262
   USB_CTL_TXSUSPENDTOKENBUSY_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5263
   --  arg-macro: function USB_CTL_TXSUSPENDTOKENBUSY (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_TXSUSPENDTOKENBUSY_SHIFT)) and USB_CTL_TXSUSPENDTOKENBUSY_MASK;

   USB_CTL_SE0_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5265
   USB_CTL_SE0_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5266
   --  arg-macro: function USB_CTL_SE0 (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_SE0_SHIFT)) and USB_CTL_SE0_MASK;

   USB_CTL_JSTATE_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5268
   USB_CTL_JSTATE_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5269
   --  arg-macro: function USB_CTL_JSTATE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CTL_JSTATE_SHIFT)) and USB_CTL_JSTATE_MASK;

   USB_ADDR_ADDR_MASK : constant := (16#7F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5273
   USB_ADDR_ADDR_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5274
   --  arg-macro: function USB_ADDR_ADDR (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ADDR_ADDR_SHIFT)) and USB_ADDR_ADDR_MASK;

   USB_ADDR_LSEN_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5276
   USB_ADDR_LSEN_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5277
   --  arg-macro: function USB_ADDR_LSEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ADDR_LSEN_SHIFT)) and USB_ADDR_LSEN_MASK;

   USB_BDTPAGE1_BDTBA_MASK : constant := (16#FE#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5281
   USB_BDTPAGE1_BDTBA_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5282
   --  arg-macro: function USB_BDTPAGE1_BDTBA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_BDTPAGE1_BDTBA_SHIFT)) and USB_BDTPAGE1_BDTBA_MASK;

   USB_FRMNUML_FRM_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5286
   USB_FRMNUML_FRM_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5287
   --  arg-macro: function USB_FRMNUML_FRM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_FRMNUML_FRM_SHIFT)) and USB_FRMNUML_FRM_MASK;

   USB_FRMNUMH_FRM_MASK : constant := (16#7#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5291
   USB_FRMNUMH_FRM_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5292
   --  arg-macro: function USB_FRMNUMH_FRM (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_FRMNUMH_FRM_SHIFT)) and USB_FRMNUMH_FRM_MASK;

   USB_TOKEN_TOKENENDPT_MASK : constant := (16#F#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5296
   USB_TOKEN_TOKENENDPT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5297
   --  arg-macro: function USB_TOKEN_TOKENENDPT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_TOKEN_TOKENENDPT_SHIFT)) and USB_TOKEN_TOKENENDPT_MASK;

   USB_TOKEN_TOKENPID_MASK : constant := (16#F0#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5299
   USB_TOKEN_TOKENPID_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5300
   --  arg-macro: function USB_TOKEN_TOKENPID (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_TOKEN_TOKENPID_SHIFT)) and USB_TOKEN_TOKENPID_MASK;

   USB_SOFTHLD_CNT_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5304
   USB_SOFTHLD_CNT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5305
   --  arg-macro: function USB_SOFTHLD_CNT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_SOFTHLD_CNT_SHIFT)) and USB_SOFTHLD_CNT_MASK;

   USB_BDTPAGE2_BDTBA_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5309
   USB_BDTPAGE2_BDTBA_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5310
   --  arg-macro: function USB_BDTPAGE2_BDTBA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_BDTPAGE2_BDTBA_SHIFT)) and USB_BDTPAGE2_BDTBA_MASK;

   USB_BDTPAGE3_BDTBA_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5314
   USB_BDTPAGE3_BDTBA_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5315
   --  arg-macro: function USB_BDTPAGE3_BDTBA (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_BDTPAGE3_BDTBA_SHIFT)) and USB_BDTPAGE3_BDTBA_MASK;

   USB_ENDPT_EPHSHK_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5319
   USB_ENDPT_EPHSHK_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5320
   --  arg-macro: function USB_ENDPT_EPHSHK (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ENDPT_EPHSHK_SHIFT)) and USB_ENDPT_EPHSHK_MASK;

   USB_ENDPT_EPSTALL_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5322
   USB_ENDPT_EPSTALL_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5323
   --  arg-macro: function USB_ENDPT_EPSTALL (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ENDPT_EPSTALL_SHIFT)) and USB_ENDPT_EPSTALL_MASK;

   USB_ENDPT_EPTXEN_MASK : constant := (16#4#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5325
   USB_ENDPT_EPTXEN_SHIFT : constant := (2);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5326
   --  arg-macro: function USB_ENDPT_EPTXEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ENDPT_EPTXEN_SHIFT)) and USB_ENDPT_EPTXEN_MASK;

   USB_ENDPT_EPRXEN_MASK : constant := (16#8#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5328
   USB_ENDPT_EPRXEN_SHIFT : constant := (3);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5329
   --  arg-macro: function USB_ENDPT_EPRXEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ENDPT_EPRXEN_SHIFT)) and USB_ENDPT_EPRXEN_MASK;

   USB_ENDPT_EPCTLDIS_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5331
   USB_ENDPT_EPCTLDIS_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5332
   --  arg-macro: function USB_ENDPT_EPCTLDIS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ENDPT_EPCTLDIS_SHIFT)) and USB_ENDPT_EPCTLDIS_MASK;

   USB_ENDPT_RETRYDIS_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5334
   USB_ENDPT_RETRYDIS_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5335
   --  arg-macro: function USB_ENDPT_RETRYDIS (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ENDPT_RETRYDIS_SHIFT)) and USB_ENDPT_RETRYDIS_MASK;

   USB_ENDPT_HOSTWOHUB_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5337
   USB_ENDPT_HOSTWOHUB_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5338
   --  arg-macro: function USB_ENDPT_HOSTWOHUB (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_ENDPT_HOSTWOHUB_SHIFT)) and USB_ENDPT_HOSTWOHUB_MASK;

   USB_ENDPT_COUNT : constant := (16);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5342

   USB_USBCTRL_PDE_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5345
   USB_USBCTRL_PDE_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5346
   --  arg-macro: function USB_USBCTRL_PDE (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_USBCTRL_PDE_SHIFT)) and USB_USBCTRL_PDE_MASK;

   USB_USBCTRL_SUSP_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5348
   USB_USBCTRL_SUSP_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5349
   --  arg-macro: function USB_USBCTRL_SUSP (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_USBCTRL_SUSP_SHIFT)) and USB_USBCTRL_SUSP_MASK;

   USB_OBSERVE_DMPD_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5353
   USB_OBSERVE_DMPD_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5354
   --  arg-macro: function USB_OBSERVE_DMPD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OBSERVE_DMPD_SHIFT)) and USB_OBSERVE_DMPD_MASK;

   USB_OBSERVE_DPPD_MASK : constant := (16#40#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5356
   USB_OBSERVE_DPPD_SHIFT : constant := (6);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5357
   --  arg-macro: function USB_OBSERVE_DPPD (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OBSERVE_DPPD_SHIFT)) and USB_OBSERVE_DPPD_MASK;

   USB_OBSERVE_DPPU_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5359
   USB_OBSERVE_DPPU_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5360
   --  arg-macro: function USB_OBSERVE_DPPU (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_OBSERVE_DPPU_SHIFT)) and USB_OBSERVE_DPPU_MASK;

   USB_CONTROL_DPPULLUPNONOTG_MASK : constant := (16#10#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5364
   USB_CONTROL_DPPULLUPNONOTG_SHIFT : constant := (4);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5365
   --  arg-macro: function USB_CONTROL_DPPULLUPNONOTG (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_CONTROL_DPPULLUPNONOTG_SHIFT)) and USB_CONTROL_DPPULLUPNONOTG_MASK;

   USB_USBTRC0_USB_RESUME_INT_MASK : constant := (16#1#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5369
   USB_USBTRC0_USB_RESUME_INT_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5370
   --  arg-macro: function USB_USBTRC0_USB_RESUME_INT (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_USBTRC0_USB_RESUME_INT_SHIFT)) and USB_USBTRC0_USB_RESUME_INT_MASK;

   USB_USBTRC0_SYNC_DET_MASK : constant := (16#2#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5372
   USB_USBTRC0_SYNC_DET_SHIFT : constant := (1);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5373
   --  arg-macro: function USB_USBTRC0_SYNC_DET (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_USBTRC0_SYNC_DET_SHIFT)) and USB_USBTRC0_SYNC_DET_MASK;

   USB_USBTRC0_USBRESMEN_MASK : constant := (16#20#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5375
   USB_USBTRC0_USBRESMEN_SHIFT : constant := (5);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5376
   --  arg-macro: function USB_USBTRC0_USBRESMEN (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_USBTRC0_USBRESMEN_SHIFT)) and USB_USBTRC0_USBRESMEN_MASK;

   USB_USBTRC0_USBRESET_MASK : constant := (16#80#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5378
   USB_USBTRC0_USBRESET_SHIFT : constant := (7);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5379
   --  arg-macro: function USB_USBTRC0_USBRESET (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_USBTRC0_USBRESET_SHIFT)) and USB_USBTRC0_USBRESET_MASK;

   USB_USBFRMADJUST_ADJ_MASK : constant := (16#FF#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5383
   USB_USBFRMADJUST_ADJ_SHIFT : constant := (0);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5384
   --  arg-macro: function USB_USBFRMADJUST_ADJ (x)
   --    return ((uint8_t)(((uint8_t)(x)) << USB_USBFRMADJUST_ADJ_SHIFT)) and USB_USBFRMADJUST_ADJ_MASK;

   USB0_BASE : constant := (16#40072000#);  --  /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5395
   --  unsupported macro: USB0 ((USB_Type *)USB0_BASE)
   --  unsupported macro: USB_BASE_ADDRS { USB0_BASE }
   --  unsupported macro: USB_BASE_PTRS { USB0 }
   --  unsupported macro: USB_IRQS { USB0_IRQn }
   --  unsupported macro: NXP_VAL2FLD(field,value) (((value) << (field ## _SHIFT)) & (field ## _MASK))
   --  unsupported macro: NXP_FLD2VAL(field,value) (((value) & (field ## _MASK)) >> (field ## _SHIFT))
   --  unsupported macro: DMA_REQC_ARR_DMAC_MASK This_symbol_has_been_deprecated
   --  unsupported macro: DMA_REQC_ARR_DMAC_SHIFT This_symbol_has_been_deprecated
   --  arg-macro: procedure DMA_REQC_ARR_DMAC (x)
   --    This_symbol_has_been_deprecated
   --  unsupported macro: DMA_REQC_ARR_CFSM_MASK This_symbol_has_been_deprecated
   --  unsupported macro: DMA_REQC_ARR_CFSM_SHIFT This_symbol_has_been_deprecated
   --  unsupported macro: DMA_REQC0 This_symbol_has_been_deprecated
   --  unsupported macro: DMA_REQC1 This_symbol_has_been_deprecated
   --  unsupported macro: DMA_REQC2 This_symbol_has_been_deprecated
   --  unsupported macro: DMA_REQC3 This_symbol_has_been_deprecated
   --  unsupported macro: MCG_S_LOLS_MASK MCG_S_LOLS0_MASK
   --  unsupported macro: MCG_S_LOLS_SHIFT MCG_S_LOLS0_SHIFT
   --  unsupported macro: SIM_FCFG2_MAXADDR_MASK SIM_FCFG2_MAXADDR0_MASK
   --  unsupported macro: SIM_FCFG2_MAXADDR_SHIFT SIM_FCFG2_MAXADDR0_SHIFT
   --  unsupported macro: SIM_FCFG2_MAXADDR SIM_FCFG2_MAXADDR0
   --  unsupported macro: SPI_C2_SPLPIE_MASK This_symbol_has_been_deprecated
   --  unsupported macro: SPI_C2_SPLPIE_SHIFT This_symbol_has_been_deprecated
   --  unsupported macro: UART_C4_LBKDDMAS_MASK This_symbol_has_been_deprecated
   --  unsupported macro: UART_C4_LBKDDMAS_SHIFT This_symbol_has_been_deprecated
   --  unsupported macro: UART_C4_ILDMAS_MASK This_symbol_has_been_deprecated
   --  unsupported macro: UART_C4_ILDMAS_SHIFT This_symbol_has_been_deprecated
   --  unsupported macro: UART_C4_TCDMAS_MASK This_symbol_has_been_deprecated
   --  unsupported macro: UART_C4_TCDMAS_SHIFT This_symbol_has_been_deprecated
   --  unsupported macro: UARTLP_Type UART0_Type
   --  unsupported macro: UARTLP_BDH_REG UART0_BDH_REG
   --  unsupported macro: UARTLP_BDL_REG UART0_BDL_REG
   --  unsupported macro: UARTLP_C1_REG UART0_C1_REG
   --  unsupported macro: UARTLP_C2_REG UART0_C2_REG
   --  unsupported macro: UARTLP_S1_REG UART0_S1_REG
   --  unsupported macro: UARTLP_S2_REG UART0_S2_REG
   --  unsupported macro: UARTLP_C3_REG UART0_C3_REG
   --  unsupported macro: UARTLP_D_REG UART0_D_REG
   --  unsupported macro: UARTLP_MA1_REG UART0_MA1_REG
   --  unsupported macro: UARTLP_MA2_REG UART0_MA2_REG
   --  unsupported macro: UARTLP_C4_REG UART0_C4_REG
   --  unsupported macro: UARTLP_C5_REG UART0_C5_REG
   --  unsupported macro: UARTLP_BDH_SBR_MASK UART0_BDH_SBR_MASK
   --  unsupported macro: UARTLP_BDH_SBR_SHIFT UART0_BDH_SBR_SHIFT
   --  arg-macro: procedure UARTLP_BDH_SBR (x)
   --    UART0_BDH_SBR(x)
   --  unsupported macro: UARTLP_BDH_SBNS_MASK UART0_BDH_SBNS_MASK
   --  unsupported macro: UARTLP_BDH_SBNS_SHIFT UART0_BDH_SBNS_SHIFT
   --  unsupported macro: UARTLP_BDH_RXEDGIE_MASK UART0_BDH_RXEDGIE_MASK
   --  unsupported macro: UARTLP_BDH_RXEDGIE_SHIFT UART0_BDH_RXEDGIE_SHIFT
   --  unsupported macro: UARTLP_BDH_LBKDIE_MASK UART0_BDH_LBKDIE_MASK
   --  unsupported macro: UARTLP_BDH_LBKDIE_SHIFT UART0_BDH_LBKDIE_SHIFT
   --  unsupported macro: UARTLP_BDL_SBR_MASK UART0_BDL_SBR_MASK
   --  unsupported macro: UARTLP_BDL_SBR_SHIFT UART0_BDL_SBR_SHIFT
   --  arg-macro: procedure UARTLP_BDL_SBR (x)
   --    UART0_BDL_SBR(x)
   --  unsupported macro: UARTLP_C1_PT_MASK UART0_C1_PT_MASK
   --  unsupported macro: UARTLP_C1_PT_SHIFT UART0_C1_PT_SHIFT
   --  unsupported macro: UARTLP_C1_PE_MASK UART0_C1_PE_MASK
   --  unsupported macro: UARTLP_C1_PE_SHIFT UART0_C1_PE_SHIFT
   --  unsupported macro: UARTLP_C1_ILT_MASK UART0_C1_ILT_MASK
   --  unsupported macro: UARTLP_C1_ILT_SHIFT UART0_C1_ILT_SHIFT
   --  unsupported macro: UARTLP_C1_WAKE_MASK UART0_C1_WAKE_MASK
   --  unsupported macro: UARTLP_C1_WAKE_SHIFT UART0_C1_WAKE_SHIFT
   --  unsupported macro: UARTLP_C1_M_MASK UART0_C1_M_MASK
   --  unsupported macro: UARTLP_C1_M_SHIFT UART0_C1_M_SHIFT
   --  unsupported macro: UARTLP_C1_RSRC_MASK UART0_C1_RSRC_MASK
   --  unsupported macro: UARTLP_C1_RSRC_SHIFT UART0_C1_RSRC_SHIFT
   --  unsupported macro: UARTLP_C1_DOZEEN_MASK UART0_C1_DOZEEN_MASK
   --  unsupported macro: UARTLP_C1_DOZEEN_SHIFT UART0_C1_DOZEEN_SHIFT
   --  unsupported macro: UARTLP_C1_LOOPS_MASK UART0_C1_LOOPS_MASK
   --  unsupported macro: UARTLP_C1_LOOPS_SHIFT UART0_C1_LOOPS_SHIFT
   --  unsupported macro: UARTLP_C2_SBK_MASK UART0_C2_SBK_MASK
   --  unsupported macro: UARTLP_C2_SBK_SHIFT UART0_C2_SBK_SHIFT
   --  unsupported macro: UARTLP_C2_RWU_MASK UART0_C2_RWU_MASK
   --  unsupported macro: UARTLP_C2_RWU_SHIFT UART0_C2_RWU_SHIFT
   --  unsupported macro: UARTLP_C2_RE_MASK UART0_C2_RE_MASK
   --  unsupported macro: UARTLP_C2_RE_SHIFT UART0_C2_RE_SHIFT
   --  unsupported macro: UARTLP_C2_TE_MASK UART0_C2_TE_MASK
   --  unsupported macro: UARTLP_C2_TE_SHIFT UART0_C2_TE_SHIFT
   --  unsupported macro: UARTLP_C2_ILIE_MASK UART0_C2_ILIE_MASK
   --  unsupported macro: UARTLP_C2_ILIE_SHIFT UART0_C2_ILIE_SHIFT
   --  unsupported macro: UARTLP_C2_RIE_MASK UART0_C2_RIE_MASK
   --  unsupported macro: UARTLP_C2_RIE_SHIFT UART0_C2_RIE_SHIFT
   --  unsupported macro: UARTLP_C2_TCIE_MASK UART0_C2_TCIE_MASK
   --  unsupported macro: UARTLP_C2_TCIE_SHIFT UART0_C2_TCIE_SHIFT
   --  unsupported macro: UARTLP_C2_TIE_MASK UART0_C2_TIE_MASK
   --  unsupported macro: UARTLP_C2_TIE_SHIFT UART0_C2_TIE_SHIFT
   --  unsupported macro: UARTLP_S1_PF_MASK UART0_S1_PF_MASK
   --  unsupported macro: UARTLP_S1_PF_SHIFT UART0_S1_PF_SHIFT
   --  unsupported macro: UARTLP_S1_FE_MASK UART0_S1_FE_MASK
   --  unsupported macro: UARTLP_S1_FE_SHIFT UART0_S1_FE_SHIFT
   --  unsupported macro: UARTLP_S1_NF_MASK UART0_S1_NF_MASK
   --  unsupported macro: UARTLP_S1_NF_SHIFT UART0_S1_NF_SHIFT
   --  unsupported macro: UARTLP_S1_OR_MASK UART0_S1_OR_MASK
   --  unsupported macro: UARTLP_S1_OR_SHIFT UART0_S1_OR_SHIFT
   --  unsupported macro: UARTLP_S1_IDLE_MASK UART0_S1_IDLE_MASK
   --  unsupported macro: UARTLP_S1_IDLE_SHIFT UART0_S1_IDLE_SHIFT
   --  unsupported macro: UARTLP_S1_RDRF_MASK UART0_S1_RDRF_MASK
   --  unsupported macro: UARTLP_S1_RDRF_SHIFT UART0_S1_RDRF_SHIFT
   --  unsupported macro: UARTLP_S1_TC_MASK UART0_S1_TC_MASK
   --  unsupported macro: UARTLP_S1_TC_SHIFT UART0_S1_TC_SHIFT
   --  unsupported macro: UARTLP_S1_TDRE_MASK UART0_S1_TDRE_MASK
   --  unsupported macro: UARTLP_S1_TDRE_SHIFT UART0_S1_TDRE_SHIFT
   --  unsupported macro: UARTLP_S2_RAF_MASK UART0_S2_RAF_MASK
   --  unsupported macro: UARTLP_S2_RAF_SHIFT UART0_S2_RAF_SHIFT
   --  unsupported macro: UARTLP_S2_LBKDE_MASK UART0_S2_LBKDE_MASK
   --  unsupported macro: UARTLP_S2_LBKDE_SHIFT UART0_S2_LBKDE_SHIFT
   --  unsupported macro: UARTLP_S2_BRK13_MASK UART0_S2_BRK13_MASK
   --  unsupported macro: UARTLP_S2_BRK13_SHIFT UART0_S2_BRK13_SHIFT
   --  unsupported macro: UARTLP_S2_RWUID_MASK UART0_S2_RWUID_MASK
   --  unsupported macro: UARTLP_S2_RWUID_SHIFT UART0_S2_RWUID_SHIFT
   --  unsupported macro: UARTLP_S2_RXINV_MASK UART0_S2_RXINV_MASK
   --  unsupported macro: UARTLP_S2_RXINV_SHIFT UART0_S2_RXINV_SHIFT
   --  unsupported macro: UARTLP_S2_MSBF_MASK UART0_S2_MSBF_MASK
   --  unsupported macro: UARTLP_S2_MSBF_SHIFT UART0_S2_MSBF_SHIFT
   --  unsupported macro: UARTLP_S2_RXEDGIF_MASK UART0_S2_RXEDGIF_MASK
   --  unsupported macro: UARTLP_S2_RXEDGIF_SHIFT UART0_S2_RXEDGIF_SHIFT
   --  unsupported macro: UARTLP_S2_LBKDIF_MASK UART0_S2_LBKDIF_MASK
   --  unsupported macro: UARTLP_S2_LBKDIF_SHIFT UART0_S2_LBKDIF_SHIFT
   --  unsupported macro: UARTLP_C3_PEIE_MASK UART0_C3_PEIE_MASK
   --  unsupported macro: UARTLP_C3_PEIE_SHIFT UART0_C3_PEIE_SHIFT
   --  unsupported macro: UARTLP_C3_FEIE_MASK UART0_C3_FEIE_MASK
   --  unsupported macro: UARTLP_C3_FEIE_SHIFT UART0_C3_FEIE_SHIFT
   --  unsupported macro: UARTLP_C3_NEIE_MASK UART0_C3_NEIE_MASK
   --  unsupported macro: UARTLP_C3_NEIE_SHIFT UART0_C3_NEIE_SHIFT
   --  unsupported macro: UARTLP_C3_ORIE_MASK UART0_C3_ORIE_MASK
   --  unsupported macro: UARTLP_C3_ORIE_SHIFT UART0_C3_ORIE_SHIFT
   --  unsupported macro: UARTLP_C3_TXINV_MASK UART0_C3_TXINV_MASK
   --  unsupported macro: UARTLP_C3_TXINV_SHIFT UART0_C3_TXINV_SHIFT
   --  unsupported macro: UARTLP_C3_TXDIR_MASK UART0_C3_TXDIR_MASK
   --  unsupported macro: UARTLP_C3_TXDIR_SHIFT UART0_C3_TXDIR_SHIFT
   --  unsupported macro: UARTLP_C3_R9T8_MASK UART0_C3_R9T8_MASK
   --  unsupported macro: UARTLP_C3_R9T8_SHIFT UART0_C3_R9T8_SHIFT
   --  unsupported macro: UARTLP_C3_R8T9_MASK UART0_C3_R8T9_MASK
   --  unsupported macro: UARTLP_C3_R8T9_SHIFT UART0_C3_R8T9_SHIFT
   --  unsupported macro: UARTLP_D_R0T0_MASK UART0_D_R0T0_MASK
   --  unsupported macro: UARTLP_D_R0T0_SHIFT UART0_D_R0T0_SHIFT
   --  unsupported macro: UARTLP_D_R1T1_MASK UART0_D_R1T1_MASK
   --  unsupported macro: UARTLP_D_R1T1_SHIFT UART0_D_R1T1_SHIFT
   --  unsupported macro: UARTLP_D_R2T2_MASK UART0_D_R2T2_MASK
   --  unsupported macro: UARTLP_D_R2T2_SHIFT UART0_D_R2T2_SHIFT
   --  unsupported macro: UARTLP_D_R3T3_MASK UART0_D_R3T3_MASK
   --  unsupported macro: UARTLP_D_R3T3_SHIFT UART0_D_R3T3_SHIFT
   --  unsupported macro: UARTLP_D_R4T4_MASK UART0_D_R4T4_MASK
   --  unsupported macro: UARTLP_D_R4T4_SHIFT UART0_D_R4T4_SHIFT
   --  unsupported macro: UARTLP_D_R5T5_MASK UART0_D_R5T5_MASK
   --  unsupported macro: UARTLP_D_R5T5_SHIFT UART0_D_R5T5_SHIFT
   --  unsupported macro: UARTLP_D_R6T6_MASK UART0_D_R6T6_MASK
   --  unsupported macro: UARTLP_D_R6T6_SHIFT UART0_D_R6T6_SHIFT
   --  unsupported macro: UARTLP_D_R7T7_MASK UART0_D_R7T7_MASK
   --  unsupported macro: UARTLP_D_R7T7_SHIFT UART0_D_R7T7_SHIFT
   --  unsupported macro: UARTLP_MA1_MA_MASK UART0_MA1_MA_MASK
   --  unsupported macro: UARTLP_MA1_MA_SHIFT UART0_MA1_MA_SHIFT
   --  arg-macro: procedure UARTLP_MA1_MA (x)
   --    UART0_MA1_MA(x)
   --  unsupported macro: UARTLP_MA2_MA_MASK UART0_MA2_MA_MASK
   --  unsupported macro: UARTLP_MA2_MA_SHIFT UART0_MA2_MA_SHIFT
   --  arg-macro: procedure UARTLP_MA2_MA (x)
   --    UART0_MA2_MA(x)
   --  unsupported macro: UARTLP_C4_OSR_MASK UART0_C4_OSR_MASK
   --  unsupported macro: UARTLP_C4_OSR_SHIFT UART0_C4_OSR_SHIFT
   --  arg-macro: procedure UARTLP_C4_OSR (x)
   --    UART0_C4_OSR(x)
   --  unsupported macro: UARTLP_C4_M10_MASK UART0_C4_M10_MASK
   --  unsupported macro: UARTLP_C4_M10_SHIFT UART0_C4_M10_SHIFT
   --  unsupported macro: UARTLP_C4_MAEN2_MASK UART0_C4_MAEN2_MASK
   --  unsupported macro: UARTLP_C4_MAEN2_SHIFT UART0_C4_MAEN2_SHIFT
   --  unsupported macro: UARTLP_C4_MAEN1_MASK UART0_C4_MAEN1_MASK
   --  unsupported macro: UARTLP_C4_MAEN1_SHIFT UART0_C4_MAEN1_SHIFT
   --  unsupported macro: UARTLP_C5_RESYNCDIS_MASK UART0_C5_RESYNCDIS_MASK
   --  unsupported macro: UARTLP_C5_RESYNCDIS_SHIFT UART0_C5_RESYNCDIS_SHIFT
   --  unsupported macro: UARTLP_C5_BOTHEDGE_MASK UART0_C5_BOTHEDGE_MASK
   --  unsupported macro: UARTLP_C5_BOTHEDGE_SHIFT UART0_C5_BOTHEDGE_SHIFT
   --  unsupported macro: UARTLP_C5_RDMAE_MASK UART0_C5_RDMAE_MASK
   --  unsupported macro: UARTLP_C5_RDMAE_SHIFT UART0_C5_RDMAE_SHIFT
   --  unsupported macro: UARTLP_C5_TDMAE_MASK UART0_C5_TDMAE_MASK
   --  unsupported macro: UARTLP_C5_TDMAE_SHIFT UART0_C5_TDMAE_SHIFT
   --  unsupported macro: NV_FOPT_EZPORT_DIS_MASK This_symbol_has_been_deprecated
   --  unsupported macro: NV_FOPT_EZPORT_DIS_SHIFT This_symbol_has_been_deprecated
   --  unsupported macro: FPTA_BASE FGPIOA_BASE
   --  unsupported macro: FPTA FGPIOA
   --  unsupported macro: FPTB_BASE FGPIOB_BASE
   --  unsupported macro: FPTB FGPIOB
   --  unsupported macro: FPTC_BASE FGPIOC_BASE
   --  unsupported macro: FPTC FGPIOC
   --  unsupported macro: FPTD_BASE FGPIOD_BASE
   --  unsupported macro: FPTD FGPIOD
   --  unsupported macro: FPTE_BASE FGPIOE_BASE
   --  unsupported macro: FPTE FGPIOE
   --  unsupported macro: PTA_BASE GPIOA_BASE
   --  unsupported macro: PTA GPIOA
   --  unsupported macro: PTB_BASE GPIOB_BASE
   --  unsupported macro: PTB GPIOB
   --  unsupported macro: PTC_BASE GPIOC_BASE
   --  unsupported macro: PTC GPIOC
   --  unsupported macro: PTD_BASE GPIOD_BASE
   --  unsupported macro: PTD GPIOD
   --  unsupported macro: PTE_BASE GPIOE_BASE
   --  unsupported macro: PTE GPIOE
   --  unsupported macro: LPTimer_IRQn LPTMR0_IRQn
   --  unsupported macro: LPTimer_IRQHandler LPTMR0_IRQHandler
   --  unsupported macro: LLW_IRQn LLWU_IRQn
   --  unsupported macro: LLW_IRQHandler LLWU_IRQHandler

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
  --**         CMSIS Peripheral Access Layer for MKL25Z4
  --**
  --**     Copyright (c) 1997 - 2016 Freescale Semiconductor, Inc.
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
  -- * @file MKL25Z4.h
  -- * @version 2.5
  -- * @date 2015-02-19
  -- * @brief CMSIS Peripheral Access Layer for MKL25Z4
  -- *
  -- * CMSIS Peripheral Access Layer for MKL25Z4
  --  

  --* Memory map major version (memory maps with equal major version number are
  -- * compatible)  

  --* Memory map minor version  
  -- ----------------------------------------------------------------------------
  --   -- Interrupt vector numbers
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup Interrupt_vector_numbers Interrupt vector numbers
  -- * @{
  --  

  --* Interrupt Number Definitions  
   subtype IRQn is int;
   IRQn_NotAvail_IRQn : constant IRQn := -128;
   IRQn_NonMaskableInt_IRQn : constant IRQn := -14;
   IRQn_HardFault_IRQn : constant IRQn := -13;
   IRQn_SVCall_IRQn : constant IRQn := -5;
   IRQn_PendSV_IRQn : constant IRQn := -2;
   IRQn_SysTick_IRQn : constant IRQn := -1;
   IRQn_DMA0_IRQn : constant IRQn := 0;
   IRQn_DMA1_IRQn : constant IRQn := 1;
   IRQn_DMA2_IRQn : constant IRQn := 2;
   IRQn_DMA3_IRQn : constant IRQn := 3;
   IRQn_Reserved20_IRQn : constant IRQn := 4;
   IRQn_FTFA_IRQn : constant IRQn := 5;
   IRQn_LVD_LVW_IRQn : constant IRQn := 6;
   IRQn_LLWU_IRQn : constant IRQn := 7;
   IRQn_I2C0_IRQn : constant IRQn := 8;
   IRQn_I2C1_IRQn : constant IRQn := 9;
   IRQn_SPI0_IRQn : constant IRQn := 10;
   IRQn_SPI1_IRQn : constant IRQn := 11;
   IRQn_UART0_IRQn : constant IRQn := 12;
   IRQn_UART1_IRQn : constant IRQn := 13;
   IRQn_UART2_IRQn : constant IRQn := 14;
   IRQn_ADC0_IRQn : constant IRQn := 15;
   IRQn_CMP0_IRQn : constant IRQn := 16;
   IRQn_TPM0_IRQn : constant IRQn := 17;
   IRQn_TPM1_IRQn : constant IRQn := 18;
   IRQn_TPM2_IRQn : constant IRQn := 19;
   IRQn_RTC_IRQn : constant IRQn := 20;
   IRQn_RTC_Seconds_IRQn : constant IRQn := 21;
   IRQn_PIT_IRQn : constant IRQn := 22;
   IRQn_Reserved39_IRQn : constant IRQn := 23;
   IRQn_USB0_IRQn : constant IRQn := 24;
   IRQn_DAC0_IRQn : constant IRQn := 25;
   IRQn_TSI0_IRQn : constant IRQn := 26;
   IRQn_MCG_IRQn : constant IRQn := 27;
   IRQn_LPTMR0_IRQn : constant IRQn := 28;
   IRQn_Reserved45_IRQn : constant IRQn := 29;
   IRQn_PORTA_IRQn : constant IRQn := 30;
   IRQn_PORTD_IRQn : constant IRQn := 31;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:124

  -- Auxiliary constants  
  --*< Not available device specific interrupt  
  -- Core interrupts  
  --*< Non Maskable Interrupt  
  --*< Cortex-M0 SV Hard Fault Interrupt  
  --*< Cortex-M0 SV Call Interrupt  
  --*< Cortex-M0 Pend SV Interrupt  
  --*< Cortex-M0 System Tick Interrupt  
  -- Device specific interrupts  
  --*< DMA channel 0 transfer complete  
  --*< DMA channel 1 transfer complete  
  --*< DMA channel 2 transfer complete  
  --*< DMA channel 3 transfer complete  
  --*< Reserved interrupt  
  --*< Command complete and read collision  
  --*< Low-voltage detect, low-voltage warning  
  --*< Low leakage wakeup Unit  
  --*< I2C0 interrupt  
  --*< I2C1 interrupt  
  --*< SPI0 single interrupt vector for all sources  
  --*< SPI1 single interrupt vector for all sources  
  --*< UART0 status and error  
  --*< UART1 status and error  
  --*< UART2 status and error  
  --*< ADC0 interrupt  
  --*< CMP0 interrupt  
  --*< TPM0 single interrupt vector for all sources  
  --*< TPM1 single interrupt vector for all sources  
  --*< TPM2 single interrupt vector for all sources  
  --*< RTC alarm  
  --*< RTC seconds  
  --*< PIT interrupt  
  --*< Reserved interrupt  
  --*< USB0 interrupt  
  --*< DAC0 interrupt  
  --*< TSI0 interrupt  
  --*< MCG interrupt  
  --*< LPTMR0 interrupt  
  --*< Reserved interrupt  
  --*< PORTA Pin detect  
  --*< PORTD Pin detect  
   subtype IRQn_Type is IRQn;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:168

  --!
  -- * @}
  --  

  -- end of group Interrupt_vector_numbers  
  -- ----------------------------------------------------------------------------
  --   -- Cortex M0 Core Configuration
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup Cortex_Core_Configuration Cortex M0 Core Configuration
  -- * @{
  --  

  -- Core Peripheral Access Layer  
  -- Device specific configuration file  
  --!
  -- * @}
  --  

  -- end of group Cortex_Core_Configuration  
  -- ----------------------------------------------------------------------------
  --   -- Mapping Information
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup Mapping_Information Mapping Information
  -- * @{
  --  

  --* Mapping Information  
  --!
  -- * @addtogroup edma_request
  -- * @{
  --  

  --******************************************************************************
  -- * Definitions
  -- ***************************************************************************** 

  --!
  -- * @brief Structure for the DMA hardware request
  -- *
  -- * Defines the structure for the DMA hardware request collections. The user can configure the
  -- * hardware request into DMAMUX to trigger the DMA transfer accordingly. The index
  -- * of the hardware request varies according  to the to SoC.
  --  

   subtype u_dma_request_source is unsigned;
   u_dma_request_source_kDmaRequestMux0Disable : constant u_dma_request_source := 256;
   u_dma_request_source_kDmaRequestMux0Reserved1 : constant u_dma_request_source := 257;
   u_dma_request_source_kDmaRequestMux0UART0Rx : constant u_dma_request_source := 258;
   u_dma_request_source_kDmaRequestMux0LPSCI0Rx : constant u_dma_request_source := 258;
   u_dma_request_source_kDmaRequestMux0UART0Tx : constant u_dma_request_source := 259;
   u_dma_request_source_kDmaRequestMux0LPSCI0Tx : constant u_dma_request_source := 259;
   u_dma_request_source_kDmaRequestMux0UART1Rx : constant u_dma_request_source := 260;
   u_dma_request_source_kDmaRequestMux0UART1Tx : constant u_dma_request_source := 261;
   u_dma_request_source_kDmaRequestMux0UART2Rx : constant u_dma_request_source := 262;
   u_dma_request_source_kDmaRequestMux0UART2Tx : constant u_dma_request_source := 263;
   u_dma_request_source_kDmaRequestMux0Reserved8 : constant u_dma_request_source := 264;
   u_dma_request_source_kDmaRequestMux0Reserved9 : constant u_dma_request_source := 265;
   u_dma_request_source_kDmaRequestMux0Reserved10 : constant u_dma_request_source := 266;
   u_dma_request_source_kDmaRequestMux0Reserved11 : constant u_dma_request_source := 267;
   u_dma_request_source_kDmaRequestMux0Reserved12 : constant u_dma_request_source := 268;
   u_dma_request_source_kDmaRequestMux0Reserved13 : constant u_dma_request_source := 269;
   u_dma_request_source_kDmaRequestMux0Reserved14 : constant u_dma_request_source := 270;
   u_dma_request_source_kDmaRequestMux0Reserved15 : constant u_dma_request_source := 271;
   u_dma_request_source_kDmaRequestMux0SPI0Rx : constant u_dma_request_source := 272;
   u_dma_request_source_kDmaRequestMux0SPI0Tx : constant u_dma_request_source := 273;
   u_dma_request_source_kDmaRequestMux0SPI1Rx : constant u_dma_request_source := 274;
   u_dma_request_source_kDmaRequestMux0SPI1Tx : constant u_dma_request_source := 275;
   u_dma_request_source_kDmaRequestMux0Reserved20 : constant u_dma_request_source := 276;
   u_dma_request_source_kDmaRequestMux0Reserved21 : constant u_dma_request_source := 277;
   u_dma_request_source_kDmaRequestMux0I2C0 : constant u_dma_request_source := 278;
   u_dma_request_source_kDmaRequestMux0I2C1 : constant u_dma_request_source := 279;
   u_dma_request_source_kDmaRequestMux0TPM0Channel0 : constant u_dma_request_source := 280;
   u_dma_request_source_kDmaRequestMux0TPM0Channel1 : constant u_dma_request_source := 281;
   u_dma_request_source_kDmaRequestMux0TPM0Channel2 : constant u_dma_request_source := 282;
   u_dma_request_source_kDmaRequestMux0TPM0Channel3 : constant u_dma_request_source := 283;
   u_dma_request_source_kDmaRequestMux0TPM0Channel4 : constant u_dma_request_source := 284;
   u_dma_request_source_kDmaRequestMux0TPM0Channel5 : constant u_dma_request_source := 285;
   u_dma_request_source_kDmaRequestMux0Reserved30 : constant u_dma_request_source := 286;
   u_dma_request_source_kDmaRequestMux0Reserved31 : constant u_dma_request_source := 287;
   u_dma_request_source_kDmaRequestMux0TPM1Channel0 : constant u_dma_request_source := 288;
   u_dma_request_source_kDmaRequestMux0TPM1Channel1 : constant u_dma_request_source := 289;
   u_dma_request_source_kDmaRequestMux0TPM2Channel0 : constant u_dma_request_source := 290;
   u_dma_request_source_kDmaRequestMux0TPM2Channel1 : constant u_dma_request_source := 291;
   u_dma_request_source_kDmaRequestMux0Reserved36 : constant u_dma_request_source := 292;
   u_dma_request_source_kDmaRequestMux0Reserved37 : constant u_dma_request_source := 293;
   u_dma_request_source_kDmaRequestMux0Reserved38 : constant u_dma_request_source := 294;
   u_dma_request_source_kDmaRequestMux0Reserved39 : constant u_dma_request_source := 295;
   u_dma_request_source_kDmaRequestMux0ADC0 : constant u_dma_request_source := 296;
   u_dma_request_source_kDmaRequestMux0Reserved41 : constant u_dma_request_source := 297;
   u_dma_request_source_kDmaRequestMux0CMP0 : constant u_dma_request_source := 298;
   u_dma_request_source_kDmaRequestMux0Reserved43 : constant u_dma_request_source := 299;
   u_dma_request_source_kDmaRequestMux0Reserved44 : constant u_dma_request_source := 300;
   u_dma_request_source_kDmaRequestMux0DAC0 : constant u_dma_request_source := 301;
   u_dma_request_source_kDmaRequestMux0Reserved46 : constant u_dma_request_source := 302;
   u_dma_request_source_kDmaRequestMux0Reserved47 : constant u_dma_request_source := 303;
   u_dma_request_source_kDmaRequestMux0Reserved48 : constant u_dma_request_source := 304;
   u_dma_request_source_kDmaRequestMux0PortA : constant u_dma_request_source := 305;
   u_dma_request_source_kDmaRequestMux0Reserved50 : constant u_dma_request_source := 306;
   u_dma_request_source_kDmaRequestMux0Reserved51 : constant u_dma_request_source := 307;
   u_dma_request_source_kDmaRequestMux0PortD : constant u_dma_request_source := 308;
   u_dma_request_source_kDmaRequestMux0Reserved53 : constant u_dma_request_source := 309;
   u_dma_request_source_kDmaRequestMux0TPM0Overflow : constant u_dma_request_source := 310;
   u_dma_request_source_kDmaRequestMux0TPM1Overflow : constant u_dma_request_source := 311;
   u_dma_request_source_kDmaRequestMux0TPM2Overflow : constant u_dma_request_source := 312;
   u_dma_request_source_kDmaRequestMux0TSI0 : constant u_dma_request_source := 313;
   u_dma_request_source_kDmaRequestMux0Reserved58 : constant u_dma_request_source := 314;
   u_dma_request_source_kDmaRequestMux0Reserved59 : constant u_dma_request_source := 315;
   u_dma_request_source_kDmaRequestMux0AlwaysOn60 : constant u_dma_request_source := 316;
   u_dma_request_source_kDmaRequestMux0AlwaysOn61 : constant u_dma_request_source := 317;
   u_dma_request_source_kDmaRequestMux0AlwaysOn62 : constant u_dma_request_source := 318;
   u_dma_request_source_kDmaRequestMux0AlwaysOn63 : constant u_dma_request_source := 319;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:224

  --*< DMAMUX TriggerDisabled.  
  --*< Reserved1  
  --*< UART0 Receive.  
  --*< UART0 Receive.  
  --*< UART0 Transmit.  
  --*< UART0 Transmit.  
  --*< UART1 Receive.  
  --*< UART1 Transmit.  
  --*< UART2 Receive.  
  --*< UART2 Transmit.  
  --*< Reserved8  
  --*< Reserved9  
  --*< Reserved10  
  --*< Reserved11  
  --*< Reserved12  
  --*< Reserved13  
  --*< Reserved14  
  --*< Reserved15  
  --*< SPI0 Receive.  
  --*< SPI0 Transmit.  
  --*< SPI1 Receive.  
  --*< SPI1 Transmit.  
  --*< Reserved20  
  --*< Reserved21  
  --*< I2C0.  
  --*< I2C1.  
  --*< TPM0 C0V.  
  --*< TPM0 C1V.  
  --*< TPM0 C2V.  
  --*< TPM0 C3V.  
  --*< TPM0 C4V.  
  --*< TPM0 C5V.  
  --*< Reserved30  
  --*< Reserved31  
  --*< TPM1 C0V.  
  --*< TPM1 C1V.  
  --*< TPM2 C0V.  
  --*< TPM2 C1V.  
  --*< Reserved36  
  --*< Reserved37  
  --*< Reserved38  
  --*< Reserved39  
  --*< ADC0.  
  --*< Reserved41  
  --*< CMP0.  
  --*< Reserved43  
  --*< Reserved44  
  --*< DAC0.  
  --*< Reserved46  
  --*< Reserved47  
  --*< Reserved48  
  --*< PTA.  
  --*< Reserved50  
  --*< Reserved51  
  --*< PTD.  
  --*< Reserved53  
  --*< TPM0.  
  --*< TPM1.  
  --*< TPM2.  
  --*< TSI0.  
  --*< Reserved58  
  --*< Reserved59  
  --*< DMAMUX Always Enabled slot.  
  --*< DMAMUX Always Enabled slot.  
  --*< DMAMUX Always Enabled slot.  
  --*< DMAMUX Always Enabled slot.  
   subtype dma_request_source_t is u_dma_request_source;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:292

  -- @}  
  --!
  -- * @}
  --  

  -- end of group Mapping_Information  
  -- ----------------------------------------------------------------------------
  --   -- Device Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup Peripheral_access_layer Device Peripheral Access Layer
  -- * @{
  --  

  --** Start of section using anonymous unions
  -- 

  -- anonymous unions are enabled by default  
  -- ----------------------------------------------------------------------------
  --   -- ADC Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup ADC_Peripheral_Access_Layer ADC Peripheral Access Layer
  -- * @{
  --  

  --* ADC - Register Layout Typedef  
  --*< ADC Status and Control Registers 1, array offset: 0x0, array step: 0x4  
  --*< ADC Configuration Register 1, offset: 0x8  
  --*< ADC Configuration Register 2, offset: 0xC  
  --*< ADC Data Result Register, array offset: 0x10, array step: 0x4  
  --*< Compare Value Registers, offset: 0x18  
  --*< Compare Value Registers, offset: 0x1C  
  --*< Status and Control Register 2, offset: 0x20  
  --*< Status and Control Register 3, offset: 0x24  
  --*< ADC Offset Correction Register, offset: 0x28  
  --*< ADC Plus-Side Gain Register, offset: 0x2C  
  --*< ADC Minus-Side Gain Register, offset: 0x30  
  --*< ADC Plus-Side General Calibration Value Register, offset: 0x34  
  --*< ADC Plus-Side General Calibration Value Register, offset: 0x38  
  --*< ADC Plus-Side General Calibration Value Register, offset: 0x3C  
  --*< ADC Plus-Side General Calibration Value Register, offset: 0x40  
  --*< ADC Plus-Side General Calibration Value Register, offset: 0x44  
  --*< ADC Plus-Side General Calibration Value Register, offset: 0x48  
  --*< ADC Plus-Side General Calibration Value Register, offset: 0x4C  
  --*< ADC Minus-Side General Calibration Value Register, offset: 0x54  
  --*< ADC Minus-Side General Calibration Value Register, offset: 0x58  
  --*< ADC Minus-Side General Calibration Value Register, offset: 0x5C  
  --*< ADC Minus-Side General Calibration Value Register, offset: 0x60  
  --*< ADC Minus-Side General Calibration Value Register, offset: 0x64  
  --*< ADC Minus-Side General Calibration Value Register, offset: 0x68  
  --*< ADC Minus-Side General Calibration Value Register, offset: 0x6C  
   type anon_array1841 is array (0 .. 1) of aliased sys_ustdint_h.uint32_t;
   type anon_array1869 is array (0 .. 1) of aliased sys_ustdint_h.uint32_t;
   type anon_array1031 is array (0 .. 3) of aliased sys_ustdint_h.uint8_t;
   type ADC_Type is record
      SC1 : aliased anon_array1841;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:341
      CFG1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:342
      CFG2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:343
      R : aliased anon_array1869;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:344
      CV1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:345
      CV2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:346
      SC2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:347
      SC3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:348
      OFS : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:349
      PG : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:350
      MG : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:351
      CLPD : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:352
      CLPS : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:353
      CLP4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:354
      CLP3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:355
      CLP2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:356
      CLP1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:357
      CLP0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:358
      RESERVED_0 : aliased anon_array1031;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:359
      CLMD : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:360
      CLMS : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:361
      CLM4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:362
      CLM3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:363
      CLM2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:364
      CLM1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:365
      CLM0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:366
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:367

  -- ----------------------------------------------------------------------------
  --   -- ADC Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup ADC_Register_Masks ADC Register Masks
  -- * @{
  --  

  --! @name SC1 - ADC Status and Control Registers 1  
  -- The count of ADC_SC1  
  --! @name CFG1 - ADC Configuration Register 1  
  --! @name CFG2 - ADC Configuration Register 2  
  --! @name R - ADC Data Result Register  
  -- The count of ADC_R  
  --! @name CV1 - Compare Value Registers  
  --! @name CV2 - Compare Value Registers  
  --! @name SC2 - Status and Control Register 2  
  --! @name SC3 - Status and Control Register 3  
  --! @name OFS - ADC Offset Correction Register  
  --! @name PG - ADC Plus-Side Gain Register  
  --! @name MG - ADC Minus-Side Gain Register  
  --! @name CLPD - ADC Plus-Side General Calibration Value Register  
  --! @name CLPS - ADC Plus-Side General Calibration Value Register  
  --! @name CLP4 - ADC Plus-Side General Calibration Value Register  
  --! @name CLP3 - ADC Plus-Side General Calibration Value Register  
  --! @name CLP2 - ADC Plus-Side General Calibration Value Register  
  --! @name CLP1 - ADC Plus-Side General Calibration Value Register  
  --! @name CLP0 - ADC Plus-Side General Calibration Value Register  
  --! @name CLMD - ADC Minus-Side General Calibration Value Register  
  --! @name CLMS - ADC Minus-Side General Calibration Value Register  
  --! @name CLM4 - ADC Minus-Side General Calibration Value Register  
  --! @name CLM3 - ADC Minus-Side General Calibration Value Register  
  --! @name CLM2 - ADC Minus-Side General Calibration Value Register  
  --! @name CLM1 - ADC Minus-Side General Calibration Value Register  
  --! @name CLM0 - ADC Minus-Side General Calibration Value Register  
  --!
  -- * @}
  --  

  -- end of group ADC_Register_Masks  
  -- ADC - Peripheral instance base addresses  
  --* Peripheral ADC0 base address  
  --* Peripheral ADC0 base pointer  
  --* Array initializer of ADC peripheral base addresses  
  --* Array initializer of ADC peripheral base pointers  
  --* Interrupt vectors for the ADC peripheral type  
  --!
  -- * @}
  --  

  -- end of group ADC_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- CMP Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup CMP_Peripheral_Access_Layer CMP Peripheral Access Layer
  -- * @{
  --  

  --* CMP - Register Layout Typedef  
  --*< CMP Control Register 0, offset: 0x0  
  --*< CMP Control Register 1, offset: 0x1  
  --*< CMP Filter Period Register, offset: 0x2  
  --*< CMP Status and Control Register, offset: 0x3  
  --*< DAC Control Register, offset: 0x4  
  --*< MUX Control Register, offset: 0x5  
   type CMP_Type is record
      CR0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:603
      CR1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:604
      FPR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:605
      SCR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:606
      DACCR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:607
      MUXCR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:608
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:609

  -- ----------------------------------------------------------------------------
  --   -- CMP Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup CMP_Register_Masks CMP Register Masks
  -- * @{
  --  

  --! @name CR0 - CMP Control Register 0  
  --! @name CR1 - CMP Control Register 1  
  --! @name FPR - CMP Filter Period Register  
  --! @name SCR - CMP Status and Control Register  
  --! @name DACCR - DAC Control Register  
  --! @name MUXCR - MUX Control Register  
  --!
  -- * @}
  --  

  -- end of group CMP_Register_Masks  
  -- CMP - Peripheral instance base addresses  
  --* Peripheral CMP0 base address  
  --* Peripheral CMP0 base pointer  
  --* Array initializer of CMP peripheral base addresses  
  --* Array initializer of CMP peripheral base pointers  
  --* Interrupt vectors for the CMP peripheral type  
  --!
  -- * @}
  --  

  -- end of group CMP_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- DAC Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup DAC_Peripheral_Access_Layer DAC Peripheral Access Layer
  -- * @{
  --  

  --* DAC - Register Layout Typedef  
  -- offset: 0x0, array step: 0x2  
  --*< DAC Data Low Register, array offset: 0x0, array step: 0x2  
  --*< DAC Data High Register, array offset: 0x1, array step: 0x2  
  --*< DAC Status Register, offset: 0x20  
  --*< DAC Control Register, offset: 0x21  
  --*< DAC Control Register 1, offset: 0x22  
  --*< DAC Control Register 2, offset: 0x23  
   type anon_struct1875 is record
      DATL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:736
      DATH : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:737
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array1876 is array (0 .. 1) of aliased anon_struct1875;
   type anon_array1878 is array (0 .. 27) of aliased sys_ustdint_h.uint8_t;
   type DAC_Type is record
      DAT : aliased anon_array1876;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:738
      RESERVED_0 : aliased anon_array1878;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:739
      SR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:740
      C0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:741
      C1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:742
      C2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:743
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:744

  -- ----------------------------------------------------------------------------
  --   -- DAC Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup DAC_Register_Masks DAC Register Masks
  -- * @{
  --  

  --! @name DATL - DAC Data Low Register  
  -- The count of DAC_DATL  
  --! @name DATH - DAC Data High Register  
  -- The count of DAC_DATH  
  --! @name SR - DAC Status Register  
  --! @name C0 - DAC Control Register  
  --! @name C1 - DAC Control Register 1  
  --! @name C2 - DAC Control Register 2  
  --!
  -- * @}
  --  

  -- end of group DAC_Register_Masks  
  -- DAC - Peripheral instance base addresses  
  --* Peripheral DAC0 base address  
  --* Peripheral DAC0 base pointer  
  --* Array initializer of DAC peripheral base addresses  
  --* Array initializer of DAC peripheral base pointers  
  --* Interrupt vectors for the DAC peripheral type  
  --!
  -- * @}
  --  

  -- end of group DAC_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- DMA Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup DMA_Peripheral_Access_Layer DMA Peripheral Access Layer
  -- * @{
  --  

  --* DMA - Register Layout Typedef  
  -- offset: 0x100, array step: 0x10  
  --*< Source Address Register, array offset: 0x100, array step: 0x10  
  --*< Destination Address Register, array offset: 0x104, array step: 0x10  
  -- offset: 0x108, array step: 0x10  
  --*< DMA Status Register / Byte Count Register, array offset: 0x108, array step: 0x10  
  -- offset: 0x108, array step: 0x10  
  --*< DMA_DSR0 register...DMA_DSR3 register., array offset: 0x10B, array step: 0x10  
  --*< DMA Control Register, array offset: 0x10C, array step: 0x10  
   type anon_array1883 is array (0 .. 255) of aliased sys_ustdint_h.uint8_t;
   type anon_array1888 is array (0 .. 2) of aliased sys_ustdint_h.uint8_t;
   type anon_struct1887 is record
      RESERVED_0 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:862
      DSR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:863
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union1886 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            DSR_BCR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:860
         when others =>
            DMA_DSR_ACCESS8BIT : aliased anon_struct1887;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:864
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type anon_struct1885 is record
      SAR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:857
      DAR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:858
      anon6815 : aliased anon_union1886;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:865
      DCR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:866
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array1890 is array (0 .. 3) of aliased anon_struct1885;
   type DMA_Type is record
      RESERVED_0 : aliased anon_array1883;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:855
      DMA : aliased anon_array1890;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:867
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:868

  -- ----------------------------------------------------------------------------
  --   -- DMA Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup DMA_Register_Masks DMA Register Masks
  -- * @{
  --  

  --! @name SAR - Source Address Register  
  -- The count of DMA_SAR  
  --! @name DAR - Destination Address Register  
  -- The count of DMA_DAR  
  --! @name DSR_BCR - DMA Status Register / Byte Count Register  
  -- The count of DMA_DSR_BCR  
  -- The count of DMA_DSR  
  --! @name DCR - DMA Control Register  
  -- The count of DMA_DCR  
  --!
  -- * @}
  --  

  -- end of group DMA_Register_Masks  
  -- DMA - Peripheral instance base addresses  
  --* Peripheral DMA base address  
  --* Peripheral DMA base pointer  
  --* Array initializer of DMA peripheral base addresses  
  --* Array initializer of DMA peripheral base pointers  
  --* Interrupt vectors for the DMA peripheral type  
  --!
  -- * @}
  --  

  -- end of group DMA_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- DMAMUX Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup DMAMUX_Peripheral_Access_Layer DMAMUX Peripheral Access Layer
  -- * @{
  --  

  --* DMAMUX - Register Layout Typedef  
  --*< Channel Configuration register, array offset: 0x0, array step: 0x1  
   type anon_array1893 is array (0 .. 3) of aliased sys_ustdint_h.uint8_t;
   type DMAMUX_Type is record
      CHCFG : aliased anon_array1893;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1011
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1012

  -- ----------------------------------------------------------------------------
  --   -- DMAMUX Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup DMAMUX_Register_Masks DMAMUX Register Masks
  -- * @{
  --  

  --! @name CHCFG - Channel Configuration register  
  -- The count of DMAMUX_CHCFG  
  --!
  -- * @}
  --  

  -- end of group DMAMUX_Register_Masks  
  -- DMAMUX - Peripheral instance base addresses  
  --* Peripheral DMAMUX0 base address  
  --* Peripheral DMAMUX0 base pointer  
  --* Array initializer of DMAMUX peripheral base addresses  
  --* Array initializer of DMAMUX peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group DMAMUX_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- FGPIO Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup FGPIO_Peripheral_Access_Layer FGPIO Peripheral Access Layer
  -- * @{
  --  

  --* FGPIO - Register Layout Typedef  
  --*< Port Data Output Register, offset: 0x0  
  --*< Port Set Output Register, offset: 0x4  
  --*< Port Clear Output Register, offset: 0x8  
  --*< Port Toggle Output Register, offset: 0xC  
  --*< Port Data Input Register, offset: 0x10  
  --*< Port Data Direction Register, offset: 0x14  
   type FGPIO_Type is record
      PDOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1069
      PSOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1070
      PCOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1071
      PTOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1072
      PDIR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1073
      PDDR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1074
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1075

  -- ----------------------------------------------------------------------------
  --   -- FGPIO Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup FGPIO_Register_Masks FGPIO Register Masks
  -- * @{
  --  

  --! @name PDOR - Port Data Output Register  
  --! @name PSOR - Port Set Output Register  
  --! @name PCOR - Port Clear Output Register  
  --! @name PTOR - Port Toggle Output Register  
  --! @name PDIR - Port Data Input Register  
  --! @name PDDR - Port Data Direction Register  
  --!
  -- * @}
  --  

  -- end of group FGPIO_Register_Masks  
  -- FGPIO - Peripheral instance base addresses  
  --* Peripheral FGPIOA base address  
  --* Peripheral FGPIOA base pointer  
  --* Peripheral FGPIOB base address  
  --* Peripheral FGPIOB base pointer  
  --* Peripheral FGPIOC base address  
  --* Peripheral FGPIOC base pointer  
  --* Peripheral FGPIOD base address  
  --* Peripheral FGPIOD base pointer  
  --* Peripheral FGPIOE base address  
  --* Peripheral FGPIOE base pointer  
  --* Array initializer of FGPIO peripheral base addresses  
  --* Array initializer of FGPIO peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group FGPIO_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- FTFA Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup FTFA_Peripheral_Access_Layer FTFA Peripheral Access Layer
  -- * @{
  --  

  --* FTFA - Register Layout Typedef  
  --*< Flash Status Register, offset: 0x0  
  --*< Flash Configuration Register, offset: 0x1  
  --*< Flash Security Register, offset: 0x2  
  --*< Flash Option Register, offset: 0x3  
  --*< Flash Common Command Object Registers, offset: 0x4  
  --*< Flash Common Command Object Registers, offset: 0x5  
  --*< Flash Common Command Object Registers, offset: 0x6  
  --*< Flash Common Command Object Registers, offset: 0x7  
  --*< Flash Common Command Object Registers, offset: 0x8  
  --*< Flash Common Command Object Registers, offset: 0x9  
  --*< Flash Common Command Object Registers, offset: 0xA  
  --*< Flash Common Command Object Registers, offset: 0xB  
  --*< Flash Common Command Object Registers, offset: 0xC  
  --*< Flash Common Command Object Registers, offset: 0xD  
  --*< Flash Common Command Object Registers, offset: 0xE  
  --*< Flash Common Command Object Registers, offset: 0xF  
  --*< Program Flash Protection Registers, offset: 0x10  
  --*< Program Flash Protection Registers, offset: 0x11  
  --*< Program Flash Protection Registers, offset: 0x12  
  --*< Program Flash Protection Registers, offset: 0x13  
   type FTFA_Type is record
      FSTAT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1164
      FCNFG : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1165
      FSEC : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1166
      FOPT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1167
      FCCOB3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1168
      FCCOB2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1169
      FCCOB1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1170
      FCCOB0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1171
      FCCOB7 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1172
      FCCOB6 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1173
      FCCOB5 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1174
      FCCOB4 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1175
      FCCOBB : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1176
      FCCOBA : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1177
      FCCOB9 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1178
      FCCOB8 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1179
      FPROT3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1180
      FPROT2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1181
      FPROT1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1182
      FPROT0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1183
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1184

  -- ----------------------------------------------------------------------------
  --   -- FTFA Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup FTFA_Register_Masks FTFA Register Masks
  -- * @{
  --  

  --! @name FSTAT - Flash Status Register  
  --! @name FCNFG - Flash Configuration Register  
  --! @name FSEC - Flash Security Register  
  --! @name FOPT - Flash Option Register  
  --! @name FCCOB3 - Flash Common Command Object Registers  
  --! @name FCCOB2 - Flash Common Command Object Registers  
  --! @name FCCOB1 - Flash Common Command Object Registers  
  --! @name FCCOB0 - Flash Common Command Object Registers  
  --! @name FCCOB7 - Flash Common Command Object Registers  
  --! @name FCCOB6 - Flash Common Command Object Registers  
  --! @name FCCOB5 - Flash Common Command Object Registers  
  --! @name FCCOB4 - Flash Common Command Object Registers  
  --! @name FCCOBB - Flash Common Command Object Registers  
  --! @name FCCOBA - Flash Common Command Object Registers  
  --! @name FCCOB9 - Flash Common Command Object Registers  
  --! @name FCCOB8 - Flash Common Command Object Registers  
  --! @name FPROT3 - Program Flash Protection Registers  
  --! @name FPROT2 - Program Flash Protection Registers  
  --! @name FPROT1 - Program Flash Protection Registers  
  --! @name FPROT0 - Program Flash Protection Registers  
  --!
  -- * @}
  --  

  -- end of group FTFA_Register_Masks  
  -- FTFA - Peripheral instance base addresses  
  --* Peripheral FTFA base address  
  --* Peripheral FTFA base pointer  
  --* Array initializer of FTFA peripheral base addresses  
  --* Array initializer of FTFA peripheral base pointers  
  --* Interrupt vectors for the FTFA peripheral type  
  --!
  -- * @}
  --  

  -- end of group FTFA_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- GPIO Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup GPIO_Peripheral_Access_Layer GPIO Peripheral Access Layer
  -- * @{
  --  

  --* GPIO - Register Layout Typedef  
  --*< Port Data Output Register, offset: 0x0  
  --*< Port Set Output Register, offset: 0x4  
  --*< Port Clear Output Register, offset: 0x8  
  --*< Port Toggle Output Register, offset: 0xC  
  --*< Port Data Input Register, offset: 0x10  
  --*< Port Data Direction Register, offset: 0x14  
   type GPIO_Type is record
      PDOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1359
      PSOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1360
      PCOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1361
      PTOR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1362
      PDIR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1363
      PDDR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1364
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1365

  -- ----------------------------------------------------------------------------
  --   -- GPIO Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup GPIO_Register_Masks GPIO Register Masks
  -- * @{
  --  

  --! @name PDOR - Port Data Output Register  
  --! @name PSOR - Port Set Output Register  
  --! @name PCOR - Port Clear Output Register  
  --! @name PTOR - Port Toggle Output Register  
  --! @name PDIR - Port Data Input Register  
  --! @name PDDR - Port Data Direction Register  
  --!
  -- * @}
  --  

  -- end of group GPIO_Register_Masks  
  -- GPIO - Peripheral instance base addresses  
  --* Peripheral GPIOA base address  
  --* Peripheral GPIOA base pointer  
  --* Peripheral GPIOB base address  
  --* Peripheral GPIOB base pointer  
  --* Peripheral GPIOC base address  
  --* Peripheral GPIOC base pointer  
  --* Peripheral GPIOD base address  
  --* Peripheral GPIOD base pointer  
  --* Peripheral GPIOE base address  
  --* Peripheral GPIOE base pointer  
  --* Array initializer of GPIO peripheral base addresses  
  --* Array initializer of GPIO peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group GPIO_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- I2C Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup I2C_Peripheral_Access_Layer I2C Peripheral Access Layer
  -- * @{
  --  

  --* I2C - Register Layout Typedef  
  --*< I2C Address Register 1, offset: 0x0  
  --*< I2C Frequency Divider register, offset: 0x1  
  --*< I2C Control Register 1, offset: 0x2  
  --*< I2C Status register, offset: 0x3  
  --*< I2C Data I/O register, offset: 0x4  
  --*< I2C Control Register 2, offset: 0x5  
  --*< I2C Programmable Input Glitch Filter register, offset: 0x6  
  --*< I2C Range Address register, offset: 0x7  
  --*< I2C SMBus Control and Status register, offset: 0x8  
  --*< I2C Address Register 2, offset: 0x9  
  --*< I2C SCL Low Timeout Register High, offset: 0xA  
  --*< I2C SCL Low Timeout Register Low, offset: 0xB  
   type I2C_Type is record
      A1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1454
      F : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1455
      C1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1456
      S : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1457
      D : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1458
      C2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1459
      FLT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1460
      RA : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1461
      SMB : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1462
      A2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1463
      SLTH : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1464
      SLTL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1465
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1466

  -- ----------------------------------------------------------------------------
  --   -- I2C Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup I2C_Register_Masks I2C Register Masks
  -- * @{
  --  

  --! @name A1 - I2C Address Register 1  
  --! @name F - I2C Frequency Divider register  
  --! @name C1 - I2C Control Register 1  
  --! @name S - I2C Status register  
  --! @name D - I2C Data I/O register  
  --! @name C2 - I2C Control Register 2  
  --! @name FLT - I2C Programmable Input Glitch Filter register  
  --! @name RA - I2C Range Address register  
  --! @name SMB - I2C SMBus Control and Status register  
  --! @name A2 - I2C Address Register 2  
  --! @name SLTH - I2C SCL Low Timeout Register High  
  --! @name SLTL - I2C SCL Low Timeout Register Low  
  --!
  -- * @}
  --  

  -- end of group I2C_Register_Masks  
  -- I2C - Peripheral instance base addresses  
  --* Peripheral I2C0 base address  
  --* Peripheral I2C0 base pointer  
  --* Peripheral I2C1 base address  
  --* Peripheral I2C1 base pointer  
  --* Array initializer of I2C peripheral base addresses  
  --* Array initializer of I2C peripheral base pointers  
  --* Interrupt vectors for the I2C peripheral type  
  --!
  -- * @}
  --  

  -- end of group I2C_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- LLWU Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup LLWU_Peripheral_Access_Layer LLWU Peripheral Access Layer
  -- * @{
  --  

  --* LLWU - Register Layout Typedef  
  --*< LLWU Pin Enable 1 register, offset: 0x0  
  --*< LLWU Pin Enable 2 register, offset: 0x1  
  --*< LLWU Pin Enable 3 register, offset: 0x2  
  --*< LLWU Pin Enable 4 register, offset: 0x3  
  --*< LLWU Module Enable register, offset: 0x4  
  --*< LLWU Flag 1 register, offset: 0x5  
  --*< LLWU Flag 2 register, offset: 0x6  
  --*< LLWU Flag 3 register, offset: 0x7  
  --*< LLWU Pin Filter 1 register, offset: 0x8  
  --*< LLWU Pin Filter 2 register, offset: 0x9  
   type LLWU_Type is record
      PE1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1665
      PE2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1666
      PE3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1667
      PE4 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1668
      ME : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1669
      F1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1670
      F2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1671
      F3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1672
      FILT1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1673
      FILT2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1674
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1675

  -- ----------------------------------------------------------------------------
  --   -- LLWU Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup LLWU_Register_Masks LLWU Register Masks
  -- * @{
  --  

  --! @name PE1 - LLWU Pin Enable 1 register  
  --! @name PE2 - LLWU Pin Enable 2 register  
  --! @name PE3 - LLWU Pin Enable 3 register  
  --! @name PE4 - LLWU Pin Enable 4 register  
  --! @name ME - LLWU Module Enable register  
  --! @name F1 - LLWU Flag 1 register  
  --! @name F2 - LLWU Flag 2 register  
  --! @name F3 - LLWU Flag 3 register  
  --! @name FILT1 - LLWU Pin Filter 1 register  
  --! @name FILT2 - LLWU Pin Filter 2 register  
  --!
  -- * @}
  --  

  -- end of group LLWU_Register_Masks  
  -- LLWU - Peripheral instance base addresses  
  --* Peripheral LLWU base address  
  --* Peripheral LLWU base pointer  
  --* Array initializer of LLWU peripheral base addresses  
  --* Array initializer of LLWU peripheral base pointers  
  --* Interrupt vectors for the LLWU peripheral type  
  --!
  -- * @}
  --  

  -- end of group LLWU_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- LPTMR Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup LPTMR_Peripheral_Access_Layer LPTMR Peripheral Access Layer
  -- * @{
  --  

  --* LPTMR - Register Layout Typedef  
  --*< Low Power Timer Control Status Register, offset: 0x0  
  --*< Low Power Timer Prescale Register, offset: 0x4  
  --*< Low Power Timer Compare Register, offset: 0x8  
  --*< Low Power Timer Counter Register, offset: 0xC  
   type LPTMR_Type is record
      CSR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1902
      PSR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1903
      CMR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1904
      CNR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1905
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1906

  -- ----------------------------------------------------------------------------
  --   -- LPTMR Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup LPTMR_Register_Masks LPTMR Register Masks
  -- * @{
  --  

  --! @name CSR - Low Power Timer Control Status Register  
  --! @name PSR - Low Power Timer Prescale Register  
  --! @name CMR - Low Power Timer Compare Register  
  --! @name CNR - Low Power Timer Counter Register  
  --!
  -- * @}
  --  

  -- end of group LPTMR_Register_Masks  
  -- LPTMR - Peripheral instance base addresses  
  --* Peripheral LPTMR0 base address  
  --* Peripheral LPTMR0 base pointer  
  --* Array initializer of LPTMR peripheral base addresses  
  --* Array initializer of LPTMR peripheral base pointers  
  --* Interrupt vectors for the LPTMR peripheral type  
  --!
  -- * @}
  --  

  -- end of group LPTMR_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- MCG Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MCG_Peripheral_Access_Layer MCG Peripheral Access Layer
  -- * @{
  --  

  --* MCG - Register Layout Typedef  
  --*< MCG Control 1 Register, offset: 0x0  
  --*< MCG Control 2 Register, offset: 0x1  
  --*< MCG Control 3 Register, offset: 0x2  
  --*< MCG Control 4 Register, offset: 0x3  
  --*< MCG Control 5 Register, offset: 0x4  
  --*< MCG Control 6 Register, offset: 0x5  
  --*< MCG Status Register, offset: 0x6  
  --*< MCG Status and Control Register, offset: 0x8  
  --*< MCG Auto Trim Compare Value High Register, offset: 0xA  
  --*< MCG Auto Trim Compare Value Low Register, offset: 0xB  
  --*< MCG Control 7 Register, offset: 0xC  
  --*< MCG Control 8 Register, offset: 0xD  
  --*< MCG Control 9 Register, offset: 0xE  
  --*< MCG Control 10 Register, offset: 0xF  
   type anon_array1909 is array (0 .. 0) of aliased sys_ustdint_h.uint8_t;
   type MCG_Type is record
      C1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1995
      C2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1996
      C3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1997
      C4 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1998
      C5 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:1999
      C6 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2000
      S : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2001
      RESERVED_0 : aliased anon_array1909;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2002
      SC : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2003
      RESERVED_1 : aliased anon_array1909;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2004
      ATCVH : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2005
      ATCVL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2006
      C7 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2007
      C8 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2008
      C9 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2009
      C10 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2010
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2011

  -- ----------------------------------------------------------------------------
  --   -- MCG Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MCG_Register_Masks MCG Register Masks
  -- * @{
  --  

  --! @name C1 - MCG Control 1 Register  
  --! @name C2 - MCG Control 2 Register  
  --! @name C3 - MCG Control 3 Register  
  --! @name C4 - MCG Control 4 Register  
  --! @name C5 - MCG Control 5 Register  
  --! @name C6 - MCG Control 6 Register  
  --! @name S - MCG Status Register  
  --! @name SC - MCG Status and Control Register  
  --! @name ATCVH - MCG Auto Trim Compare Value High Register  
  --! @name ATCVL - MCG Auto Trim Compare Value Low Register  
  --! @name C8 - MCG Control 8 Register  
  --!
  -- * @}
  --  

  -- end of group MCG_Register_Masks  
  -- MCG - Peripheral instance base addresses  
  --* Peripheral MCG base address  
  --* Peripheral MCG base pointer  
  --* Array initializer of MCG peripheral base addresses  
  --* Array initializer of MCG peripheral base pointers  
  --* Interrupt vectors for the MCG peripheral type  
  -- MCG C2[EREFS] backward compatibility  
  -- MCG C2[HGO] backward compatibility  
  -- MCG C2[RANGE] backward compatibility  
  --!
  -- * @}
  --  

  -- end of group MCG_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- MCM Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MCM_Peripheral_Access_Layer MCM Peripheral Access Layer
  -- * @{
  --  

  --* MCM - Register Layout Typedef  
  --*< Crossbar Switch (AXBS) Slave Configuration, offset: 0x8  
  --*< Crossbar Switch (AXBS) Master Configuration, offset: 0xA  
  --*< Platform Control Register, offset: 0xC  
  --*< Compute Operation Control Register, offset: 0x40  
   type anon_array1913 is array (0 .. 7) of aliased sys_ustdint_h.uint8_t;
   type anon_array1918 is array (0 .. 47) of aliased sys_ustdint_h.uint8_t;
   type MCM_Type is record
      RESERVED_0 : aliased anon_array1913;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2213
      PLASC : aliased sys_ustdint_h.uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2214
      PLAMC : aliased sys_ustdint_h.uint16_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2215
      PLACR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2216
      RESERVED_1 : aliased anon_array1918;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2217
      CPO : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2218
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2219

  -- ----------------------------------------------------------------------------
  --   -- MCM Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MCM_Register_Masks MCM Register Masks
  -- * @{
  --  

  --! @name PLASC - Crossbar Switch (AXBS) Slave Configuration  
  --! @name PLAMC - Crossbar Switch (AXBS) Master Configuration  
  --! @name PLACR - Platform Control Register  
  --! @name CPO - Compute Operation Control Register  
  --!
  -- * @}
  --  

  -- end of group MCM_Register_Masks  
  -- MCM - Peripheral instance base addresses  
  --* Peripheral MCM base address  
  --* Peripheral MCM base pointer  
  --* Array initializer of MCM peripheral base addresses  
  --* Array initializer of MCM peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group MCM_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- MTB Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MTB_Peripheral_Access_Layer MTB Peripheral Access Layer
  -- * @{
  --  

  --* MTB - Register Layout Typedef  
  --*< MTB Position Register, offset: 0x0  
  --*< MTB Master Register, offset: 0x4  
  --*< MTB Flow Register, offset: 0x8  
  --*< MTB Base Register, offset: 0xC  
  --*< Integration Mode Control Register, offset: 0xF00  
  --*< Claim TAG Set Register, offset: 0xFA0  
  --*< Claim TAG Clear Register, offset: 0xFA4  
  --*< Lock Access Register, offset: 0xFB0  
  --*< Lock Status Register, offset: 0xFB4  
  --*< Authentication Status Register, offset: 0xFB8  
  --*< Device Architecture Register, offset: 0xFBC  
  --*< Device Configuration Register, offset: 0xFC8  
  --*< Device Type Identifier Register, offset: 0xFCC  
  --*< Peripheral ID Register, offset: 0xFD0  
  --*< Peripheral ID Register, offset: 0xFD4  
  --*< Peripheral ID Register, offset: 0xFD8  
  --*< Peripheral ID Register, offset: 0xFDC  
  --*< Peripheral ID Register, offset: 0xFE0  
  --*< Peripheral ID Register, offset: 0xFE4  
  --*< Peripheral ID Register, offset: 0xFE8  
  --*< Peripheral ID Register, offset: 0xFEC  
  --*< Component ID Register, array offset: 0xFF0, array step: 0x4  
   type anon_array1923 is array (0 .. 3823) of aliased sys_ustdint_h.uint8_t;
   type anon_array1926 is array (0 .. 155) of aliased sys_ustdint_h.uint8_t;
   type anon_array1930 is array (0 .. 3) of aliased sys_ustdint_h.uint32_t;
   type MTB_Type is record
      POSITION : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2309
      MASTER : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2310
      FLOW : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2311
      BASE : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2312
      RESERVED_0 : aliased anon_array1923;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2313
      MODECTRL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2314
      RESERVED_1 : aliased anon_array1926;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2315
      TAGSET : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2316
      TAGCLEAR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2317
      RESERVED_2 : aliased anon_array1913;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2318
      LOCKACCESS : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2319
      LOCKSTAT : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2320
      AUTHSTAT : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2321
      DEVICEARCH : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2322
      RESERVED_3 : aliased anon_array1913;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2323
      DEVICECFG : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2324
      DEVICETYPID : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2325
      PERIPHID4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2326
      PERIPHID5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2327
      PERIPHID6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2328
      PERIPHID7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2329
      PERIPHID0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2330
      PERIPHID1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2331
      PERIPHID2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2332
      PERIPHID3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2333
      COMPID : aliased anon_array1930;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2334
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2335

  -- ----------------------------------------------------------------------------
  --   -- MTB Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MTB_Register_Masks MTB Register Masks
  -- * @{
  --  

  --! @name POSITION - MTB Position Register  
  --! @name MASTER - MTB Master Register  
  --! @name FLOW - MTB Flow Register  
  --! @name BASE - MTB Base Register  
  --! @name MODECTRL - Integration Mode Control Register  
  --! @name TAGSET - Claim TAG Set Register  
  --! @name TAGCLEAR - Claim TAG Clear Register  
  --! @name LOCKACCESS - Lock Access Register  
  --! @name LOCKSTAT - Lock Status Register  
  --! @name AUTHSTAT - Authentication Status Register  
  --! @name DEVICEARCH - Device Architecture Register  
  --! @name DEVICECFG - Device Configuration Register  
  --! @name DEVICETYPID - Device Type Identifier Register  
  --! @name PERIPHID4 - Peripheral ID Register  
  --! @name PERIPHID5 - Peripheral ID Register  
  --! @name PERIPHID6 - Peripheral ID Register  
  --! @name PERIPHID7 - Peripheral ID Register  
  --! @name PERIPHID0 - Peripheral ID Register  
  --! @name PERIPHID1 - Peripheral ID Register  
  --! @name PERIPHID2 - Peripheral ID Register  
  --! @name PERIPHID3 - Peripheral ID Register  
  --! @name COMPID - Component ID Register  
  -- The count of MTB_COMPID  
  --!
  -- * @}
  --  

  -- end of group MTB_Register_Masks  
  -- MTB - Peripheral instance base addresses  
  --* Peripheral MTB base address  
  --* Peripheral MTB base pointer  
  --* Array initializer of MTB peripheral base addresses  
  --* Array initializer of MTB peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group MTB_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- MTBDWT Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MTBDWT_Peripheral_Access_Layer MTBDWT Peripheral Access Layer
  -- * @{
  --  

  --* MTBDWT - Register Layout Typedef  
  --*< MTB DWT Control Register, offset: 0x0  
  -- offset: 0x20, array step: 0x10  
  --*< MTB_DWT Comparator Register, array offset: 0x20, array step: 0x10  
  --*< MTB_DWT Comparator Mask Register, array offset: 0x24, array step: 0x10  
  --*< MTB_DWT Comparator Function Register 0..MTB_DWT Comparator Function Register 1, array offset: 0x28, array step: 0x10  
  --*< MTB_DWT Trace Buffer Control Register, offset: 0x200  
  --*< Device Configuration Register, offset: 0xFC8  
  --*< Device Type Identifier Register, offset: 0xFCC  
  --*< Peripheral ID Register, offset: 0xFD0  
  --*< Peripheral ID Register, offset: 0xFD4  
  --*< Peripheral ID Register, offset: 0xFD8  
  --*< Peripheral ID Register, offset: 0xFDC  
  --*< Peripheral ID Register, offset: 0xFE0  
  --*< Peripheral ID Register, offset: 0xFE4  
  --*< Peripheral ID Register, offset: 0xFE8  
  --*< Peripheral ID Register, offset: 0xFEC  
  --*< Component ID Register, array offset: 0xFF0, array step: 0x4  
   type anon_struct1934 is record
      COMP : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2530
      MASK : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2531
      FCT : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2532
      RESERVED_0 : aliased anon_array1031;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2533
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array1935 is array (0 .. 1) of aliased anon_struct1934;
   type anon_array1937 is array (0 .. 447) of aliased sys_ustdint_h.uint8_t;
   type anon_array1940 is array (0 .. 3523) of aliased sys_ustdint_h.uint8_t;
   type MTBDWT_Type is record
      CTRL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2527
      RESERVED_0 : aliased anon_array1878;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2528
      COMPARATOR : aliased anon_array1935;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2534
      RESERVED_1 : aliased anon_array1937;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2535
      TBCTRL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2536
      RESERVED_2 : aliased anon_array1940;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2537
      DEVICECFG : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2538
      DEVICETYPID : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2539
      PERIPHID4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2540
      PERIPHID5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2541
      PERIPHID6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2542
      PERIPHID7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2543
      PERIPHID0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2544
      PERIPHID1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2545
      PERIPHID2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2546
      PERIPHID3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2547
      COMPID : aliased anon_array1930;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2548
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2549

  -- ----------------------------------------------------------------------------
  --   -- MTBDWT Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup MTBDWT_Register_Masks MTBDWT Register Masks
  -- * @{
  --  

  --! @name CTRL - MTB DWT Control Register  
  --! @name COMP - MTB_DWT Comparator Register  
  -- The count of MTBDWT_COMP  
  --! @name MASK - MTB_DWT Comparator Mask Register  
  -- The count of MTBDWT_MASK  
  --! @name FCT - MTB_DWT Comparator Function Register 0..MTB_DWT Comparator Function Register 1  
  -- The count of MTBDWT_FCT  
  --! @name TBCTRL - MTB_DWT Trace Buffer Control Register  
  --! @name DEVICECFG - Device Configuration Register  
  --! @name DEVICETYPID - Device Type Identifier Register  
  --! @name PERIPHID4 - Peripheral ID Register  
  --! @name PERIPHID5 - Peripheral ID Register  
  --! @name PERIPHID6 - Peripheral ID Register  
  --! @name PERIPHID7 - Peripheral ID Register  
  --! @name PERIPHID0 - Peripheral ID Register  
  --! @name PERIPHID1 - Peripheral ID Register  
  --! @name PERIPHID2 - Peripheral ID Register  
  --! @name PERIPHID3 - Peripheral ID Register  
  --! @name COMPID - Component ID Register  
  -- The count of MTBDWT_COMPID  
  --!
  -- * @}
  --  

  -- end of group MTBDWT_Register_Masks  
  -- MTBDWT - Peripheral instance base addresses  
  --* Peripheral MTBDWT base address  
  --* Peripheral MTBDWT base pointer  
  --* Array initializer of MTBDWT peripheral base addresses  
  --* Array initializer of MTBDWT peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group MTBDWT_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- NV Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup NV_Peripheral_Access_Layer NV Peripheral Access Layer
  -- * @{
  --  

  --* NV - Register Layout Typedef  
  --*< Backdoor Comparison Key 3., offset: 0x0  
  --*< Backdoor Comparison Key 2., offset: 0x1  
  --*< Backdoor Comparison Key 1., offset: 0x2  
  --*< Backdoor Comparison Key 0., offset: 0x3  
  --*< Backdoor Comparison Key 7., offset: 0x4  
  --*< Backdoor Comparison Key 6., offset: 0x5  
  --*< Backdoor Comparison Key 5., offset: 0x6  
  --*< Backdoor Comparison Key 4., offset: 0x7  
  --*< Non-volatile P-Flash Protection 1 - Low Register, offset: 0x8  
  --*< Non-volatile P-Flash Protection 1 - High Register, offset: 0x9  
  --*< Non-volatile P-Flash Protection 0 - Low Register, offset: 0xA  
  --*< Non-volatile P-Flash Protection 0 - High Register, offset: 0xB  
  --*< Non-volatile Flash Security Register, offset: 0xC  
  --*< Non-volatile Flash Option Register, offset: 0xD  
   type NV_Type is record
      BACKKEY3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2705
      BACKKEY2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2706
      BACKKEY1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2707
      BACKKEY0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2708
      BACKKEY7 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2709
      BACKKEY6 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2710
      BACKKEY5 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2711
      BACKKEY4 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2712
      FPROT3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2713
      FPROT2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2714
      FPROT1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2715
      FPROT0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2716
      FSEC : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2717
      FOPT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2718
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2719

  -- ----------------------------------------------------------------------------
  --   -- NV Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup NV_Register_Masks NV Register Masks
  -- * @{
  --  

  --! @name BACKKEY3 - Backdoor Comparison Key 3.  
  --! @name BACKKEY2 - Backdoor Comparison Key 2.  
  --! @name BACKKEY1 - Backdoor Comparison Key 1.  
  --! @name BACKKEY0 - Backdoor Comparison Key 0.  
  --! @name BACKKEY7 - Backdoor Comparison Key 7.  
  --! @name BACKKEY6 - Backdoor Comparison Key 6.  
  --! @name BACKKEY5 - Backdoor Comparison Key 5.  
  --! @name BACKKEY4 - Backdoor Comparison Key 4.  
  --! @name FPROT3 - Non-volatile P-Flash Protection 1 - Low Register  
  --! @name FPROT2 - Non-volatile P-Flash Protection 1 - High Register  
  --! @name FPROT1 - Non-volatile P-Flash Protection 0 - Low Register  
  --! @name FPROT0 - Non-volatile P-Flash Protection 0 - High Register  
  --! @name FSEC - Non-volatile Flash Security Register  
  --! @name FOPT - Non-volatile Flash Option Register  
  --!
  -- * @}
  --  

  -- end of group NV_Register_Masks  
  -- NV - Peripheral instance base addresses  
  --* Peripheral FTFA_FlashConfig base address  
  --* Peripheral FTFA_FlashConfig base pointer  
  --* Array initializer of NV peripheral base addresses  
  --* Array initializer of NV peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group NV_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- OSC Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup OSC_Peripheral_Access_Layer OSC Peripheral Access Layer
  -- * @{
  --  

  --* OSC - Register Layout Typedef  
  --*< OSC Control Register, offset: 0x0  
   type OSC_Type is record
      CR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2853
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2854

  -- ----------------------------------------------------------------------------
  --   -- OSC Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup OSC_Register_Masks OSC Register Masks
  -- * @{
  --  

  --! @name CR - OSC Control Register  
  --!
  -- * @}
  --  

  -- end of group OSC_Register_Masks  
  -- OSC - Peripheral instance base addresses  
  --* Peripheral OSC0 base address  
  --* Peripheral OSC0 base pointer  
  --* Array initializer of OSC peripheral base addresses  
  --* Array initializer of OSC peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group OSC_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- PIT Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup PIT_Peripheral_Access_Layer PIT Peripheral Access Layer
  -- * @{
  --  

  --* PIT - Register Layout Typedef  
  --*< PIT Module Control Register, offset: 0x0  
  --*< PIT Upper Lifetime Timer Register, offset: 0xE0  
  --*< PIT Lower Lifetime Timer Register, offset: 0xE4  
  -- offset: 0x100, array step: 0x10  
  --*< Timer Load Value Register, array offset: 0x100, array step: 0x10  
  --*< Current Timer Value Register, array offset: 0x104, array step: 0x10  
  --*< Timer Control Register, array offset: 0x108, array step: 0x10  
  --*< Timer Flag Register, array offset: 0x10C, array step: 0x10  
   type anon_array1949 is array (0 .. 219) of aliased sys_ustdint_h.uint8_t;
   type anon_array1952 is array (0 .. 23) of aliased sys_ustdint_h.uint8_t;
   type anon_struct1954 is record
      LDVAL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2923
      CVAL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2924
      TCTRL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2925
      TFLG : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2926
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array1955 is array (0 .. 1) of aliased anon_struct1954;
   type PIT_Type is record
      MCR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2917
      RESERVED_0 : aliased anon_array1949;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2918
      LTMR64H : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2919
      LTMR64L : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2920
      RESERVED_1 : aliased anon_array1952;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2921
      CHANNEL : aliased anon_array1955;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2927
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:2928

  -- ----------------------------------------------------------------------------
  --   -- PIT Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup PIT_Register_Masks PIT Register Masks
  -- * @{
  --  

  --! @name MCR - PIT Module Control Register  
  --! @name LTMR64H - PIT Upper Lifetime Timer Register  
  --! @name LTMR64L - PIT Lower Lifetime Timer Register  
  --! @name LDVAL - Timer Load Value Register  
  -- The count of PIT_LDVAL  
  --! @name CVAL - Current Timer Value Register  
  -- The count of PIT_CVAL  
  --! @name TCTRL - Timer Control Register  
  -- The count of PIT_TCTRL  
  --! @name TFLG - Timer Flag Register  
  -- The count of PIT_TFLG  
  --!
  -- * @}
  --  

  -- end of group PIT_Register_Masks  
  -- PIT - Peripheral instance base addresses  
  --* Peripheral PIT base address  
  --* Peripheral PIT base pointer  
  --* Array initializer of PIT peripheral base addresses  
  --* Array initializer of PIT peripheral base pointers  
  --* Interrupt vectors for the PIT peripheral type  
  --!
  -- * @}
  --  

  -- end of group PIT_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- PMC Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup PMC_Peripheral_Access_Layer PMC Peripheral Access Layer
  -- * @{
  --  

  --* PMC - Register Layout Typedef  
  --*< Low Voltage Detect Status And Control 1 register, offset: 0x0  
  --*< Low Voltage Detect Status And Control 2 register, offset: 0x1  
  --*< Regulator Status And Control register, offset: 0x2  
   type PMC_Type is record
      LVDSC1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3029
      LVDSC2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3030
      REGSC : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3031
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3032

  -- ----------------------------------------------------------------------------
  --   -- PMC Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup PMC_Register_Masks PMC Register Masks
  -- * @{
  --  

  --! @name LVDSC1 - Low Voltage Detect Status And Control 1 register  
  --! @name LVDSC2 - Low Voltage Detect Status And Control 2 register  
  --! @name REGSC - Regulator Status And Control register  
  --!
  -- * @}
  --  

  -- end of group PMC_Register_Masks  
  -- PMC - Peripheral instance base addresses  
  --* Peripheral PMC base address  
  --* Peripheral PMC base pointer  
  --* Array initializer of PMC peripheral base addresses  
  --* Array initializer of PMC peripheral base pointers  
  --* Interrupt vectors for the PMC peripheral type  
  --!
  -- * @}
  --  

  -- end of group PMC_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- PORT Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup PORT_Peripheral_Access_Layer PORT Peripheral Access Layer
  -- * @{
  --  

  --* PORT - Register Layout Typedef  
  --*< Pin Control Register n, array offset: 0x0, array step: 0x4  
  --*< Global Pin Control Low Register, offset: 0x80  
  --*< Global Pin Control High Register, offset: 0x84  
  --*< Interrupt Status Flag Register, offset: 0xA0  
   type anon_array1963 is array (0 .. 31) of aliased sys_ustdint_h.uint32_t;
   type PORT_Type is record
      PCR : aliased anon_array1963;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3122
      GPCLR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3123
      GPCHR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3124
      RESERVED_0 : aliased anon_array1952;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3125
      ISFR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3126
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3127

  -- ----------------------------------------------------------------------------
  --   -- PORT Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup PORT_Register_Masks PORT Register Masks
  -- * @{
  --  

  --! @name PCR - Pin Control Register n  
  -- The count of PORT_PCR  
  --! @name GPCLR - Global Pin Control Low Register  
  --! @name GPCHR - Global Pin Control High Register  
  --! @name ISFR - Interrupt Status Flag Register  
  --!
  -- * @}
  --  

  -- end of group PORT_Register_Masks  
  -- PORT - Peripheral instance base addresses  
  --* Peripheral PORTA base address  
  --* Peripheral PORTA base pointer  
  --* Peripheral PORTB base address  
  --* Peripheral PORTB base pointer  
  --* Peripheral PORTC base address  
  --* Peripheral PORTC base pointer  
  --* Peripheral PORTD base address  
  --* Peripheral PORTD base pointer  
  --* Peripheral PORTE base address  
  --* Peripheral PORTE base pointer  
  --* Array initializer of PORT peripheral base addresses  
  --* Array initializer of PORT peripheral base pointers  
  --* Interrupt vectors for the PORT peripheral type  
  --!
  -- * @}
  --  

  -- end of group PORT_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- RCM Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup RCM_Peripheral_Access_Layer RCM Peripheral Access Layer
  -- * @{
  --  

  --* RCM - Register Layout Typedef  
  --*< System Reset Status Register 0, offset: 0x0  
  --*< System Reset Status Register 1, offset: 0x1  
  --*< Reset Pin Filter Control register, offset: 0x4  
  --*< Reset Pin Filter Width register, offset: 0x5  
   type anon_array1967 is array (0 .. 1) of aliased sys_ustdint_h.uint8_t;
   type RCM_Type is record
      SRS0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3238
      SRS1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3239
      RESERVED_0 : aliased anon_array1967;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3240
      RPFC : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3241
      RPFW : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3242
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3243

  -- ----------------------------------------------------------------------------
  --   -- RCM Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup RCM_Register_Masks RCM Register Masks
  -- * @{
  --  

  --! @name SRS0 - System Reset Status Register 0  
  --! @name SRS1 - System Reset Status Register 1  
  --! @name RPFC - Reset Pin Filter Control register  
  --! @name RPFW - Reset Pin Filter Width register  
  --!
  -- * @}
  --  

  -- end of group RCM_Register_Masks  
  -- RCM - Peripheral instance base addresses  
  --* Peripheral RCM base address  
  --* Peripheral RCM base pointer  
  --* Array initializer of RCM peripheral base addresses  
  --* Array initializer of RCM peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group RCM_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- ROM Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup ROM_Peripheral_Access_Layer ROM Peripheral Access Layer
  -- * @{
  --  

  --* ROM - Register Layout Typedef  
  --*< Entry, array offset: 0x0, array step: 0x4  
  --*< End of Table Marker Register, offset: 0xC  
  --*< System Access Register, offset: 0xFCC  
  --*< Peripheral ID Register, offset: 0xFD0  
  --*< Peripheral ID Register, offset: 0xFD4  
  --*< Peripheral ID Register, offset: 0xFD8  
  --*< Peripheral ID Register, offset: 0xFDC  
  --*< Peripheral ID Register, offset: 0xFE0  
  --*< Peripheral ID Register, offset: 0xFE4  
  --*< Peripheral ID Register, offset: 0xFE8  
  --*< Peripheral ID Register, offset: 0xFEC  
  --*< Component ID Register, array offset: 0xFF0, array step: 0x4  
   type anon_array1973 is array (0 .. 2) of aliased sys_ustdint_h.uint32_t;
   type anon_array1976 is array (0 .. 4027) of aliased sys_ustdint_h.uint8_t;
   type ROM_Type is record
      c_ENTRY : aliased anon_array1973;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3336
      TABLEMARK : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3337
      RESERVED_0 : aliased anon_array1976;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3338
      SYSACCESS : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3339
      PERIPHID4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3340
      PERIPHID5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3341
      PERIPHID6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3342
      PERIPHID7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3343
      PERIPHID0 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3344
      PERIPHID1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3345
      PERIPHID2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3346
      PERIPHID3 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3347
      COMPID : aliased anon_array1930;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3348
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3349

  -- ----------------------------------------------------------------------------
  --   -- ROM Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup ROM_Register_Masks ROM Register Masks
  -- * @{
  --  

  --! @name ENTRY - Entry  
  -- The count of ROM_ENTRY  
  --! @name TABLEMARK - End of Table Marker Register  
  --! @name SYSACCESS - System Access Register  
  --! @name PERIPHID4 - Peripheral ID Register  
  --! @name PERIPHID5 - Peripheral ID Register  
  --! @name PERIPHID6 - Peripheral ID Register  
  --! @name PERIPHID7 - Peripheral ID Register  
  --! @name PERIPHID0 - Peripheral ID Register  
  --! @name PERIPHID1 - Peripheral ID Register  
  --! @name PERIPHID2 - Peripheral ID Register  
  --! @name PERIPHID3 - Peripheral ID Register  
  --! @name COMPID - Component ID Register  
  -- The count of ROM_COMPID  
  --!
  -- * @}
  --  

  -- end of group ROM_Register_Masks  
  -- ROM - Peripheral instance base addresses  
  --* Peripheral ROM base address  
  --* Peripheral ROM base pointer  
  --* Array initializer of ROM peripheral base addresses  
  --* Array initializer of ROM peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group ROM_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- RTC Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup RTC_Peripheral_Access_Layer RTC Peripheral Access Layer
  -- * @{
  --  

  --* RTC - Register Layout Typedef  
  --*< RTC Time Seconds Register, offset: 0x0  
  --*< RTC Time Prescaler Register, offset: 0x4  
  --*< RTC Time Alarm Register, offset: 0x8  
  --*< RTC Time Compensation Register, offset: 0xC  
  --*< RTC Control Register, offset: 0x10  
  --*< RTC Status Register, offset: 0x14  
  --*< RTC Lock Register, offset: 0x18  
  --*< RTC Interrupt Enable Register, offset: 0x1C  
   type RTC_Type is record
      TSR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3458
      TPR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3459
      TAR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3460
      TCR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3461
      CR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3462
      SR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3463
      LR : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3464
      IER : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3465
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3466

  -- ----------------------------------------------------------------------------
  --   -- RTC Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup RTC_Register_Masks RTC Register Masks
  -- * @{
  --  

  --! @name TSR - RTC Time Seconds Register  
  --! @name TPR - RTC Time Prescaler Register  
  --! @name TAR - RTC Time Alarm Register  
  --! @name TCR - RTC Time Compensation Register  
  --! @name CR - RTC Control Register  
  --! @name SR - RTC Status Register  
  --! @name LR - RTC Lock Register  
  --! @name IER - RTC Interrupt Enable Register  
  --!
  -- * @}
  --  

  -- end of group RTC_Register_Masks  
  -- RTC - Peripheral instance base addresses  
  --* Peripheral RTC base address  
  --* Peripheral RTC base pointer  
  --* Array initializer of RTC peripheral base addresses  
  --* Array initializer of RTC peripheral base pointers  
  --* Interrupt vectors for the RTC peripheral type  
  --!
  -- * @}
  --  

  -- end of group RTC_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- SIM Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup SIM_Peripheral_Access_Layer SIM Peripheral Access Layer
  -- * @{
  --  

  --* SIM - Register Layout Typedef  
  --*< System Options Register 1, offset: 0x0  
  --*< SOPT1 Configuration Register, offset: 0x4  
  --*< System Options Register 2, offset: 0x1004  
  --*< System Options Register 4, offset: 0x100C  
  --*< System Options Register 5, offset: 0x1010  
  --*< System Options Register 7, offset: 0x1018  
  --*< System Device Identification Register, offset: 0x1024  
  --*< System Clock Gating Control Register 4, offset: 0x1034  
  --*< System Clock Gating Control Register 5, offset: 0x1038  
  --*< System Clock Gating Control Register 6, offset: 0x103C  
  --*< System Clock Gating Control Register 7, offset: 0x1040  
  --*< System Clock Divider Register 1, offset: 0x1044  
  --*< Flash Configuration Register 1, offset: 0x104C  
  --*< Flash Configuration Register 2, offset: 0x1050  
  --*< Unique Identification Register Mid-High, offset: 0x1058  
  --*< Unique Identification Register Mid Low, offset: 0x105C  
  --*< Unique Identification Register Low, offset: 0x1060  
  --*< COP Control Register, offset: 0x1100  
  --*< Service COP Register, offset: 0x1104  
   type anon_array1983 is array (0 .. 4091) of aliased sys_ustdint_h.uint8_t;
   type anon_array1985 is array (0 .. 11) of aliased sys_ustdint_h.uint8_t;
   type SIM_Type is record
      SOPT1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3618
      SOPT1CFG : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3619
      RESERVED_0 : aliased anon_array1983;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3620
      SOPT2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3621
      RESERVED_1 : aliased anon_array1031;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3622
      SOPT4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3623
      SOPT5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3624
      RESERVED_2 : aliased anon_array1031;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3625
      SOPT7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3626
      RESERVED_3 : aliased anon_array1913;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3627
      SDID : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3628
      RESERVED_4 : aliased anon_array1985;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3629
      SCGC4 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3630
      SCGC5 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3631
      SCGC6 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3632
      SCGC7 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3633
      CLKDIV1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3634
      RESERVED_5 : aliased anon_array1031;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3635
      FCFG1 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3636
      FCFG2 : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3637
      RESERVED_6 : aliased anon_array1031;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3638
      UIDMH : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3639
      UIDML : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3640
      UIDL : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3641
      RESERVED_7 : aliased anon_array1926;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3642
      COPC : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3643
      SRVCOP : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3644
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3645

  -- ----------------------------------------------------------------------------
  --   -- SIM Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup SIM_Register_Masks SIM Register Masks
  -- * @{
  --  

  --! @name SOPT1 - System Options Register 1  
  --! @name SOPT1CFG - SOPT1 Configuration Register  
  --! @name SOPT2 - System Options Register 2  
  --! @name SOPT4 - System Options Register 4  
  --! @name SOPT5 - System Options Register 5  
  --! @name SOPT7 - System Options Register 7  
  --! @name SDID - System Device Identification Register  
  --! @name SCGC4 - System Clock Gating Control Register 4  
  --! @name SCGC5 - System Clock Gating Control Register 5  
  --! @name SCGC6 - System Clock Gating Control Register 6  
  --! @name SCGC7 - System Clock Gating Control Register 7  
  --! @name CLKDIV1 - System Clock Divider Register 1  
  --! @name FCFG1 - Flash Configuration Register 1  
  --! @name FCFG2 - Flash Configuration Register 2  
  --! @name UIDMH - Unique Identification Register Mid-High  
  --! @name UIDML - Unique Identification Register Mid Low  
  --! @name UIDL - Unique Identification Register Low  
  --! @name COPC - COP Control Register  
  --! @name SRVCOP - Service COP Register  
  --!
  -- * @}
  --  

  -- end of group SIM_Register_Masks  
  -- SIM - Peripheral instance base addresses  
  --* Peripheral SIM base address  
  --* Peripheral SIM base pointer  
  --* Array initializer of SIM peripheral base addresses  
  --* Array initializer of SIM peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group SIM_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- SMC Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup SMC_Peripheral_Access_Layer SMC Peripheral Access Layer
  -- * @{
  --  

  --* SMC - Register Layout Typedef  
  --*< Power Mode Protection register, offset: 0x0  
  --*< Power Mode Control register, offset: 0x1  
  --*< Stop Control Register, offset: 0x2  
  --*< Power Mode Status register, offset: 0x3  
   type SMC_Type is record
      PMPROT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3948
      PMCTRL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3949
      STOPCTRL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3950
      PMSTAT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3951
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:3952

  -- ----------------------------------------------------------------------------
  --   -- SMC Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup SMC_Register_Masks SMC Register Masks
  -- * @{
  --  

  --! @name PMPROT - Power Mode Protection register  
  --! @name PMCTRL - Power Mode Control register  
  --! @name STOPCTRL - Stop Control Register  
  --! @name PMSTAT - Power Mode Status register  
  --!
  -- * @}
  --  

  -- end of group SMC_Register_Masks  
  -- SMC - Peripheral instance base addresses  
  --* Peripheral SMC base address  
  --* Peripheral SMC base pointer  
  --* Array initializer of SMC peripheral base addresses  
  --* Array initializer of SMC peripheral base pointers  
  --!
  -- * @}
  --  

  -- end of group SMC_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- SPI Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup SPI_Peripheral_Access_Layer SPI Peripheral Access Layer
  -- * @{
  --  

  --* SPI - Register Layout Typedef  
  --*< SPI control register 1, offset: 0x0  
  --*< SPI control register 2, offset: 0x1  
  --*< SPI baud rate register, offset: 0x2  
  --*< SPI status register, offset: 0x3  
  --*< SPI data register, offset: 0x5  
  --*< SPI match register, offset: 0x7  
   type SPI_Type is record
      C1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4033
      C2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4034
      BR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4035
      S : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4036
      RESERVED_0 : aliased anon_array1909;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4037
      D : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4038
      RESERVED_1 : aliased anon_array1909;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4039
      M : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4040
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4041

  -- ----------------------------------------------------------------------------
  --   -- SPI Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup SPI_Register_Masks SPI Register Masks
  -- * @{
  --  

  --! @name C1 - SPI control register 1  
  --! @name C2 - SPI control register 2  
  --! @name BR - SPI baud rate register  
  --! @name S - SPI status register  
  --! @name D - SPI data register  
  --! @name M - SPI match register  
  --!
  -- * @}
  --  

  -- end of group SPI_Register_Masks  
  -- SPI - Peripheral instance base addresses  
  --* Peripheral SPI0 base address  
  --* Peripheral SPI0 base pointer  
  --* Peripheral SPI1 base address  
  --* Peripheral SPI1 base pointer  
  --* Array initializer of SPI peripheral base addresses  
  --* Array initializer of SPI peripheral base pointers  
  --* Interrupt vectors for the SPI peripheral type  
  --!
  -- * @}
  --  

  -- end of group SPI_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- TPM Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup TPM_Peripheral_Access_Layer TPM Peripheral Access Layer
  -- * @{
  --  

  --* TPM - Register Layout Typedef  
  --*< Status and Control, offset: 0x0  
  --*< Counter, offset: 0x4  
  --*< Modulo, offset: 0x8  
  -- offset: 0xC, array step: 0x8  
  --*< Channel (n) Status and Control, array offset: 0xC, array step: 0x8  
  --*< Channel (n) Value, array offset: 0x10, array step: 0x8  
  --*< Capture and Compare Status, offset: 0x50  
  --*< Configuration, offset: 0x84  
   type anon_struct1993 is record
      CnSC : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4175
      CnV : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4176
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array1995 is array (0 .. 5) of aliased anon_struct1993;
   type anon_array1997 is array (0 .. 19) of aliased sys_ustdint_h.uint8_t;
   type TPM_Type is record
      SC : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4171
      CNT : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4172
      c_MOD : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4173
      CONTROLS : aliased anon_array1995;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4177
      RESERVED_0 : aliased anon_array1997;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4178
      STATUS : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4179
      RESERVED_1 : aliased anon_array1918;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4180
      CONF : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4181
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4182

  -- ----------------------------------------------------------------------------
  --   -- TPM Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup TPM_Register_Masks TPM Register Masks
  -- * @{
  --  

  --! @name SC - Status and Control  
  --! @name CNT - Counter  
  --! @name MOD - Modulo  
  --! @name CnSC - Channel (n) Status and Control  
  -- The count of TPM_CnSC  
  --! @name CnV - Channel (n) Value  
  -- The count of TPM_CnV  
  --! @name STATUS - Capture and Compare Status  
  --! @name CONF - Configuration  
  --!
  -- * @}
  --  

  -- end of group TPM_Register_Masks  
  -- TPM - Peripheral instance base addresses  
  --* Peripheral TPM0 base address  
  --* Peripheral TPM0 base pointer  
  --* Peripheral TPM1 base address  
  --* Peripheral TPM1 base pointer  
  --* Peripheral TPM2 base address  
  --* Peripheral TPM2 base pointer  
  --* Array initializer of TPM peripheral base addresses  
  --* Array initializer of TPM peripheral base pointers  
  --* Interrupt vectors for the TPM peripheral type  
  --!
  -- * @}
  --  

  -- end of group TPM_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- TSI Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup TSI_Peripheral_Access_Layer TSI Peripheral Access Layer
  -- * @{
  --  

  --* TSI - Register Layout Typedef  
  --*< TSI General Control and Status Register, offset: 0x0  
  --*< TSI DATA Register, offset: 0x4  
  --*< TSI Threshold Register, offset: 0x8  
   type TSI_Type is record
      GENCS : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4345
      DATA : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4346
      TSHD : aliased sys_ustdint_h.uint32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4347
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4348

  -- ----------------------------------------------------------------------------
  --   -- TSI Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup TSI_Register_Masks TSI Register Masks
  -- * @{
  --  

  --! @name GENCS - TSI General Control and Status Register  
  --! @name DATA - TSI DATA Register  
  --! @name TSHD - TSI Threshold Register  
  --!
  -- * @}
  --  

  -- end of group TSI_Register_Masks  
  -- TSI - Peripheral instance base addresses  
  --* Peripheral TSI0 base address  
  --* Peripheral TSI0 base pointer  
  --* Array initializer of TSI peripheral base addresses  
  --* Array initializer of TSI peripheral base pointers  
  --* Interrupt vectors for the TSI peripheral type  
  --!
  -- * @}
  --  

  -- end of group TSI_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- UART Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup UART_Peripheral_Access_Layer UART Peripheral Access Layer
  -- * @{
  --  

  --* UART - Register Layout Typedef  
  --*< UART Baud Rate Register: High, offset: 0x0  
  --*< UART Baud Rate Register: Low, offset: 0x1  
  --*< UART Control Register 1, offset: 0x2  
  --*< UART Control Register 2, offset: 0x3  
  --*< UART Status Register 1, offset: 0x4  
  --*< UART Status Register 2, offset: 0x5  
  --*< UART Control Register 3, offset: 0x6  
  --*< UART Data Register, offset: 0x7  
  --*< UART Control Register 4, offset: 0x8  
   type UART_Type is record
      BDH : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4462
      BDL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4463
      C1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4464
      C2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4465
      S1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4466
      S2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4467
      C3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4468
      D : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4469
      C4 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4470
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4471

  -- ----------------------------------------------------------------------------
  --   -- UART Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup UART_Register_Masks UART Register Masks
  -- * @{
  --  

  --! @name BDH - UART Baud Rate Register: High  
  --! @name BDL - UART Baud Rate Register: Low  
  --! @name C1 - UART Control Register 1  
  --! @name C2 - UART Control Register 2  
  --! @name S1 - UART Status Register 1  
  --! @name S2 - UART Status Register 2  
  --! @name C3 - UART Control Register 3  
  --! @name D - UART Data Register  
  --! @name C4 - UART Control Register 4  
  --!
  -- * @}
  --  

  -- end of group UART_Register_Masks  
  -- UART - Peripheral instance base addresses  
  --* Peripheral UART1 base address  
  --* Peripheral UART1 base pointer  
  --* Peripheral UART2 base address  
  --* Peripheral UART2 base pointer  
  --* Array initializer of UART peripheral base addresses  
  --* Array initializer of UART peripheral base pointers  
  --* Interrupt vectors for the UART peripheral type  
  --!
  -- * @}
  --  

  -- end of group UART_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- UART0 Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup UART0_Peripheral_Access_Layer UART0 Peripheral Access Layer
  -- * @{
  --  

  --* UART0 - Register Layout Typedef  
  --*< UART Baud Rate Register High, offset: 0x0  
  --*< UART Baud Rate Register Low, offset: 0x1  
  --*< UART Control Register 1, offset: 0x2  
  --*< UART Control Register 2, offset: 0x3  
  --*< UART Status Register 1, offset: 0x4  
  --*< UART Status Register 2, offset: 0x5  
  --*< UART Control Register 3, offset: 0x6  
  --*< UART Data Register, offset: 0x7  
  --*< UART Match Address Registers 1, offset: 0x8  
  --*< UART Match Address Registers 2, offset: 0x9  
  --*< UART Control Register 4, offset: 0xA  
  --*< UART Control Register 5, offset: 0xB  
   type UART0_Type is record
      BDH : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4701
      BDL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4702
      C1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4703
      C2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4704
      S1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4705
      S2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4706
      C3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4707
      D : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4708
      MA1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4709
      MA2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4710
      C4 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4711
      C5 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4712
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4713

  -- ----------------------------------------------------------------------------
  --   -- UART0 Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup UART0_Register_Masks UART0 Register Masks
  -- * @{
  --  

  --! @name BDH - UART Baud Rate Register High  
  --! @name BDL - UART Baud Rate Register Low  
  --! @name C1 - UART Control Register 1  
  --! @name C2 - UART Control Register 2  
  --! @name S1 - UART Status Register 1  
  --! @name S2 - UART Status Register 2  
  --! @name C3 - UART Control Register 3  
  --! @name D - UART Data Register  
  --! @name MA1 - UART Match Address Registers 1  
  --! @name MA2 - UART Match Address Registers 2  
  --! @name C4 - UART Control Register 4  
  --! @name C5 - UART Control Register 5  
  --!
  -- * @}
  --  

  -- end of group UART0_Register_Masks  
  -- UART0 - Peripheral instance base addresses  
  --* Peripheral UART0 base address  
  --* Peripheral UART0 base pointer  
  --* Array initializer of UART0 peripheral base addresses  
  --* Array initializer of UART0 peripheral base pointers  
  --* Interrupt vectors for the UART0 peripheral type  
  --!
  -- * @}
  --  

  -- end of group UART0_Peripheral_Access_Layer  
  -- ----------------------------------------------------------------------------
  --   -- USB Peripheral Access Layer
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup USB_Peripheral_Access_Layer USB Peripheral Access Layer
  -- * @{
  --  

  --* USB - Register Layout Typedef  
  --*< Peripheral ID register, offset: 0x0  
  --*< Peripheral ID Complement register, offset: 0x4  
  --*< Peripheral Revision register, offset: 0x8  
  --*< Peripheral Additional Info register, offset: 0xC  
  --*< OTG Interrupt Status register, offset: 0x10  
  --*< OTG Interrupt Control Register, offset: 0x14  
  --*< OTG Status register, offset: 0x18  
  --*< OTG Control register, offset: 0x1C  
  --*< Interrupt Status register, offset: 0x80  
  --*< Interrupt Enable register, offset: 0x84  
  --*< Error Interrupt Status register, offset: 0x88  
  --*< Error Interrupt Enable register, offset: 0x8C  
  --*< Status register, offset: 0x90  
  --*< Control register, offset: 0x94  
  --*< Address register, offset: 0x98  
  --*< BDT Page Register 1, offset: 0x9C  
  --*< Frame Number Register Low, offset: 0xA0  
  --*< Frame Number Register High, offset: 0xA4  
  --*< Token register, offset: 0xA8  
  --*< SOF Threshold Register, offset: 0xAC  
  --*< BDT Page Register 2, offset: 0xB0  
  --*< BDT Page Register 3, offset: 0xB4  
  -- offset: 0xC0, array step: 0x4  
  --*< Endpoint Control register, array offset: 0xC0, array step: 0x4  
  --*< USB Control register, offset: 0x100  
  --*< USB OTG Observe register, offset: 0x104  
  --*< USB OTG Control register, offset: 0x108  
  --*< USB Transceiver Control Register 0, offset: 0x10C  
  --*< Frame Adjust Register, offset: 0x114  
   type anon_array2008 is array (0 .. 98) of aliased sys_ustdint_h.uint8_t;
   type anon_array2010 is array (0 .. 10) of aliased sys_ustdint_h.uint8_t;
   type anon_struct2012 is record
      ENDPT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5017
      RESERVED_0 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5018
   end record
   with Convention => C_Pass_By_Copy;
   type anon_array2013 is array (0 .. 15) of aliased anon_struct2012;
   type anon_array2014 is array (0 .. 6) of aliased sys_ustdint_h.uint8_t;
   type USB_Type is record
      PERID : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4972
      RESERVED_0 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4973
      IDCOMP : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4974
      RESERVED_1 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4975
      REV : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4976
      RESERVED_2 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4977
      ADDINFO : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4978
      RESERVED_3 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4979
      OTGISTAT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4980
      RESERVED_4 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4981
      OTGICR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4982
      RESERVED_5 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4983
      OTGSTAT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4984
      RESERVED_6 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4985
      OTGCTL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4986
      RESERVED_7 : aliased anon_array2008;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4987
      ISTAT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4988
      RESERVED_8 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4989
      INTEN : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4990
      RESERVED_9 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4991
      ERRSTAT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4992
      RESERVED_10 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4993
      ERREN : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4994
      RESERVED_11 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4995
      STAT : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4996
      RESERVED_12 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4997
      CTL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4998
      RESERVED_13 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:4999
      ADDR : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5000
      RESERVED_14 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5001
      BDTPAGE1 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5002
      RESERVED_15 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5003
      FRMNUML : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5004
      RESERVED_16 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5005
      FRMNUMH : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5006
      RESERVED_17 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5007
      TOKEN : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5008
      RESERVED_18 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5009
      SOFTHLD : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5010
      RESERVED_19 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5011
      BDTPAGE2 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5012
      RESERVED_20 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5013
      BDTPAGE3 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5014
      RESERVED_21 : aliased anon_array2010;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5015
      ENDPOINT : aliased anon_array2013;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5019
      USBCTRL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5020
      RESERVED_22 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5021
      OBSERVE : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5022
      RESERVED_23 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5023
      CONTROL : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5024
      RESERVED_24 : aliased anon_array1888;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5025
      USBTRC0 : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5026
      RESERVED_25 : aliased anon_array2014;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5027
      USBFRMADJUST : aliased sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5028
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/modules/hal/nxp/mcux/mcux-sdk/devices/MKL25Z4/MKL25Z4.h:5029

  -- ----------------------------------------------------------------------------
  --   -- USB Register Masks
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup USB_Register_Masks USB Register Masks
  -- * @{
  --  

  --! @name PERID - Peripheral ID register  
  --! @name IDCOMP - Peripheral ID Complement register  
  --! @name REV - Peripheral Revision register  
  --! @name ADDINFO - Peripheral Additional Info register  
  --! @name OTGISTAT - OTG Interrupt Status register  
  --! @name OTGICR - OTG Interrupt Control Register  
  --! @name OTGSTAT - OTG Status register  
  --! @name OTGCTL - OTG Control register  
  --! @name ISTAT - Interrupt Status register  
  --! @name INTEN - Interrupt Enable register  
  --! @name ERRSTAT - Error Interrupt Status register  
  --! @name ERREN - Error Interrupt Enable register  
  --! @name STAT - Status register  
  --! @name CTL - Control register  
  --! @name ADDR - Address register  
  --! @name BDTPAGE1 - BDT Page Register 1  
  --! @name FRMNUML - Frame Number Register Low  
  --! @name FRMNUMH - Frame Number Register High  
  --! @name TOKEN - Token register  
  --! @name SOFTHLD - SOF Threshold Register  
  --! @name BDTPAGE2 - BDT Page Register 2  
  --! @name BDTPAGE3 - BDT Page Register 3  
  --! @name ENDPT - Endpoint Control register  
  -- The count of USB_ENDPT  
  --! @name USBCTRL - USB Control register  
  --! @name OBSERVE - USB OTG Observe register  
  --! @name CONTROL - USB OTG Control register  
  --! @name USBTRC0 - USB Transceiver Control Register 0  
  --! @name USBFRMADJUST - Frame Adjust Register  
  --!
  -- * @}
  --  

  -- end of group USB_Register_Masks  
  -- USB - Peripheral instance base addresses  
  --* Peripheral USB0 base address  
  --* Peripheral USB0 base pointer  
  --* Array initializer of USB peripheral base addresses  
  --* Array initializer of USB peripheral base pointers  
  --* Interrupt vectors for the USB peripheral type  
  --!
  -- * @}
  --  

  -- end of group USB_Peripheral_Access_Layer  
  --** End of section using anonymous unions
  -- 

  -- leave anonymous unions enabled  
  --!
  -- * @}
  --  

  -- end of group Peripheral_access_layer  
  -- ----------------------------------------------------------------------------
  --   -- Macros for use with bit field definitions (xxx_SHIFT, xxx_MASK).
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup Bit_Field_Generic_Macros Macros for use with bit field definitions (xxx_SHIFT, xxx_MASK).
  -- * @{
  --  

  --*
  -- * @brief Mask and left-shift a bit field value for use in a register bit range.
  -- * @param field Name of the register bit field.
  -- * @param value Value of the bit field.
  -- * @return Masked and shifted value.
  --  

  --*
  -- * @brief Mask and right-shift a register value to extract a bit field value.
  -- * @param field Name of the register bit field.
  -- * @param value Value of the register.
  -- * @return Masked and shifted bit field value.
  --  

  --!
  -- * @}
  --  

  -- end of group Bit_Field_Generic_Macros  
  -- ----------------------------------------------------------------------------
  --   -- SDK Compatibility
  --   ----------------------------------------------------------------------------  

  --!
  -- * @addtogroup SDK_Compatibility_Symbols SDK Compatibility
  -- * @{
  --  

  --!
  -- * @}
  --  

  -- end of group SDK_Compatibility_Symbols  
end MKL25Z4_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
