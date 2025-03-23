pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;
with sys_ustdint_h;
with stddef_h;
with Interfaces.C.Strings;

package zephyr_sys_util_h is

   --  arg-macro: function NUM_BITS (t)
   --    return sizeof(t) * BITS_PER_BYTE;
   --  arg-macro: function POINTER_TO_UINT (x)
   --    return (uintptr_t) (x);
   --  arg-macro: function UINT_TO_POINTER (x)
   --    return (void *) (uintptr_t) (x);
   --  arg-macro: function POINTER_TO_INT (x)
   --    return (intptr_t) (x);
   --  arg-macro: function INT_TO_POINTER (x)
   --    return (void *) (intptr_t) (x);
   --  unsupported macro: BITS_PER_BYTE (__CHAR_BIT__)
   --  unsupported macro: BITS_PER_NIBBLE (__CHAR_BIT__ / 2)
   --  unsupported macro: NIBBLES_PER_BYTE (BITS_PER_BYTE / BITS_PER_NIBBLE)
   --  unsupported macro: BITS_PER_LONG (__CHAR_BIT__ * __SIZEOF_LONG__)
   --  unsupported macro: BITS_PER_LONG_LONG (__CHAR_BIT__ * __SIZEOF_LONG_LONG__)
   --  arg-macro: function GENMASK (h, l)
   --    return ((~0) - (2 ** (l)) + 1) and (~0 >> (BITS_PER_LONG - 1 - (h)));
   --  arg-macro: function GENMASK64 (h, l)
   --    return ((~0) - (2 ** (l)) + 1) and (~0 >> (BITS_PER_LONG_LONG - 1 - (h)));
   --  arg-macro: function ZERO_OR_COMPILE_ERROR (cond)
   --    return (int) sizeof(char(1 - 2 * not(cond))) - 1;
   --  arg-macro: procedure IS_ARRAY (array)
   --    ZERO_OR_COMPILE_ERROR( not__builtin_types_compatible_p(__typeof__(array), __typeof__(and(array)(0))))
   --  arg-macro: function ARRAY_SIZE (array)
   --    return (size_t) (IS_ARRAY(array) + (sizeof(array) / sizeof((array)(0))));
   --  unsupported macro: FLEXIBLE_ARRAY_DECLARE(type,name) struct { struct { } __unused_ ##name; type name[]; }
   --  arg-macro: function IS_ARRAY_ELEMENT (array, ptr)
   --    return (ptr)  and then  POINTER_TO_UINT(array) <= POINTER_TO_UINT(ptr)  and then  POINTER_TO_UINT(ptr) < POINTER_TO_UINT(and(array)(ARRAY_SIZE(array)))  and then  (POINTER_TO_UINT(ptr) - POINTER_TO_UINT(array)) mod sizeof((array)(0)) = 0;
   --  arg-macro: function ARRAY_INDEX (array, ptr)
   --    return { __ASSERT_NO_MSG(IS_ARRAY_ELEMENT(array, ptr)); (__typeof__((array)(0)) *)(ptr) - (array); };
   --  arg-macro: function PART_OF_ARRAY (array, ptr)
   --    return (ptr)  and then  POINTER_TO_UINT(array) <= POINTER_TO_UINT(ptr)  and then  POINTER_TO_UINT(ptr) < POINTER_TO_UINT(and(array)(ARRAY_SIZE(array)));
   --  arg-macro: function ARRAY_INDEX_FLOOR (array, ptr)
   --    return { __ASSERT_NO_MSG(PART_OF_ARRAY(array, ptr)); (POINTER_TO_UINT(ptr) - POINTER_TO_UINT(array)) / sizeof((array)(0)); };
   --  arg-macro: procedure ARRAY_FOR_EACH (array, idx)
   --    for (size_t idx := 0; (idx) < ARRAY_SIZE(array); ++(idx))
   --  arg-macro: procedure ARRAY_FOR_EACH_PTR (array, ptr)
   --    for (__typeof__(*(array)) *ptr := (array); (size_t)((ptr) - (array)) < ARRAY_SIZE(array); ++(ptr))
   --  arg-macro: procedure SAME_TYPE (a, b)
   --    __builtin_types_compatible_p(__typeof__(a), __typeof__(b))
   --  arg-macro: procedure CONTAINER_OF_VALIDATE (ptr, type, field)
   --    BUILD_ASSERT(SAME_TYPE(*(ptr), ((type *)0).field)  or else  SAME_TYPE(*(ptr), void), "pointer type mismatch in CONTAINER_OF");
   --  arg-macro: function CONTAINER_OF (ptr, type, field)
   --    return { CONTAINER_OF_VALIDATE(ptr, type, field) ((type *)(((char *)(ptr)) - offsetof(type, field))); };
   --  arg-macro: procedure SIZEOF_FIELD (type, member)
   --    sizeof((((type *)0).member))
   --  unsupported macro: CONCAT(...) UTIL_CAT(_CONCAT_, NUM_VA_ARGS_LESS_1(__VA_ARGS__))(__VA_ARGS__)
   --  arg-macro: function IS_ALIGNED (ptr, align)
   --    return ((uintptr_t)(ptr)) mod (align) = 0;
   --  arg-macro: function ROUND_UP (x, align)
   --    return (((unsigned long)(x) + ((unsigned long)(align) - 1)) / (unsigned long)(align)) * (unsigned long)(align);
   --  arg-macro: function ROUND_DOWN (x, align)
   --    return ((unsigned long)(x) / (unsigned long)(align)) * (unsigned long)(align);
   --  arg-macro: procedure WB_UP (x)
   --    ROUND_UP(x, sizeof(void *))
   --  arg-macro: procedure WB_DN (x)
   --    ROUND_DOWN(x, sizeof(void *))
   --  arg-macro: function DIV_ROUND_UP (n, d)
   --    return ((n) + (d) - 1) / (d);
   --  arg-macro: function DIV_ROUND_CLOSEST (n, d)
   --    return ((((__typeof__(n))-1) < 0)  and then  (((__typeof__(d))-1) < 0)  and then  ((n) < 0) xor ((d) < 0)) ? ((n) - ((d) / 2)) / (d) : ((n) + ((d) / 2)) / (d);
   --  arg-macro: function MAX (a, b)
   --    return ((a) > (b)) ? (a) : (b);
   --  arg-macro: function MIN (a, b)
   --    return ((a) < (b)) ? (a) : (b);
   --  arg-macro: function CLAMP (val, low, high)
   --    return ((val) <= (low)) ? (low) : MIN(val, high);
   --  arg-macro: function IN_RANGE (val, min, max)
   --    return (val) >= (min)  and then  (val) <= (max);
   --  arg-macro: function LOG2 (x)
   --    return (x) < 1 ? -1 : __z_log2(x);
   --  arg-macro: function LOG2CEIL (x)
   --    return (x) <= 1 ? 0 : __z_log2((x)-1) + 1;
   --  arg-macro: function NHPOT (x)
   --    return (x) < 1 ? 1 : ((x) > (2**63) ? 0 : 2 ** LOG2CEIL(x));
   --  arg-macro: function Z_DETECT_POINTER_OVERFLOW (addr, buflen)
   --    return ((buflen) /= 0)  and then  ((UINTPTR_MAX - (uintptr_t)(addr)) <= ((uintptr_t)((buflen) - 1)));
   --  arg-macro: function KB (x)
   --    return ((size_t)(x)) << 10;
   --  arg-macro: function MB (x)
   --    return KB(x) << 10;
   --  arg-macro: function GB (x)
   --    return MB(x) << 10;
   --  arg-macro: function KHZ (x)
   --    return (x) * 1000;
   --  arg-macro: function MHZ (x)
   --    return KHZ(x) * 1000;
   --  arg-macro: function WAIT_FOR (expr, timeout, delay_stmt)
   --    return { uint32_t _wf_cycle_count := k_us_to_cyc_ceil32(timeout); uint32_t _wf_start := k_cycle_get_32(); while (not(expr)  and then  (_wf_cycle_count > (k_cycle_get_32() - _wf_start))) { delay_stmt; Z_SPIN_DELAY(10); } (expr); };
  -- * Copyright (c) 2011-2014, Wind River Systems, Inc.
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @brief Misc utilities
  -- *
  -- * Misc utilities usable by the kernel and application code.
  --  

  -- needs to be outside _ASMLANGUAGE so 'true' and 'false' can turn
  -- * into '1' and '0' for asm or linker scripts
  --  

  --* @brief Number of bits that make up a type  
  --*
  -- * @defgroup sys-util Utility Functions
  -- * @since 2.4
  -- * @version 0.1.0
  -- * @ingroup utilities
  -- * @{
  --  

  --* @brief Cast @p x, a pointer, to an unsigned integer.  
  --* @brief Cast @p x, an unsigned integer, to a <tt>void*</tt>.  
  --* @brief Cast @p x, a pointer, to a signed integer.  
  --* @brief Cast @p x, a signed integer, to a <tt>void*</tt>.  
  --* Number of bits in a byte.  
  --* Number of bits in a nibble.  
  --* Number of nibbles in a byte.  
  --* Number of bits in a long int.  
  --* Number of bits in a long long int.  
  --*
  -- * @brief Create a contiguous bitmask starting at bit position @p l
  -- *        and ending at position @p h.
  --  

  --*
  -- * @brief Create a contiguous 64-bit bitmask starting at bit position @p l
  -- *        and ending at position @p h.
  --  

  --* @brief 0 if @p cond is true-ish; causes a compile error otherwise.  
  -- The built-in function used below for type checking in C is not
  -- * supported by GNU C++.
  --  

  --*
  -- * @brief Zero if @p array has an array type, a compile error otherwise
  -- *
  -- * This macro is available only from C, not C++.
  --  

  --*
  -- * @brief Number of elements in the given @p array
  -- *
  -- * In C++, due to language limitations, this will accept as @p array
  -- * any type that implements <tt>operator[]</tt>. The results may not be
  -- * particularly meaningful in this case.
  -- *
  -- * In C, passing a pointer as @p array causes a compile error.
  --  

  --*
  -- * @brief Declare a flexible array member.
  -- *
  -- * This macro declares a flexible array member in a struct. The member
  -- * is named @p name and has type @p type.
  -- *
  -- * Since C99, flexible arrays are part of the C standard, but for historical
  -- * reasons many places still use an older GNU extension that is declare
  -- * zero length arrays.
  -- *
  -- * Although zero length arrays are flexible arrays, we can't blindly
  -- * replace [0] with [] because of some syntax limitations. This macro
  -- * workaround these limitations.
  -- *
  -- * It is specially useful for cases where flexible arrays are
  -- * used in unions or are not the last element in the struct.
  --  

  --*
  -- * @brief Whether @p ptr is an element of @p array
  -- *
  -- * This macro can be seen as a slightly stricter version of @ref PART_OF_ARRAY
  -- * in that it also ensures that @p ptr is aligned to an array-element boundary
  -- * of @p array.
  -- *
  -- * In C, passing a pointer as @p array causes a compile error.
  -- *
  -- * @param array the array in question
  -- * @param ptr the pointer to check
  -- *
  -- * @return 1 if @p ptr is part of @p array, 0 otherwise
  --  

  --*
  -- * @brief Index of @p ptr within @p array
  -- *
  -- * With `CONFIG_ASSERT=y`, this macro will trigger a runtime assertion
  -- * when @p ptr does not fall into the range of @p array or when @p ptr
  -- * is not aligned to an array-element boundary of @p array.
  -- *
  -- * In C, passing a pointer as @p array causes a compile error.
  -- *
  -- * @param array the array in question
  -- * @param ptr pointer to an element of @p array
  -- *
  -- * @return the array index of @p ptr within @p array, on success
  --  

  --*
  -- * @brief Check if a pointer @p ptr lies within @p array.
  -- *
  -- * In C but not C++, this causes a compile error if @p array is not an array
  -- * (e.g. if @p ptr and @p array are mixed up).
  -- *
  -- * @param array an array
  -- * @param ptr a pointer
  -- * @return 1 if @p ptr is part of @p array, 0 otherwise
  --  

  --*
  -- * @brief Array-index of @p ptr within @p array, rounded down
  -- *
  -- * This macro behaves much like @ref ARRAY_INDEX with the notable
  -- * difference that it accepts any @p ptr in the range of @p array rather than
  -- * exclusively a @p ptr aligned to an array-element boundary of @p array.
  -- *
  -- * With `CONFIG_ASSERT=y`, this macro will trigger a runtime assertion
  -- * when @p ptr does not fall into the range of @p array.
  -- *
  -- * In C, passing a pointer as @p array causes a compile error.
  -- *
  -- * @param array the array in question
  -- * @param ptr pointer to an element of @p array
  -- *
  -- * @return the array index of @p ptr within @p array, on success
  --  

  --*
  -- * @brief Iterate over members of an array using an index variable
  -- *
  -- * @param array the array in question
  -- * @param idx name of array index variable
  --  

  --*
  -- * @brief Iterate over members of an array using a pointer
  -- *
  -- * @param array the array in question
  -- * @param ptr pointer to an element of @p array
  --  

  --*
  -- * @brief Validate if two entities have a compatible type
  -- *
  -- * @param a the first entity to be compared
  -- * @param b the second entity to be compared
  -- * @return 1 if the two elements are compatible, 0 if they are not
  --  

  --*
  -- * @brief Validate CONTAINER_OF parameters, only applies to C mode.
  --  

  --*
  -- * @brief Get a pointer to a structure containing the element
  -- *
  -- * Example:
  -- *
  -- *	struct foo {
  -- *		int bar;
  -- *	};
  -- *
  -- *	struct foo my_foo;
  -- *	int *ptr = &my_foo.bar;
  -- *
  -- *	struct foo *container = CONTAINER_OF(ptr, struct foo, bar);
  -- *
  -- * Above, @p container points at @p my_foo.
  -- *
  -- * @param ptr pointer to a structure element
  -- * @param type name of the type that @p ptr is an element of
  -- * @param field the name of the field within the struct @p ptr points to
  -- * @return a pointer to the structure that contains @p ptr
  --  

  --*
  -- * @brief Report the size of a struct field in bytes.
  -- *
  -- * @param type The structure containing the field of interest.
  -- * @param member The field to return the size of.
  -- *
  -- * @return The field size.
  --  

  --*
  -- * @brief Concatenate input arguments
  -- *
  -- * Concatenate provided tokens into a combined token during the preprocessor pass.
  -- * This can be used to, for ex., build an identifier out of multiple parts,
  -- * where one of those parts may be, for ex, a number, another macro, or a macro argument.
  -- *
  -- * @param ... Tokens to concatencate
  -- *
  -- * @return Concatenated token.
  --  

  --*
  -- * @brief Check if @p ptr is aligned to @p align alignment
  --  

  --*
  -- * @brief Value of @p x rounded up to the next multiple of @p align.
  --  

  --*
  -- * @brief Value of @p x rounded down to the previous multiple of @p align.
  --  

  --* @brief Value of @p x rounded up to the next word boundary.  
  --* @brief Value of @p x rounded down to the previous word boundary.  
  --*
  -- * @brief Divide and round up.
  -- *
  -- * Example:
  -- * @code{.c}
  -- * DIV_ROUND_UP(1, 2); // 1
  -- * DIV_ROUND_UP(3, 2); // 2
  -- * @endcode
  -- *
  -- * @param n Numerator.
  -- * @param d Denominator.
  -- *
  -- * @return The result of @p n / @p d, rounded up.
  --  

  --*
  -- * @brief Divide and round to the nearest integer.
  -- *
  -- * Example:
  -- * @code{.c}
  -- * DIV_ROUND_CLOSEST(5, 2); // 3
  -- * DIV_ROUND_CLOSEST(5, -2); // -3
  -- * DIV_ROUND_CLOSEST(5, 3); // 2
  -- * @endcode
  -- *
  -- * @param n Numerator.
  -- * @param d Denominator.
  -- *
  -- * @return The result of @p n / @p d, rounded to the nearest integer.
  --  

  --*
  -- * @brief Obtain the maximum of two values.
  -- *
  -- * @note Arguments are evaluated twice. Use Z_MAX for a GCC-only, single
  -- * evaluation version
  -- *
  -- * @param a First value.
  -- * @param b Second value.
  -- *
  -- * @returns Maximum value of @p a and @p b.
  --  

  --*
  -- * @brief Obtain the minimum of two values.
  -- *
  -- * @note Arguments are evaluated twice. Use Z_MIN for a GCC-only, single
  -- * evaluation version
  -- *
  -- * @param a First value.
  -- * @param b Second value.
  -- *
  -- * @returns Minimum value of @p a and @p b.
  --  

  --*
  -- * @brief Clamp a value to a given range.
  -- *
  -- * @note Arguments are evaluated multiple times. Use Z_CLAMP for a GCC-only,
  -- * single evaluation version.
  -- *
  -- * @param val Value to be clamped.
  -- * @param low Lowest allowed value (inclusive).
  -- * @param high Highest allowed value (inclusive).
  -- *
  -- * @returns Clamped value.
  --  

  --*
  -- * @brief Checks if a value is within range.
  -- *
  -- * @note @p val is evaluated twice.
  -- *
  -- * @param val Value to be checked.
  -- * @param min Lower bound (inclusive).
  -- * @param max Upper bound (inclusive).
  -- *
  -- * @retval true If value is within range
  -- * @retval false If the value is not within range
  --  

  --*
  -- * @brief Is @p x a power of two?
  -- * @param x value to check
  -- * @return true if @p x is a power of two, false otherwise
  --  

   function is_power_of_two (x : unsigned) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "is_power_of_two";

  --*
  -- * @brief Is @p p equal to ``NULL``?
  -- *
  -- * Some macros may need to check their arguments against NULL to support
  -- * multiple use-cases, but NULL checks can generate warnings if such a macro
  -- * is used in contexts where that particular argument can never be NULL.
  -- *
  -- * The warnings can be triggered if:
  -- * a) all macros are expanded (e.g. when using CONFIG_COMPILER_SAVE_TEMPS=y)
  -- * or
  -- * b) tracking of macro expansions are turned off (-ftrack-macro-expansion=0)
  -- *
  -- * The warnings can be circumvented by using this inline function for doing
  -- * the NULL check within the macro. The compiler is still able to optimize the
  -- * NULL check out at a later stage.
  -- *
  -- * @param p Pointer to check
  -- * @return true if @p p is equal to ``NULL``, false otherwise
  --  

   function is_null_no_warn (p : System.Address) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "is_null_no_warn";

  --*
  -- * @brief Arithmetic shift right
  -- * @param value value to shift
  -- * @param shift number of bits to shift
  -- * @return @p value shifted right by @p shift; opened bit positions are
  -- *         filled with the sign bit
  --  

   function arithmetic_shift_right (value : sys_ustdint_h.int64_t; shift : sys_ustdint_h.uint8_t) return sys_ustdint_h.int64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:475
   with Import => True, 
        Convention => C, 
        External_Name => "arithmetic_shift_right";

  -- extract sign bit  
  -- make all bits of sign_ext be the same as the value's sign bit  
  -- shift value and fill opened bit positions with sign bit  
  --*
  -- * @brief byte by byte memcpy.
  -- *
  -- * Copy `size` bytes of `src` into `dest`. This is guaranteed to be done byte by byte.
  -- *
  -- * @param dst Pointer to the destination memory.
  -- * @param src Pointer to the source of the data.
  -- * @param size The number of bytes to copy.
  --  

   procedure bytecpy
     (dst : System.Address;
      src : System.Address;
      size : stddef_h.size_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "bytecpy";

  --*
  -- * @brief byte by byte swap.
  -- *
  -- * Swap @a size bytes between memory regions @a a and @a b. This is
  -- * guaranteed to be done byte by byte.
  -- *
  -- * @param a Pointer to the first memory region.
  -- * @param b Pointer to the second memory region.
  -- * @param size The number of bytes to swap.
  --  

   procedure byteswp
     (a : System.Address;
      b : System.Address;
      size : stddef_h.size_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "byteswp";

  --*
  -- * @brief      Convert a single character into a hexadecimal nibble.
  -- *
  -- * @param c     The character to convert
  -- * @param x     The address of storage for the converted number.
  -- *
  -- *  @return Zero on success or (negative) error code otherwise.
  --  

   function char2hex (c : char; x : access sys_ustdint_h.uint8_t) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "char2hex";

  --*
  -- * @brief      Convert a single hexadecimal nibble into a character.
  -- *
  -- * @param c     The number to convert
  -- * @param x     The address of storage for the converted character.
  -- *
  -- *  @return Zero on success or (negative) error code otherwise.
  --  

   function hex2char (x : sys_ustdint_h.uint8_t; c : Interfaces.C.Strings.chars_ptr) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:552
   with Import => True, 
        Convention => C, 
        External_Name => "hex2char";

  --*
  -- * @brief      Convert a binary array into string representation.
  -- *
  -- * @param buf     The binary array to convert
  -- * @param buflen  The length of the binary array to convert
  -- * @param hex     Address of where to store the string representation.
  -- * @param hexlen  Size of the storage area for string representation.
  -- *
  -- * @return     The length of the converted string, or 0 if an error occurred.
  --  

   function bin2hex
     (buf : access sys_ustdint_h.uint8_t;
      buflen : stddef_h.size_t;
      hex : Interfaces.C.Strings.chars_ptr;
      hexlen : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:564
   with Import => True, 
        Convention => C, 
        External_Name => "bin2hex";

  --*
  -- * @brief      Convert a hexadecimal string into a binary array.
  -- *
  -- * @param hex     The hexadecimal string to convert
  -- * @param hexlen  The length of the hexadecimal string to convert.
  -- * @param buf     Address of where to store the binary data
  -- * @param buflen  Size of the storage area for binary data
  -- *
  -- * @return     The length of the binary array, or 0 if an error occurred.
  --  

   function hex2bin
     (hex : Interfaces.C.Strings.chars_ptr;
      hexlen : stddef_h.size_t;
      buf : access sys_ustdint_h.uint8_t;
      buflen : stddef_h.size_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "hex2bin";

  --*
  -- * @brief Convert a binary coded decimal (BCD 8421) value to binary.
  -- *
  -- * @param bcd BCD 8421 value to convert.
  -- *
  -- * @return Binary representation of input value.
  --  

   function bcd2bin (bcd : sys_ustdint_h.uint8_t) return sys_ustdint_h.uint8_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:585
   with Import => True, 
        Convention => C, 
        External_Name => "bcd2bin";

  --*
  -- * @brief Convert a binary value to binary coded decimal (BCD 8421).
  -- *
  -- * @param bin Binary value to convert.
  -- *
  -- * @return BCD 8421 representation of input value.
  --  

   function bin2bcd (bin : sys_ustdint_h.uint8_t) return sys_ustdint_h.uint8_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:597
   with Import => True, 
        Convention => C, 
        External_Name => "bin2bcd";

  --*
  -- * @brief      Convert a uint8_t into a decimal string representation.
  -- *
  -- * Convert a uint8_t value into its ASCII decimal string representation.
  -- * The string is terminated if there is enough space in buf.
  -- *
  -- * @param buf     Address of where to store the string representation.
  -- * @param buflen  Size of the storage area for string representation.
  -- * @param value   The value to convert to decimal string
  -- *
  -- * @return     The length of the converted string (excluding terminator if
  -- *             any), or 0 if an error occurred.
  --  

   function u8_to_dec
     (buf : Interfaces.C.Strings.chars_ptr;
      buflen : sys_ustdint_h.uint8_t;
      value : sys_ustdint_h.uint8_t) return sys_ustdint_h.uint8_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:615
   with Import => True, 
        Convention => C, 
        External_Name => "u8_to_dec";

  --*
  -- * @brief Sign extend an 8, 16 or 32 bit value using the index bit as sign bit.
  -- *
  -- * @param value The value to sign expand.
  -- * @param index 0 based bit index to sign bit (0 to 31)
  --  

   function sign_extend (value : sys_ustdint_h.uint32_t; index : sys_ustdint_h.uint8_t) return sys_ustdint_h.int32_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:623
   with Import => True, 
        Convention => C, 
        External_Name => "sign_extend";

  --*
  -- * @brief Sign extend a 64 bit value using the index bit as sign bit.
  -- *
  -- * @param value The value to sign expand.
  -- * @param index 0 based bit index to sign bit (0 to 63)
  --  

   function sign_extend_64 (value : sys_ustdint_h.uint64_t; index : sys_ustdint_h.uint8_t) return sys_ustdint_h.int64_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:638
   with Import => True, 
        Convention => C, 
        External_Name => "sign_extend_64";

  --*
  -- * @brief Properly truncate a NULL-terminated UTF-8 string
  -- *
  -- * Take a NULL-terminated UTF-8 string and ensure that if the string has been
  -- * truncated (by setting the NULL terminator) earlier by other means, that
  -- * the string ends with a properly formatted UTF-8 character (1-4 bytes).
  -- *
  -- * @htmlonly
  -- * Example:
  -- *      char test_str[] = "€€€";
  -- *      char trunc_utf8[8];
  -- *
  -- *      printf("Original : %s\n", test_str); // €€€
  -- *      strncpy(trunc_utf8, test_str, sizeof(trunc_utf8));
  -- *      trunc_utf8[sizeof(trunc_utf8) - 1] = '\0';
  -- *      printf("Bad      : %s\n", trunc_utf8); // €€�
  -- *      utf8_trunc(trunc_utf8);
  -- *      printf("Truncated: %s\n", trunc_utf8); // €€
  -- * @endhtmlonly
  -- *
  -- * @param utf8_str NULL-terminated string
  -- *
  -- * @return Pointer to the @p utf8_str
  --  

   function utf8_trunc (utf8_str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:671
   with Import => True, 
        Convention => C, 
        External_Name => "utf8_trunc";

  --*
  -- * @brief Copies a UTF-8 encoded string from @p src to @p dst
  -- *
  -- * The resulting @p dst will always be NULL terminated if @p n is larger than 0,
  -- * and the @p dst string will always be properly UTF-8 truncated.
  -- *
  -- * @param dst The destination of the UTF-8 string.
  -- * @param src The source string
  -- * @param n   The size of the @p dst buffer. Maximum number of characters copied
  -- *            is @p n - 1. If 0 nothing will be done, and the @p dst will not be
  -- *            NULL terminated.
  -- *
  -- * @return Pointer to the @p dst
  --  

   function utf8_lcpy
     (dst : Interfaces.C.Strings.chars_ptr;
      src : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:687
   with Import => True, 
        Convention => C, 
        External_Name => "utf8_lcpy";

  --*
  -- * @brief Compute log2(x)
  -- *
  -- * @note This macro expands its argument multiple times (to permit use
  -- *       in constant expressions), which must not have side effects.
  -- *
  -- * @param x An unsigned integral value to compute logarithm of (positive only)
  -- *
  -- * @return log2(x) when 1 <= x <= max(x), -1 when x < 1
  --  

  --*
  -- * @brief Compute ceil(log2(x))
  -- *
  -- * @note This macro expands its argument multiple times (to permit use
  -- *       in constant expressions), which must not have side effects.
  -- *
  -- * @param x An unsigned integral value
  -- *
  -- * @return ceil(log2(x)) when 1 <= x <= max(type(x)), 0 when x < 1
  --  

  --*
  -- * @brief Compute next highest power of two
  -- *
  -- * Equivalent to 2^ceil(log2(x))
  -- *
  -- * @note This macro expands its argument multiple times (to permit use
  -- *       in constant expressions), which must not have side effects.
  -- *
  -- * @param x An unsigned integral value
  -- *
  -- * @return 2^ceil(log2(x)) or 0 if 2^ceil(log2(x)) would saturate 64-bits
  --  

  --*
  -- * @brief Determine if a buffer exceeds highest address
  -- *
  -- * This macro determines if a buffer identified by a starting address @a addr
  -- * and length @a buflen spans a region of memory that goes beyond the highest
  -- * possible address (thereby resulting in a pointer overflow).
  -- *
  -- * @param addr Buffer starting address
  -- * @param buflen Length of the buffer
  -- *
  -- * @return true if pointer overflow detected, false otherwise
  --  

  --*
  -- * @brief XOR n bytes
  -- *
  -- * @param dst  Destination of where to store result. Shall be @p len bytes.
  -- * @param src1 First source. Shall be @p len bytes.
  -- * @param src2 Second source. Shall be @p len bytes.
  -- * @param len  Number of bytes to XOR.
  --  

   procedure mem_xor_n
     (dst : access sys_ustdint_h.uint8_t;
      src1 : access sys_ustdint_h.uint8_t;
      src2 : access sys_ustdint_h.uint8_t;
      len : stddef_h.size_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:755
   with Import => True, 
        Convention => C, 
        External_Name => "mem_xor_n";

  --*
  -- * @brief XOR 32 bits
  -- *
  -- * @param dst  Destination of where to store result. Shall be 32 bits.
  -- * @param src1 First source. Shall be 32 bits.
  -- * @param src2 Second source. Shall be 32 bits.
  --  

   procedure mem_xor_32
     (dst : access sys_ustdint_h.uint8_t;
      src1 : access sys_ustdint_h.uint8_t;
      src2 : access sys_ustdint_h.uint8_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:769
   with Import => True, 
        Convention => C, 
        External_Name => "mem_xor_32";

  --*
  -- * @brief XOR 128 bits
  -- *
  -- * @param dst  Destination of where to store result. Shall be 128 bits.
  -- * @param src1 First source. Shall be 128 bits.
  -- * @param src2 Second source. Shall be 128 bits.
  --  

   procedure mem_xor_128
     (dst : access sys_ustdint_h.uint8_t;
      src1 : access sys_ustdint_h.uint8_t;
      src2 : access sys_ustdint_h.uint8_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/util.h:781
   with Import => True, 
        Convention => C, 
        External_Name => "mem_xor_128";

  -- This file must be included at the end of the !_ASMLANGUAGE guard.
  -- * It depends on macros defined in this file above which cannot be forward declared.
  --  

  --* @brief Number of bytes in @p x kibibytes  
  -- This is used in linker scripts so need to avoid type casting there  
  --* @brief Number of bytes in @p x mebibytes  
  --* @brief Number of bytes in @p x gibibytes  
  --* @brief Number of Hz in @p x kHz  
  --* @brief Number of Hz in @p x MHz  
  --*
  -- * @brief For the POSIX architecture add a minimal delay in a busy wait loop.
  -- * For other architectures this is a no-op.
  -- *
  -- * In the POSIX ARCH, code takes zero simulated time to execute,
  -- * so busy wait loops become infinite loops, unless we
  -- * force the loop to take a bit of time.
  -- * Include this macro in all busy wait/spin loops
  -- * so they will also work when building for the POSIX architecture.
  -- *
  -- * @param t Time in microseconds we will busy wait
  --  

  --*
  -- * @brief Wait for an expression to return true with a timeout
  -- *
  -- * Spin on an expression with a timeout and optional delay between iterations
  -- *
  -- * Commonly needed when waiting on hardware to complete an asynchronous
  -- * request to read/write/initialize/reset, but useful for any expression.
  -- *
  -- * @param expr Truth expression upon which to poll, e.g.: XYZREG & XYZREG_EN
  -- * @param timeout Timeout to wait for in microseconds, e.g.: 1000 (1ms)
  -- * @param delay_stmt Delay statement to perform each poll iteration
  -- *                   e.g.: NULL, k_yield(), k_msleep(1) or k_busy_wait(1)
  -- *
  -- * @retval expr As a boolean return, if false then it has timed out.
  --  

  --*
  -- * @}
  --  

end zephyr_sys_util_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
