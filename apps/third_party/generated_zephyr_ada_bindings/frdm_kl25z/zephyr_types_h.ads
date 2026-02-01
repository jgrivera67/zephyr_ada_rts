pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with stddef_h;
with System;

package zephyr_types_h is

   --  unsupported macro: Z_THREAD_LOCAL _Thread_local
  -- * Copyright (c) 2017 Linaro Limited
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- * A type with strong alignment requirements, similar to C11 max_align_t. It can
  -- * be used to force alignment of data structures allocated on the stack or as
  -- * return * type for heap allocators.
  --  

   type z_max_align_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            thelonglong : aliased Long_Long_Integer;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:23
         when 1 =>
            thelongdouble : aliased long_double;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:24
         when 2 =>
            theuintmax_t : aliased sys_ustdint_h.uintmax_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:25
         when 3 =>
            thesize_t : aliased stddef_h.size_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:26
         when 4 =>
            theuintptr_t : aliased sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:27
         when 5 =>
            thepvoid : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:28
         when others =>
            thepfunc : access procedure;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:29
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/types.h:30

  -- * Thread local variables are declared with different keywords depending on
  -- * which C/C++ standard that is used. C++11 and C23 uses "thread_local" whilst
  -- * C11 uses "_Thread_local". Previously the GNU "__thread" keyword was used
  -- * which is the same in both gcc and g++.
  --  

  -- * Zephyr requires an int main(void) signature with C linkage for the
  -- * application main if present. gcc, and clang when building in 'hosted' mode
  -- * will correctly assume this. But, when building freestanding, clang does not
  -- * treat main() specially, and by default name mangles its symbol, which
  -- * results in the linker not linking from the kernel init code into this
  -- * name mangled app main().
  -- *
  -- * At the same time, according to the C++ standard Section 6.9.3.1 of
  -- * ISO/IEC 14882:2024, main cannot be explicitly declared to have "C" linkage.
  -- * This restriction is relaxed for freestanding code, as main is not treated
  -- * specially in these circumstances.
  -- * Therefore, let's include the prototype when we are not building the code as
  -- * freestanding/not-hosted.
  --  

end zephyr_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
