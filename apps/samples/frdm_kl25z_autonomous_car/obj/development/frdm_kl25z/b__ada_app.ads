pragma Warnings (Off);
pragma Ada_95;
pragma Restrictions (No_Exception_Propagation);
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_appmain is

   procedure ada_appinit;
   pragma Export (C, ada_appinit, "ada_appinit");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#7899668a#;
   pragma Export (C, u00001, "ada_mainB");
   u00002 : constant Version_32 := 16#7b33aa45#;
   pragma Export (C, u00002, "ada_mainS");
   u00003 : constant Version_32 := 16#483dc98a#;
   pragma Export (C, u00003, "adc_driverB");
   u00004 : constant Version_32 := 16#0e83fcdc#;
   pragma Export (C, u00004, "adc_driverS");
   u00005 : constant Version_32 := 16#5404379d#;
   pragma Export (C, u00005, "app_configurationB");
   u00006 : constant Version_32 := 16#a7ed1f9c#;
   pragma Export (C, u00006, "app_configurationS");
   u00007 : constant Version_32 := 16#0590d718#;
   pragma Export (C, u00007, "app_parametersS");
   u00008 : constant Version_32 := 16#6b2b24e8#;
   pragma Export (C, u00008, "bit_typesS");
   u00009 : constant Version_32 := 16#7c63e43e#;
   pragma Export (C, u00009, "car_controllerB");
   u00010 : constant Version_32 := 16#9226d5d2#;
   pragma Export (C, u00010, "car_controllerS");
   u00011 : constant Version_32 := 16#c681df06#;
   pragma Export (C, u00011, "color_led__board_specific_privateS");
   u00012 : constant Version_32 := 16#d71c1aab#;
   pragma Export (C, u00012, "color_ledB");
   u00013 : constant Version_32 := 16#ac734bf9#;
   pragma Export (C, u00013, "color_ledS");
   u00014 : constant Version_32 := 16#475c0a37#;
   pragma Export (C, u00014, "command_lineB");
   u00015 : constant Version_32 := 16#b3a269ad#;
   pragma Export (C, u00015, "command_lineS");
   u00016 : constant Version_32 := 16#4758a42e#;
   pragma Export (C, u00016, "devices__mcu_specificS");
   u00017 : constant Version_32 := 16#3d8966e1#;
   pragma Export (C, u00017, "devicesS");
   u00018 : constant Version_32 := 16#84bec609#;
   pragma Export (C, u00018, "generic_app_configB");
   u00019 : constant Version_32 := 16#1a8332fb#;
   pragma Export (C, u00019, "generic_app_configS");
   u00020 : constant Version_32 := 16#2eef47f7#;
   pragma Export (C, u00020, "generic_ring_buffersB");
   u00021 : constant Version_32 := 16#316c4e8a#;
   pragma Export (C, u00021, "generic_ring_buffersS");
   u00022 : constant Version_32 := 16#495a907d#;
   pragma Export (C, u00022, "gpio_driver__mcu_specific_privateS");
   u00023 : constant Version_32 := 16#04aeb0e0#;
   pragma Export (C, u00023, "gpio_driverB");
   u00024 : constant Version_32 := 16#5d0f0029#;
   pragma Export (C, u00024, "gpio_driverS");
   u00025 : constant Version_32 := 16#e0ca4796#;
   pragma Export (C, u00025, "kinetis_kl25z__rcmS");
   u00026 : constant Version_32 := 16#8e40c420#;
   pragma Export (C, u00026, "kinetis_kl25zS");
   u00027 : constant Version_32 := 16#86a60097#;
   pragma Export (C, u00027, "kl25z_gpioS");
   u00028 : constant Version_32 := 16#4f3b9a1a#;
   pragma Export (C, u00028, "kl25z_portS");
   u00029 : constant Version_32 := 16#64f16d29#;
   pragma Export (C, u00029, "kl25z_simS");
   u00030 : constant Version_32 := 16#eec4204e#;
   pragma Export (C, u00030, "kl25z_uartS");
   u00031 : constant Version_32 := 16#896b688c#;
   pragma Export (C, u00031, "memory_utilsB");
   u00032 : constant Version_32 := 16#7db3dcbb#;
   pragma Export (C, u00032, "memory_utilsS");
   u00033 : constant Version_32 := 16#55d155c1#;
   pragma Export (C, u00033, "microcontroller__arm_cortex_mB");
   u00034 : constant Version_32 := 16#8c94dcb3#;
   pragma Export (C, u00034, "microcontroller__arm_cortex_mS");
   u00035 : constant Version_32 := 16#f512cb70#;
   pragma Export (C, u00035, "microcontroller__mcu_specificB");
   u00036 : constant Version_32 := 16#7e61e89c#;
   pragma Export (C, u00036, "microcontroller__mcu_specificS");
   u00037 : constant Version_32 := 16#88a26182#;
   pragma Export (C, u00037, "microcontrollerB");
   u00038 : constant Version_32 := 16#27c97268#;
   pragma Export (C, u00038, "microcontrollerS");
   u00039 : constant Version_32 := 16#be9ae4e4#;
   pragma Export (C, u00039, "microcontroller_clocksS");
   u00040 : constant Version_32 := 16#eb2fb852#;
   pragma Export (C, u00040, "mkl25z4__adc0S");
   u00041 : constant Version_32 := 16#43ed2ebe#;
   pragma Export (C, u00041, "mkl25z4__ftfaS");
   u00042 : constant Version_32 := 16#3f6a6d57#;
   pragma Export (C, u00042, "mkl25z4__pitS");
   u00043 : constant Version_32 := 16#11d16f94#;
   pragma Export (C, u00043, "mkl25z4__simS");
   u00044 : constant Version_32 := 16#1d4a9554#;
   pragma Export (C, u00044, "mkl25z4__tpmS");
   u00045 : constant Version_32 := 16#9d70da76#;
   pragma Export (C, u00045, "mkl25z4S");
   u00046 : constant Version_32 := 16#52b68356#;
   pragma Export (C, u00046, "nor_flash_driverB");
   u00047 : constant Version_32 := 16#4509c3ef#;
   pragma Export (C, u00047, "nor_flash_driverS");
   u00048 : constant Version_32 := 16#66c9bbfb#;
   pragma Export (C, u00048, "number_conversion_utilsB");
   u00049 : constant Version_32 := 16#838d1153#;
   pragma Export (C, u00049, "number_conversion_utilsS");
   u00050 : constant Version_32 := 16#3cb991b7#;
   pragma Export (C, u00050, "pin_mux_driver__mcu_specific_privateS");
   u00051 : constant Version_32 := 16#89a5df9a#;
   pragma Export (C, u00051, "pin_mux_driverB");
   u00052 : constant Version_32 := 16#ed15acba#;
   pragma Export (C, u00052, "pin_mux_driverS");
   u00053 : constant Version_32 := 16#d0d0e69c#;
   pragma Export (C, u00053, "pwm_driver__board_specific_privateS");
   u00054 : constant Version_32 := 16#d1242218#;
   pragma Export (C, u00054, "pwm_driverB");
   u00055 : constant Version_32 := 16#09a8061a#;
   pragma Export (C, u00055, "pwm_driverS");
   u00056 : constant Version_32 := 16#028cebe4#;
   pragma Export (C, u00056, "reset_counterB");
   u00057 : constant Version_32 := 16#8e9a30b0#;
   pragma Export (C, u00057, "reset_counterS");
   u00058 : constant Version_32 := 16#31b7fd49#;
   pragma Export (C, u00058, "runtime_logsB");
   u00059 : constant Version_32 := 16#8bc32d78#;
   pragma Export (C, u00059, "runtime_logsS");
   u00060 : constant Version_32 := 16#119fca62#;
   pragma Export (C, u00060, "serial_consoleB");
   u00061 : constant Version_32 := 16#64b72ac1#;
   pragma Export (C, u00061, "serial_consoleS");
   u00062 : constant Version_32 := 16#a05d27f7#;
   pragma Export (C, u00062, "stack_trace_captureB");
   u00063 : constant Version_32 := 16#e492d639#;
   pragma Export (C, u00063, "stack_trace_captureS");
   u00064 : constant Version_32 := 16#53d4a032#;
   pragma Export (C, u00064, "task_stack_infoB");
   u00065 : constant Version_32 := 16#970ada2a#;
   pragma Export (C, u00065, "task_stack_infoS");
   u00066 : constant Version_32 := 16#6c5b6bc6#;
   pragma Export (C, u00066, "tfc_battery_ledsB");
   u00067 : constant Version_32 := 16#b0f0fbf6#;
   pragma Export (C, u00067, "tfc_battery_ledsS");
   u00068 : constant Version_32 := 16#92fe62b6#;
   pragma Export (C, u00068, "tfc_dip_switchesB");
   u00069 : constant Version_32 := 16#c40f73b9#;
   pragma Export (C, u00069, "tfc_dip_switchesS");
   u00070 : constant Version_32 := 16#cd0fafab#;
   pragma Export (C, u00070, "tfc_line_scan_cameraB");
   u00071 : constant Version_32 := 16#a12412a8#;
   pragma Export (C, u00071, "tfc_line_scan_cameraS");
   u00072 : constant Version_32 := 16#768ff1ff#;
   pragma Export (C, u00072, "tfc_push_buttonsB");
   u00073 : constant Version_32 := 16#c8a64280#;
   pragma Export (C, u00073, "tfc_push_buttonsS");
   u00074 : constant Version_32 := 16#242dea54#;
   pragma Export (C, u00074, "tfc_steering_servoB");
   u00075 : constant Version_32 := 16#54a59ec9#;
   pragma Export (C, u00075, "tfc_steering_servoS");
   u00076 : constant Version_32 := 16#ce6e6db5#;
   pragma Export (C, u00076, "tfc_wheel_motorsB");
   u00077 : constant Version_32 := 16#f1564ee3#;
   pragma Export (C, u00077, "tfc_wheel_motorsS");
   u00078 : constant Version_32 := 16#19d849ad#;
   pragma Export (C, u00078, "uart_driver__board_specific_privateS");
   u00079 : constant Version_32 := 16#547765e3#;
   pragma Export (C, u00079, "uart_driverB");
   u00080 : constant Version_32 := 16#d17d694b#;
   pragma Export (C, u00080, "uart_driverS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  ada.exceptions%s
   --  ada.exceptions%b
   --  ada.assertions%s
   --  ada.assertions%b
   --  gnat%s
   --  gnat.source_info%s
   --  system.machine_code%s
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.parameters%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.unsigned_types%s
   --  system.zephyr%s
   --  system.assertions%s
   --  system.assertions%b
   --  interfaces.c%s
   --  interfaces.c%b
   --  interfaces.c.extensions%s
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.fat_flt%s
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  system.zephyr.priorities%s
   --  system.zephyr.priorities%b
   --  system.zephyr.threads%s
   --  system.zephyr.threads%b
   --  app_parameters%s
   --  bit_types%s
   --  devices%s
   --  kinetis_kl25z%s
   --  kinetis_kl25z.rcm%s
   --  kl25z_port%s
   --  kl25z_gpio%s
   --  kl25z_sim%s
   --  kl25z_uart%s
   --  machine_udefault_types_h%s
   --  memory_utils%s
   --  memory_utils%b
   --  microcontroller%s
   --  microcontroller%b
   --  microcontroller.arm_cortex_m%s
   --  microcontroller.arm_cortex_m%b
   --  generic_ring_buffers%s
   --  generic_ring_buffers%b
   --  microcontroller.mcu_specific%s
   --  microcontroller.mcu_specific%b
   --  microcontroller_clocks%s
   --  mkl25z4%s
   --  mkl25z4.adc0%s
   --  mkl25z4.ftfa%s
   --  mkl25z4.pit%s
   --  mkl25z4.sim%s
   --  mkl25z4.tpm%s
   --  devices.mcu_specific%s
   --  number_conversion_utils%s
   --  number_conversion_utils%b
   --  pin_mux_driver%s
   --  pin_mux_driver.mcu_specific_private%s
   --  pin_mux_driver%b
   --  reset_counter%s
   --  reset_counter%b
   --  stddef_h%s
   --  sys_ustdint_h%s
   --  task_stack_info%s
   --  task_stack_info%b
   --  zephyr_arch_arm_structs_h%s
   --  zephyr_arch_arm_thread_h%s
   --  zephyr_kernel_stats_h%s
   --  zephyr_kernel_thread_stack_h%s
   --  zephyr_spinlock_h%s
   --  zephyr_sys_atomic_types_h%s
   --  zephyr_sys_clock_h%s
   --  zephyr_sys_dlist_h%s
   --  zephyr_sys_rb_h%s
   --  zephyr_kernel_structs_h%s
   --  zephyr_sys_ring_buffer_h%s
   --  zephyr_sys_sflist_h%s
   --  zephyr_sys_slist_h%s
   --  zephyr_sys_sys_heap_h%s
   --  zephyr_timing_types_h%s
   --  zephyr_arch_arch_interface_h%s
   --  zephyr_kernel_thread_h%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.tasking%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  system.tasking.restricted%s
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  system.relative_delays%s
   --  system.relative_delays%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  ada.synchronous_task_control%s
   --  ada.synchronous_task_control%b
   --  system.tasking.restricted.stages%s
   --  system.tasking.restricted.stages%b
   --  zephyr_kernel_h%s
   --  gpio_driver%s
   --  gpio_driver.mcu_specific_private%s
   --  gpio_driver%b
   --  pwm_driver%s
   --  pwm_driver.board_specific_private%s
   --  pwm_driver%b
   --  stack_trace_capture%s
   --  stack_trace_capture%b
   --  runtime_logs%s
   --  runtime_logs%b
   --  adc_driver%s
   --  adc_driver%b
   --  color_led%s
   --  color_led.board_specific_private%s
   --  color_led%b
   --  nor_flash_driver%s
   --  nor_flash_driver%b
   --  generic_app_config%s
   --  generic_app_config%b
   --  sys_utypes_h%s
   --  sys_utimespec_h%s
   --  tfc_battery_leds%s
   --  tfc_battery_leds%b
   --  tfc_dip_switches%s
   --  tfc_dip_switches%b
   --  tfc_line_scan_camera%s
   --  tfc_line_scan_camera%b
   --  tfc_push_buttons%s
   --  tfc_push_buttons%b
   --  tfc_steering_servo%s
   --  tfc_steering_servo%b
   --  tfc_wheel_motors%s
   --  tfc_wheel_motors%b
   --  app_configuration%s
   --  app_configuration%b
   --  uart_driver%s
   --  uart_driver.board_specific_private%s
   --  uart_driver%b
   --  serial_console%s
   --  serial_console%b
   --  command_line%s
   --  command_line%b
   --  car_controller%s
   --  car_controller%b
   --  ada_main%s
   --  ada_main%b
   --  zephyr_arch_arm_cortex_m_exception_h%s
   --  zephyr_sys_mem_stats_h%s
   --  END ELABORATION ORDER

end ada_appmain;
