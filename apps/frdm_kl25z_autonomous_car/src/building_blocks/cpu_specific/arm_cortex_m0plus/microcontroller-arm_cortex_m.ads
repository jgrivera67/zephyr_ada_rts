--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  ARM Cortex-M specific operations for the NXP KL25Z (Cortex-M0+) port.
--  Provides CPU-level register access, interrupt control, and Thumb
--  instruction pattern matching used by the stack-trace unwinder.
--
with System;
with Bit_Types;

package Microcontroller.Arm_Cortex_M is
   pragma Preelaborate;
   pragma SPARK_Mode (Off);

   use Bit_Types;

   --  ARM Thumb code flag: bit 0 of a return address is 1 for Thumb mode.
   Arm_Thumb_Code_Flag : constant Integer_Address := 1;

   --  ARM Cortex-M EXC_RETURN special values (Cortex-M0+, no FPU).
   Cpu_Exc_Return_To_Thread_Mode_Using_Psp     : constant := 16#FFFF_FFFD#;
   Cpu_Exc_Return_To_Thread_Mode_Using_Psp_Fpu : constant := 16#FFFF_FFED#;

   --  Size of a Thumb 16-bit half-word instruction in bytes.
   Instruction_Size : constant Storage_Offset := 2;

   --  16-bit Thumb instruction split into opcode (bits 15..8) and operand
   --  (bits 7..0).  The operand field holds the immediate or register-list
   --  bits consumed by the stack-trace unwinder.
   type Thumb_Instruction_Type is record
      Operand : Byte := 0;  --  bits  7..0: immediate / register-list
      Opcode  : Byte := 0;  --  bits 15..8: opcode
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for Thumb_Instruction_Type use record
      Operand at 0 range 0 ..  7;
      Opcode  at 0 range 8 .. 15;
   end record;

   --  Mask for the 7-bit immediate in a SUB SP, SP, #imm7 instruction.
   --  Bit 7 of the Operand field is the SUB/ADD distinguishing flag.
   Sub_SP_Immeditate_Operand_Mask : constant Byte := 16#7F#;

   --  32-bit stack entry (one word on the Cortex-M0+ call stack).
   type Stack_Entry_Type is mod 2**32 with Size => 32;

   --  Size of one stack entry in bytes.
   Stack_Entry_Size : constant Storage_Offset :=
     Stack_Entry_Type'Size / System.Storage_Unit;

   --  -----------------------------------------------------------------------
   --  ARM System Control Block AIRCR register
   --  -----------------------------------------------------------------------

   type VECTKEY_Type is mod 2**16 with Size => 16;

   type AIRCR_Type is record
      Reserved_0    : Bit        := 0;  --  bit 0
      VECTCLRACTIVE : Bit        := 0;  --  bit 1
      SYSRESETREQ   : Bit        := 0;  --  bit 2: request system reset
      Reserved_3_14 : UInt12     := 0;  --  bits 3..14
      ENDIANNESS    : Bit        := 0;  --  bit 15: 0 = little-endian
      VECTKEY       : VECTKEY_Type := 0;  --  bits 16..31: write key = 0x05FA
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIRCR_Type use record
      Reserved_0    at 0 range  0 ..  0;
      VECTCLRACTIVE at 0 range  1 ..  1;
      SYSRESETREQ   at 0 range  2 ..  2;
      Reserved_3_14 at 0 range  3 .. 14;
      ENDIANNESS    at 0 range 15 .. 15;
      VECTKEY       at 0 range 16 .. 31;
   end record;

   --  -----------------------------------------------------------------------
   --  ARM System Control Block (SCB) — minimal layout: CPUID, ICSR, VTOR,
   --  AIRCR (the only field written by this driver).
   --  -----------------------------------------------------------------------

   type SCB_Registers_Type is record
      CPUID : Word;       --  offset 0x00
      ICSR  : Word;       --  offset 0x04
      VTOR  : Word;       --  offset 0x08
      AIRCR : AIRCR_Type; --  offset 0x0C
   end record
     with Volatile;

   for SCB_Registers_Type use record
      CPUID at  0 range 0 .. 31;
      ICSR  at  4 range 0 .. 31;
      VTOR  at  8 range 0 .. 31;
      AIRCR at 12 range 0 .. 31;
   end record;

   --  ARM Cortex-M System Control Block at the fixed PPB address
   SCB : aliased SCB_Registers_Type
     with Import, Address => System'To_Address (16#E000_ED00#);

   --  -----------------------------------------------------------------------
   --  CPU interrupt control
   --  -----------------------------------------------------------------------

   function Disable_Cpu_Interrupts return Word
     with Inline_Always;
   --  Disable all maskable interrupts (CPSID i) and return the previous
   --  PRIMASK value so the caller can restore it later.

   procedure Restore_Cpu_Interrupts (Old_Mask : Word)
     with Inline_Always;
   --  Restore the PRIMASK register to the value saved by Disable_Cpu_Interrupts.

   function Are_Cpu_Interrupts_Disabled return Boolean
     with Inline_Always;
   --  Return True when all maskable interrupts are disabled (PRIMASK bit 0 = 1).

   procedure Data_Synchronization_Barrier
     with Inline_Always;
   --  Issue a DSB instruction to ensure all memory accesses are complete.

   --  -----------------------------------------------------------------------
   --  CPU register access
   --  -----------------------------------------------------------------------

   function Get_LR_Register return System.Address
     with Inline_Always;
   --  Return the current value of the Link Register (LR / R14).

   function Get_Frame_Pointer_Register return System.Address
     with Inline_Always;
   --  Return the current frame pointer (R7 under Thumb).

   function Get_PSP_Register return Word
     with Inline_Always;
   --  Return the current Process Stack Pointer (PSP).

   function Is_Cpu_Using_MSP_Stack_Pointer return Boolean
     with Inline_Always;
   --  Return True when the CPU CONTROL.SPSEL bit is 0 (using MSP).

   function Is_Caller_An_Interrupt_Handler return Boolean
     with Inline_Always;
   --  Return True when called from an exception / interrupt handler
   --  (IPSR exception number is non-zero).

   --  -----------------------------------------------------------------------
   --  Address manipulation utilities
   --  -----------------------------------------------------------------------

   function Return_Address_To_Call_Address
     (Return_Address : System.Address) return System.Address
     with Inline;
   --  Strip the Thumb bit from a return address to get the call-site address.

   function Is_Cpu_Exception_Return
     (Return_Address : System.Address) return Boolean
     with Inline;
   --  Return True when the address is one of the ARM EXC_RETURN magic values
   --  (upper 28 bits = 0xFFFFFFF).

   --  -----------------------------------------------------------------------
   --  Thumb instruction pattern recognition (for stack unwinding)
   --  -----------------------------------------------------------------------

   function Is_Add_R7_SP_Immeditate
     (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True for ADD R7, SP, #imm8 (T2 encoding, opcode byte = 0xAF).

   function Is_Sub_SP_Immeditate
     (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True for SUB SP, SP, #imm7 (T1 encoding, opcode = 0xB0, bit 7
   --  of operand = 1).

   function Is_Push_R7
     (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True when the instruction is any PUSH that saves R7 (with or
   --  without LR).

   function Is_Push_R7_LR
     (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True when the instruction is PUSH {...r7, lr}.

   function Push_Operand_Includes_LR
     (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True when the PUSH instruction saves LR (R bit set in opcode).

   function Get_Pushed_R7_Stack_Offset
     (Instruction : Thumb_Instruction_Type) return Storage_Offset
     with Inline;
   --  Return the byte offset of the saved R7 value from the new SP after
   --  the PUSH instruction executes.

   function Is_BLX (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True when the 16-bit value is a BLX Rm instruction.

   function Is_BL32_First_Half
     (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True when the 16-bit value is the first halfword of a BL/BLX
   --  32-bit Thumb-2 instruction.

   function Is_BL32_Second_Half
     (Instruction : Thumb_Instruction_Type) return Boolean
     with Inline;
   --  Return True when the 16-bit value is the second halfword of a BL
   --  32-bit Thumb-2 instruction.

end Microcontroller.Arm_Cortex_M;
