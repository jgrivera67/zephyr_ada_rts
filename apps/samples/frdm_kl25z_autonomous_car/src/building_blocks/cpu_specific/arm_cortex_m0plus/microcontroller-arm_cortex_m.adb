--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Body for ARM Cortex-M specific operations (Cortex-M0+, no FPU).
--  All CPU register access is performed via GCC inline assembly.
--
with System.Machine_Code;

package body Microcontroller.Arm_Cortex_M is
   use System.Machine_Code;

   --  -----------------------------------------------------------------------
   --  CPU interrupt control
   --  -----------------------------------------------------------------------

   function Disable_Cpu_Interrupts return Word is
      Old_Mask : Word;
   begin
      Asm ("mrs %0, primask" & ASCII.LF & ASCII.HT &
           "cpsid i",
           Outputs  => Word'Asm_Output ("=r", Old_Mask),
           Volatile => True);
      return Old_Mask;
   end Disable_Cpu_Interrupts;

   procedure Restore_Cpu_Interrupts (Old_Mask : Word) is
   begin
      Asm ("msr primask, %0",
           Inputs   => Word'Asm_Input ("r", Old_Mask),
           Volatile => True);
   end Restore_Cpu_Interrupts;

   function Are_Cpu_Interrupts_Disabled return Boolean is
      Primask_Value : Word;
   begin
      Asm ("mrs %0, primask",
           Outputs  => Word'Asm_Output ("=r", Primask_Value),
           Volatile => True);
      return (Primask_Value and 1) /= 0;
   end Are_Cpu_Interrupts_Disabled;

   procedure Data_Synchronization_Barrier is
   begin
      Asm ("dsb", Volatile => True);
   end Data_Synchronization_Barrier;

   --  -----------------------------------------------------------------------
   --  CPU register access
   --  -----------------------------------------------------------------------

   function Get_LR_Register return System.Address is
      LR_Value : Word;
   begin
      Asm ("mov %0, lr",
           Outputs  => Word'Asm_Output ("=r", LR_Value),
           Volatile => True);
      return To_Address (Integer_Address (LR_Value));
   end Get_LR_Register;

   function Get_Frame_Pointer_Register return System.Address is
      FP_Value : Word;
   begin
      Asm ("mov %0, r7",
           Outputs  => Word'Asm_Output ("=r", FP_Value),
           Volatile => True);
      return To_Address (Integer_Address (FP_Value));
   end Get_Frame_Pointer_Register;

   function Get_PSP_Register return Word is
      PSP_Value : Word;
   begin
      Asm ("mrs %0, psp",
           Outputs  => Word'Asm_Output ("=r", PSP_Value),
           Volatile => True);
      return PSP_Value;
   end Get_PSP_Register;

   function Is_Cpu_Using_MSP_Stack_Pointer return Boolean is
      Control_Value : Word;
   begin
      Asm ("mrs %0, control",
           Outputs  => Word'Asm_Output ("=r", Control_Value),
           Volatile => True);
      return (Control_Value and 2) = 0;
   end Is_Cpu_Using_MSP_Stack_Pointer;

   function Is_Caller_An_Interrupt_Handler return Boolean is
      IPSR_Value : Word;
   begin
      Asm ("mrs %0, ipsr",
           Outputs  => Word'Asm_Output ("=r", IPSR_Value),
           Volatile => True);
      return (IPSR_Value and 16#FF#) /= 0;
   end Is_Caller_An_Interrupt_Handler;

   --  -----------------------------------------------------------------------
   --  Address manipulation utilities
   --  -----------------------------------------------------------------------

   function Return_Address_To_Call_Address
     (Return_Address : System.Address) return System.Address is
   begin
      return To_Address (To_Integer (Return_Address) and
                         (not Arm_Thumb_Code_Flag));
   end Return_Address_To_Call_Address;

   function Is_Cpu_Exception_Return
     (Return_Address : System.Address) return Boolean is
      Addr : constant Integer_Address := To_Integer (Return_Address);
   begin
      return Addr = Integer_Address (Cpu_Exc_Return_To_Thread_Mode_Using_Psp)
        or else
             Addr = Integer_Address (Cpu_Exc_Return_To_Thread_Mode_Using_Psp_Fpu);
   end Is_Cpu_Exception_Return;

   --  -----------------------------------------------------------------------
   --  Thumb instruction pattern recognition (for stack unwinding)
   --  -----------------------------------------------------------------------

   function Is_Add_R7_SP_Immeditate
     (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      --  ADD R7, SP, #imm8  T2: opcode byte = 1010_1111 = 0xAF
      return Instruction.Opcode = 16#AF#;
   end Is_Add_R7_SP_Immeditate;

   function Is_Sub_SP_Immeditate
     (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      --  SUB SP, SP, #imm7  T1: opcode byte = 0xB0, bit 7 of operand = 1
      --  (distinguishes SUB from ADD SP which has bit 7 = 0)
      return Instruction.Opcode = 16#B0# and then
             (Instruction.Operand and 16#80#) /= 0;
   end Is_Sub_SP_Immeditate;

   function Is_Push_R7
     (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      --  PUSH T1: opcode = 1011_010R (0xB4/0xB5), R7 = bit 7 of operand
      return (Instruction.Opcode and 16#FE#) = 16#B4# and then
             (Instruction.Operand and 16#80#) /= 0;
   end Is_Push_R7;

   function Is_Push_R7_LR
     (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      return Is_Push_R7 (Instruction) and then
             Push_Operand_Includes_LR (Instruction);
   end Is_Push_R7_LR;

   function Push_Operand_Includes_LR
     (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      --  The R bit (LR included) is bit 0 of the opcode byte (0xB5 vs 0xB4)
      return (Instruction.Opcode and 16#01#) /= 0;
   end Push_Operand_Includes_LR;

   function Get_Pushed_R7_Stack_Offset
     (Instruction : Thumb_Instruction_Type) return Storage_Offset is
      --  Count registers R0..R6 that are also saved (bits 6..0 of operand).
      --  Each saved register occupies one stack entry below R7.
      Regs_Below_R7 : Byte := Instruction.Operand and Sub_SP_Immeditate_Operand_Mask;
      Count          : Natural := 0;
   begin
      while Regs_Below_R7 /= 0 loop
         Count := Count + Natural (Regs_Below_R7 and 1);
         Regs_Below_R7 := Regs_Below_R7 / 2;
      end loop;
      return Storage_Offset (Count) * Stack_Entry_Size;
   end Get_Pushed_R7_Stack_Offset;

   function Is_BLX (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      --  BLX Rm T1: opcode = 0100_0111 = 0x47,
      --  operand = 1_Rm_000 (bit 7=1, bits 2..0=0)
      return Instruction.Opcode = 16#47# and then
             (Instruction.Operand and 16#87#) = 16#80#;
   end Is_BLX;

   function Is_BL32_First_Half
     (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      --  BL/BLX T1 first halfword: bits 15..11 = 11110
      --  Opcode top 5 bits = 1111_0 => (Opcode and 0xF8) = 0xF0
      return (Instruction.Opcode and 16#F8#) = 16#F0#;
   end Is_BL32_First_Half;

   function Is_BL32_Second_Half
     (Instruction : Thumb_Instruction_Type) return Boolean is
   begin
      --  BL T1 second halfword: bits 15,14,12 all = 1
      --  In opcode byte: bits 7,6,4 => mask 0xD0, value 0xD0
      return (Instruction.Opcode and 16#D0#) = 16#D0#;
   end Is_BL32_Second_Half;

end Microcontroller.Arm_Cortex_M;
