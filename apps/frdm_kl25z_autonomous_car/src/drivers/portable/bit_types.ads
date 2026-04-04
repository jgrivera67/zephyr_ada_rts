--
--  Copyright (c) 2026, German Rivera
--
--  SPDX-License-Identifier: Apache-2.0
--
--  App-specific bit-sized type definitions for the FRDM-KL25Z Autonomous Car.
--  Replaces the non-standard GNAT Interfaces.Bit_Types package with equivalent
--  definitions expressed in standard Ada modular types and Interfaces subtypes.
--
with Interfaces;

package Bit_Types is

   pragma Pure;

   --  Standard-width subtypes matching Interfaces naming
   subtype Unsigned_8  is Interfaces.Unsigned_8;
   subtype Unsigned_16 is Interfaces.Unsigned_16;
   subtype Unsigned_32 is Interfaces.Unsigned_32;
   subtype Unsigned_64 is Interfaces.Unsigned_64;

   --  Named aliases matching Interfaces.Bit_Types conventions
   subtype Byte     is Interfaces.Unsigned_8;
   subtype HalfWord is Interfaces.Unsigned_16;
   subtype Word     is Interfaces.Unsigned_32;

   --  Sub-byte modular types
   type Bit    is mod 2**1  with Size => 1;
   type UInt2  is mod 2**2  with Size => 2;
   type UInt3  is mod 2**3  with Size => 3;
   type UInt4  is mod 2**4  with Size => 4;
   type UInt5  is mod 2**5  with Size => 5;
   type UInt6  is mod 2**6  with Size => 6;
   type UInt7  is mod 2**7  with Size => 7;

   --  UInt8 = Byte (defined above)

   type UInt9  is mod 2**9  with Size => 9;
   type UInt10 is mod 2**10 with Size => 10;
   type UInt11 is mod 2**11 with Size => 11;
   type UInt12 is mod 2**12 with Size => 12;
   type UInt13 is mod 2**13 with Size => 13;
   type UInt14 is mod 2**14 with Size => 14;
   type UInt15 is mod 2**15 with Size => 15;

   --  UInt16 = HalfWord (defined above)

   type UInt17 is mod 2**17 with Size => 17;
   type UInt18 is mod 2**18 with Size => 18;
   type UInt19 is mod 2**19 with Size => 19;
   type UInt20 is mod 2**20 with Size => 20;
   type UInt21 is mod 2**21 with Size => 21;
   type UInt22 is mod 2**22 with Size => 22;
   type UInt23 is mod 2**23 with Size => 23;
   type UInt24 is mod 2**24 with Size => 24;
   type UInt25 is mod 2**25 with Size => 25;
   type UInt26 is mod 2**26 with Size => 26;
   type UInt27 is mod 2**27 with Size => 27;
   type UInt28 is mod 2**28 with Size => 28;
   type UInt29 is mod 2**29 with Size => 29;
   type UInt30 is mod 2**30 with Size => 30;
   type UInt31 is mod 2**31 with Size => 31;

   --  UInt32 = Word (defined above)

   --  Shift and rotate operations (renamings from Interfaces)
   function Shift_Left
     (Value : Interfaces.Unsigned_32; Amount : Natural)
      return Interfaces.Unsigned_32
     renames Interfaces.Shift_Left;

   function Shift_Right
     (Value : Interfaces.Unsigned_32; Amount : Natural)
      return Interfaces.Unsigned_32
     renames Interfaces.Shift_Right;

   function Shift_Right_Arithmetic
     (Value : Interfaces.Unsigned_32; Amount : Natural)
      return Interfaces.Unsigned_32
     renames Interfaces.Shift_Right_Arithmetic;

   function Rotate_Left
     (Value : Interfaces.Unsigned_32; Amount : Natural)
      return Interfaces.Unsigned_32
     renames Interfaces.Rotate_Left;

   function Rotate_Right
     (Value : Interfaces.Unsigned_32; Amount : Natural)
      return Interfaces.Unsigned_32
     renames Interfaces.Rotate_Right;

   function Shift_Left
     (Value : Interfaces.Unsigned_64; Amount : Natural)
      return Interfaces.Unsigned_64
     renames Interfaces.Shift_Left;

   function Shift_Right
     (Value : Interfaces.Unsigned_64; Amount : Natural)
      return Interfaces.Unsigned_64
     renames Interfaces.Shift_Right;

end Bit_Types;
