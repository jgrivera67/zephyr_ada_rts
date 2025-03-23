pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with zephyr_sys_atomic_types_h;
with Interfaces.C.Extensions;
with System;

package zephyr_sys_atomic_h is

   --  arg-macro: function ATOMIC_INIT (i)
   --    return i;
   --  arg-macro: function ATOMIC_PTR_INIT (p)
   --    return p;
   --  unsupported macro: ATOMIC_BITS (sizeof(atomic_val_t) * BITS_PER_BYTE)
   --  arg-macro: procedure ATOMIC_MASK (bit)
   --    BIT((unsigned long)(bit) and (ATOMIC_BITS - 1))
   --  arg-macro: function ATOMIC_ELEM (addr, bit)
   --    return (addr) + ((bit) / ATOMIC_BITS);
   --  arg-macro: function ATOMIC_BITMAP_SIZE (num_bits)
   --    return ROUND_UP(num_bits, ATOMIC_BITS) / ATOMIC_BITS;
   --  arg-macro: procedure ATOMIC_DEFINE (name, num_bits)
   --    atomic_t name(ATOMIC_BITMAP_SIZE(num_bits))
  -- * Copyright (c) 1997-2015, Wind River Systems, Inc.
  -- * Copyright (c) 2021 Intel Corporation
  -- * Copyright (c) 2023 Nordic Semiconductor ASA
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  -- IWYU pragma: export  
  -- Low-level primitives come in several styles:  
  -- Generic-but-slow implementation based on kernel locking and syscalls  
  -- Some architectures need their own implementation  
  -- Not all Xtensa toolchains support GCC-style atomic intrinsics  
  -- Other arch specific implementation  
  -- Default.  See this file for the Doxygen reference:  
  -- Portable higher-level utilities:  
  --*
  -- * @defgroup atomic_apis Atomic Services APIs
  -- * @ingroup kernel_apis
  -- * @{
  --  

  --*
  -- * @brief Initialize an atomic variable.
  -- *
  -- * This macro can be used to initialize an atomic variable. For example,
  -- * @code atomic_t my_var = ATOMIC_INIT(75); @endcode
  -- *
  -- * @param i Value to assign to atomic variable.
  --  

  --*
  -- * @brief Initialize an atomic pointer variable.
  -- *
  -- * This macro can be used to initialize an atomic pointer variable. For
  -- * example,
  -- * @code atomic_ptr_t my_ptr = ATOMIC_PTR_INIT(&data); @endcode
  -- *
  -- * @param p Pointer value to assign to atomic pointer variable.
  --  

  --*
  -- * @cond INTERNAL_HIDDEN
  --  

  --*
  -- * INTERNAL_HIDDEN @endcond
  --  

  --*
  -- * @brief This macro computes the number of atomic variables necessary to
  -- * represent a bitmap with @a num_bits.
  -- *
  -- * @param num_bits Number of bits.
  --  

  --*
  -- * @brief Define an array of atomic variables.
  -- *
  -- * This macro defines an array of atomic variables containing at least
  -- * @a num_bits bits.
  -- *
  -- * @note
  -- * If used from file scope, the bits of the array are initialized to zero;
  -- * if used from within a function, the bits are left uninitialized.
  -- *
  -- * @cond INTERNAL_HIDDEN
  -- * @note
  -- * This macro should be replicated in the PREDEFINED field of the documentation
  -- * Doxyfile.
  -- * @endcond
  -- *
  -- * @param name Name of array of atomic variables.
  -- * @param num_bits Number of bits needed.
  --  

  --*
  -- * @brief Atomically get and test a bit.
  -- *
  -- * Atomically get a value and then test whether bit number @a bit of @a target is set or not.
  -- * The target may be a single atomic variable or an array of them.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable or array.
  -- * @param bit Bit number (starting from 0).
  -- *
  -- * @return true if the bit was set, false if it wasn't.
  --  

   function atomic_test_bit (target : access zephyr_sys_atomic_types_h.atomic_t; bit : int) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_test_bit";

  --*
  -- * @brief Atomically clear a bit and test it.
  -- *
  -- * Atomically clear bit number @a bit of @a target and return its old value.
  -- * The target may be a single atomic variable or an array of them.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable or array.
  -- * @param bit Bit number (starting from 0).
  -- *
  -- * @return false if the bit was already cleared, true if it wasn't.
  --  

   function atomic_test_and_clear_bit (target : access zephyr_sys_atomic_types_h.atomic_t; bit : int) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_test_and_clear_bit";

  --*
  -- * @brief Atomically set a bit and test it.
  -- *
  -- * Atomically set bit number @a bit of @a target and return its old value.
  -- * The target may be a single atomic variable or an array of them.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable or array.
  -- * @param bit Bit number (starting from 0).
  -- *
  -- * @return true if the bit was already set, false if it wasn't.
  --  

   function atomic_test_and_set_bit (target : access zephyr_sys_atomic_types_h.atomic_t; bit : int) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_test_and_set_bit";

  --*
  -- * @brief Atomically clear a bit.
  -- *
  -- * Atomically clear bit number @a bit of @a target.
  -- * The target may be a single atomic variable or an array of them.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable or array.
  -- * @param bit Bit number (starting from 0).
  --  

   procedure atomic_clear_bit (target : access zephyr_sys_atomic_types_h.atomic_t; bit : int)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_clear_bit";

  --*
  -- * @brief Atomically set a bit.
  -- *
  -- * Atomically set bit number @a bit of @a target.
  -- * The target may be a single atomic variable or an array of them.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable or array.
  -- * @param bit Bit number (starting from 0).
  --  

   procedure atomic_set_bit (target : access zephyr_sys_atomic_types_h.atomic_t; bit : int)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_set_bit";

  --*
  -- * @brief Atomically set a bit to a given value.
  -- *
  -- * Atomically set bit number @a bit of @a target to value @a val.
  -- * The target may be a single atomic variable or an array of them.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable or array.
  -- * @param bit Bit number (starting from 0).
  -- * @param val true for 1, false for 0.
  --  

   procedure atomic_set_bit_to
     (target : access zephyr_sys_atomic_types_h.atomic_t;
      bit : int;
      val : Extensions.bool)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_set_bit_to";

  --*
  -- * @brief Atomic compare-and-set.
  -- *
  -- * This routine performs an atomic compare-and-set on @a target. If the current
  -- * value of @a target equals @a old_value, @a target is set to @a new_value.
  -- * If the current value of @a target does not equal @a old_value, @a target
  -- * is left unchanged.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param old_value Original value to compare against.
  -- * @param new_value New value to store.
  -- * @return true if @a new_value is written, false otherwise.
  --  

  --*
  -- * @brief Atomic compare-and-set with pointer values
  -- *
  -- * This routine performs an atomic compare-and-set on @a target. If the current
  -- * value of @a target equals @a old_value, @a target is set to @a new_value.
  -- * If the current value of @a target does not equal @a old_value, @a target
  -- * is left unchanged.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param old_value Original value to compare against.
  -- * @param new_value New value to store.
  -- * @return true if @a new_value is written, false otherwise.
  --  

  --*
  -- * @brief Atomic addition.
  -- *
  -- * This routine performs an atomic addition on @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to add.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic subtraction.
  -- *
  -- * This routine performs an atomic subtraction on @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to subtract.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic increment.
  -- *
  -- * This routine performs an atomic increment by 1 on @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic decrement.
  -- *
  -- * This routine performs an atomic decrement by 1 on @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic get.
  -- *
  -- * This routine performs an atomic read on @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- *
  -- * @return Value of @a target.
  --  

   function atomic_get (target : access zephyr_sys_atomic_types_h.atomic_t) return zephyr_sys_atomic_types_h.atomic_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_get";

  --*
  -- * @brief Atomic get a pointer value
  -- *
  -- * This routine performs an atomic read on @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of pointer variable.
  -- *
  -- * @return Value of @a target.
  --  

   function atomic_ptr_get (target : System.Address) return zephyr_sys_atomic_types_h.atomic_ptr_val_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/atomic.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "atomic_ptr_get";

  --*
  -- * @brief Atomic get-and-set.
  -- *
  -- * This routine atomically sets @a target to @a value and returns
  -- * the previous value of @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to write to @a target.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic get-and-set for pointer values
  -- *
  -- * This routine atomically sets @a target to @a value and returns
  -- * the previous value of @a target.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to write to @a target.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic clear.
  -- *
  -- * This routine atomically sets @a target to zero and returns its previous
  -- * value. (Hence, it is equivalent to atomic_set(target, 0).)
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic clear of a pointer value
  -- *
  -- * This routine atomically sets @a target to zero and returns its previous
  -- * value. (Hence, it is equivalent to atomic_set(target, 0).)
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic bitwise inclusive OR.
  -- *
  -- * This routine atomically sets @a target to the bitwise inclusive OR of
  -- * @a target and @a value.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to OR.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic bitwise exclusive OR (XOR).
  -- *
  -- * @note @atomic_api
  -- *
  -- * This routine atomically sets @a target to the bitwise exclusive OR (XOR) of
  -- * @a target and @a value.
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to XOR
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic bitwise AND.
  -- *
  -- * This routine atomically sets @a target to the bitwise AND of @a target
  -- * and @a value.
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to AND.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @brief Atomic bitwise NAND.
  -- *
  -- * This routine atomically sets @a target to the bitwise NAND of @a target
  -- * and @a value. (This operation is equivalent to target = ~(target & value).)
  -- *
  -- * @note @atomic_api
  -- *
  -- * @param target Address of atomic variable.
  -- * @param value Value to NAND.
  -- *
  -- * @return Previous value of @a target.
  --  

  --*
  -- * @}
  --  

  -- extern "C"  
end zephyr_sys_atomic_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
