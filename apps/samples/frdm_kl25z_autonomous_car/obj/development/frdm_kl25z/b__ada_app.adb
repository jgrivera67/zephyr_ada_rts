pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_appmain, Spec_File_Name => "b__ada_app.ads");
pragma Source_File_Name (ada_appmain, Body_File_Name => "b__ada_app.adb");
pragma Suppress (Overflow_Check);

package body ada_appmain is

   E152 : Short_Integer; pragma Import (Ada, E152, "system__tasking__protected_objects_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__tasking__restricted__stages_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "gpio_driver_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "pwm_driver_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "pwm_driver__board_specific_private_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "stack_trace_capture_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "runtime_logs_E");
   E004 : Short_Integer; pragma Import (Ada, E004, "adc_driver_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "color_led_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "nor_flash_driver_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "generic_app_config_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "tfc_battery_leds_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "tfc_dip_switches_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "tfc_line_scan_camera_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "tfc_push_buttons_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "tfc_steering_servo_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "tfc_wheel_motors_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "app_configuration_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "uart_driver_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "uart_driver__board_specific_private_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "serial_console_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "command_line_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "car_controller_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "ada_main_E");

   Sec_Default_Sized_Stacks : array (1 .. 4) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);


   procedure ada_appinit is
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");

      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin

      ada_appmain'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 4;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;


      if E152 = 0 then
         System.Tasking.Protected_Objects'Elab_Body;
      end if;
      E152 := E152 + 1;
      if E154 = 0 then
         System.Tasking.Restricted.Stages'Elab_Body;
      end if;
      E154 := E154 + 1;
      E024 := E024 + 1;
      if E053 = 0 then
         Pwm_Driver.Board_Specific_Private'Elab_Spec;
      end if;
      E053 := E053 + 1;
      if E055 = 0 then
         Pwm_Driver'Elab_Body;
      end if;
      E055 := E055 + 1;
      E063 := E063 + 1;
      if E059 = 0 then
         Runtime_Logs'Elab_Spec;
      end if;
      E059 := E059 + 1;
      if E004 = 0 then
         Adc_Driver'Elab_Body;
      end if;
      E004 := E004 + 1;
      if E013 = 0 then
         Color_Led'Elab_Body;
      end if;
      E013 := E013 + 1;
      if E047 = 0 then
         Nor_Flash_Driver'Elab_Body;
      end if;
      E047 := E047 + 1;
      E019 := E019 + 1;
      E067 := E067 + 1;
      E069 := E069 + 1;
      if E071 = 0 then
         Tfc_Line_Scan_Camera'Elab_Body;
      end if;
      E071 := E071 + 1;
      E073 := E073 + 1;
      E075 := E075 + 1;
      if E077 = 0 then
         Tfc_Wheel_Motors'Elab_Body;
      end if;
      E077 := E077 + 1;
      E006 := E006 + 1;
      if E080 = 0 then
         Uart_Driver'Elab_Spec;
      end if;
      if E078 = 0 then
         Uart_Driver.Board_Specific_Private'Elab_Spec;
      end if;
      E078 := E078 + 1;
      if E080 = 0 then
         Uart_Driver'Elab_Body;
      end if;
      E080 := E080 + 1;
      if E061 = 0 then
         Serial_Console'Elab_Body;
      end if;
      E061 := E061 + 1;
      if E015 = 0 then
         Command_Line'Elab_Body;
      end if;
      E015 := E015 + 1;
      if E010 = 0 then
         Car_Controller'Elab_Spec;
      end if;
      if E010 = 0 then
         Car_Controller'Elab_Body;
      end if;
      E010 := E010 + 1;
      E002 := E002 + 1;
   end ada_appinit;

--  BEGIN Object file/option list
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/app_parameters.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/bit_types.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/devices.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/kinetis_kl25z.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/kinetis_kl25z-rcm.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/kl25z_port.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/kl25z_gpio.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/kl25z_sim.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/kl25z_uart.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/memory_utils.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/microcontroller.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/microcontroller-arm_cortex_m.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/generic_ring_buffers.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/microcontroller-mcu_specific.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/microcontroller_clocks.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/mkl25z4.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/mkl25z4-adc0.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/mkl25z4-ftfa.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/mkl25z4-pit.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/mkl25z4-sim.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/mkl25z4-tpm.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/devices-mcu_specific.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/number_conversion_utils.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/pin_mux_driver-mcu_specific_private.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/pin_mux_driver.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/reset_counter.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/task_stack_info.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/gpio_driver-mcu_specific_private.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/gpio_driver.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/pwm_driver-board_specific_private.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/pwm_driver.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/stack_trace_capture.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/runtime_logs.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/adc_driver.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/color_led-board_specific_private.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/color_led.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/nor_flash_driver.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/generic_app_config.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/tfc_battery_leds.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/tfc_dip_switches.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/tfc_line_scan_camera.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/tfc_push_buttons.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/tfc_steering_servo.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/tfc_wheel_motors.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/app_configuration.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/uart_driver-board_specific_private.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/uart_driver.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/serial_console.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/command_line.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/car_controller.o
   --   /home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/ada_main.o
   --   -L/home/josegrivera/my-projects/zephyr_ada/apps/samples/frdm_kl25z_autonomous_car/obj/development/frdm_kl25z/
   --   -L/home/josegrivera/my-projects/zephyr_ada/apps/zephyr_ada_rts/lib/frdm_kl25z/
   --   -L/home/josegrivera/my-projects/zephyr_ada/apps/zephyr_ada_rts/obj/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_appmain;
