pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with sys_ustdint_h;
with Interfaces.C.Extensions;
with System;
with stddef_h;

package zephyr_sys_sflist_h is
   pragma Preelaborate;

   --  arg-macro: procedure SYS_SFLIST_FOR_EACH_NODE (__sl, __sn)
   --    Z_GENLIST_FOR_EACH_NODE(sflist, __sl, __sn)
   --  arg-macro: procedure SYS_SFLIST_ITERATE_FROM_NODE (__sl, __sn)
   --    Z_GENLIST_ITERATE_FROM_NODE(sflist, __sl, __sn)
   --  arg-macro: procedure SYS_SFLIST_FOR_EACH_NODE_SAFE (__sl, __sn, __sns)
   --    Z_GENLIST_FOR_EACH_NODE_SAFE(sflist, __sl, __sn, __sns)
   --  arg-macro: procedure SYS_SFLIST_CONTAINER (__ln, __cn, __n)
   --    Z_GENLIST_CONTAINER(__ln, __cn, __n)
   --  arg-macro: procedure SYS_SFLIST_PEEK_HEAD_CONTAINER (__sl, __cn, __n)
   --    Z_GENLIST_PEEK_HEAD_CONTAINER(sflist, __sl, __cn, __n)
   --  arg-macro: procedure SYS_SFLIST_PEEK_TAIL_CONTAINER (__sl, __cn, __n)
   --    Z_GENLIST_PEEK_TAIL_CONTAINER(sflist, __sl, __cn, __n)
   --  arg-macro: procedure SYS_SFLIST_PEEK_NEXT_CONTAINER (__cn, __n)
   --    Z_GENLIST_PEEK_NEXT_CONTAINER(sflist, __cn, __n)
   --  arg-macro: procedure SYS_SFLIST_FOR_EACH_CONTAINER (__sl, __cn, __n)
   --    Z_GENLIST_FOR_EACH_CONTAINER(sflist, __sl, __cn, __n)
   --  arg-macro: procedure SYS_SFLIST_FOR_EACH_CONTAINER_SAFE (__sl, __cn, __cns, __n)
   --    Z_GENLIST_FOR_EACH_CONTAINER_SAFE(sflist, __sl, __cn, __cns, __n)
   --  arg-macro: procedure SYS_SFLIST_STATIC_INIT (ptr_to_list)
   --    {NULL, NULL}
   --  unsupported macro: SYS_SFLIST_FLAGS_MASK ((uintptr_t)(__alignof__(sys_sfnode_t) - 1))
  -- * Copyright (c) 2016 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  --  * @file
  --  * @defgroup flagged-single-linked-list_apis Flagged Single-linked list
  --  * @ingroup datastructure_apis
  --  *
  --  * @brief Flagged single-linked list implementation.
  --  *
  --  * Similar to @ref single-linked-list_apis with the added ability to define
  --  * user "flags" bits for each node. They can be accessed and modified
  --  * using the sys_sfnode_flags_get() and sys_sfnode_flags_set() APIs.
  --  *
  --  * Flagged single-linked list implementation using inline macros/functions.
  --  * This API is not thread safe, and thus if a list is used across threads,
  --  * calls to functions must be protected with synchronization primitives.
  --  *
  --  * @{
  --   

  --* @cond INTERNAL_HIDDEN  
   type u_sfnode is record
      next_and_flags : aliased sys_ustdint_h.uintptr_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:38

  --* @endcond  
  --* Flagged single-linked list node structure.  
   subtype sys_sfnode_t is u_sfnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:44

  --* @cond INTERNAL_HIDDEN  
   type u_sflist is record
      head : access sys_sfnode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:48
      tail : access sys_sfnode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:47

  --* @endcond  
  --* Flagged single-linked list structure.  
   subtype sys_sflist_t is u_sflist;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:54

  --*
  -- * @brief Provide the primitive to iterate on a list
  -- * Note: the loop is unsafe and thus __sn should not be removed
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SFLIST_FOR_EACH_NODE(l, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * This and other SYS_SFLIST_*() macros are not thread safe.
  -- *
  -- * @param __sl A pointer on a sys_sflist_t to iterate on
  -- * @param __sn A sys_sfnode_t pointer to peek each node of the list
  --  

  --*
  -- * @brief Provide the primitive to iterate on a list, from a node in the list
  -- * Note: the loop is unsafe and thus __sn should not be removed
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SFLIST_ITERATE_FROM_NODE(l, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * Like SYS_SFLIST_FOR_EACH_NODE(), but __dn already contains a node in the list
  -- * where to start searching for the next entry from. If NULL, it starts from
  -- * the head.
  -- *
  -- * This and other SYS_SFLIST_*() macros are not thread safe.
  -- *
  -- * @param __sl A pointer on a sys_sflist_t to iterate on
  -- * @param __sn A sys_sfnode_t pointer to peek each node of the list
  -- *             it contains the starting node, or NULL to start from the head
  --  

  --*
  -- * @brief Provide the primitive to safely iterate on a list
  -- * Note: __sn can be removed, it will not break the loop.
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SFLIST_FOR_EACH_NODE_SAFE(l, n, s) {
  -- *         <user code>
  -- *     }
  -- *
  -- * This and other SYS_SFLIST_*() macros are not thread safe.
  -- *
  -- * @param __sl A pointer on a sys_sflist_t to iterate on
  -- * @param __sn A sys_sfnode_t pointer to peek each node of the list
  -- * @param __sns A sys_sfnode_t pointer for the loop to run safely
  --  

  --*
  -- * @brief Provide the primitive to resolve the container of a list node
  -- * Note: it is safe to use with NULL pointer nodes
  -- *
  -- * @param __ln A pointer on a sys_sfnode_t to get its container
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_sfnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek container of the list head
  -- *
  -- * @param __sl A pointer on a sys_sflist_t to peek
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_sfnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek container of the list tail
  -- *
  -- * @param __sl A pointer on a sys_sflist_t to peek
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_sfnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek the next container
  -- *
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_sfnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to iterate on a list under a container
  -- * Note: the loop is unsafe and thus __cn should not be detached
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SFLIST_FOR_EACH_CONTAINER(l, c, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * @param __sl A pointer on a sys_sflist_t to iterate on
  -- * @param __cn A pointer to peek each entry of the list
  -- * @param __n The field name of sys_sfnode_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to safely iterate on a list under a container
  -- * Note: __cn can be detached, it will not break the loop.
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SFLIST_FOR_EACH_NODE_SAFE(l, c, cn, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * @param __sl A pointer on a sys_sflist_t to iterate on
  -- * @param __cn A pointer to peek each entry of the list
  -- * @param __cns A pointer for the loop to run safely
  -- * @param __n The field name of sys_sfnode_t within the container struct
  --  

  -- * Required function definitions for the list_gen.h interface
  -- *
  -- * These are the only functions that do not treat the list/node pointers
  -- * as completely opaque types.
  --  

  --*
  -- * @brief Initialize a list
  -- *
  -- * @param list A pointer on the list to initialize
  --  

   procedure sys_sflist_init (list : access sys_sflist_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_init";

  --*
  -- * @brief Statically initialize a flagged single-linked list
  -- * @param ptr_to_list A pointer on the list to initialize
  --  

  -- Flag bits are stored in unused LSB of the sys_sfnode_t pointer  
  -- At least 2 available flag bits are expected  
   function z_sfnode_next_peek (node : access constant sys_sfnode_t) return access sys_sfnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "z_sfnode_next_peek";

   procedure z_sfnode_next_set (parent : access sys_sfnode_t; child : access sys_sfnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "z_sfnode_next_set";

   procedure z_sflist_head_set (list : access sys_sflist_t; node : access sys_sfnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "z_sflist_head_set";

   procedure z_sflist_tail_set (list : access sys_sflist_t; node : access sys_sfnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "z_sflist_tail_set";

  --*
  -- * @brief Peek the first node from the list
  -- *
  -- * @param list A point on the list to peek the first node from
  -- *
  -- * @return A pointer on the first node of the list (or NULL if none)
  --  

   function sys_sflist_peek_head (list : access constant sys_sflist_t) return access sys_sfnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_peek_head";

  --*
  -- * @brief Peek the last node from the list
  -- *
  -- * @param list A point on the list to peek the last node from
  -- *
  -- * @return A pointer on the last node of the list (or NULL if none)
  --  

   function sys_sflist_peek_tail (list : access constant sys_sflist_t) return access sys_sfnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_peek_tail";

  -- * APIs specific to sflist type
  --  

  --*
  -- * @brief Fetch flags value for a particular sfnode
  -- *
  -- * @param node A pointer to the node to fetch flags from
  -- * @return The value of flags, which will be between 0 and 3 on 32-bit
  -- *         architectures, or between 0 and 7 on 64-bit architectures
  --  

   function sys_sfnode_flags_get (node : access constant sys_sfnode_t) return sys_ustdint_h.uint8_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sfnode_flags_get";

  --*
  -- * @brief Initialize an sflist node
  -- *
  -- * Set an initial flags value for this slist node, which can be a value between
  -- * 0 and 3 on 32-bit architectures, or between 0 and 7 on 64-bit architectures.
  -- * These flags will persist even if the node is moved around within a list,
  -- * removed, or transplanted to a different slist.
  -- *
  -- * This is ever so slightly faster than sys_sfnode_flags_set() and should
  -- * only be used on a node that hasn't been added to any list.
  -- *
  -- * @param node A pointer to the node to set the flags on
  -- * @param flags The flags value to set
  --  

   procedure sys_sfnode_init (node : access sys_sfnode_t; flags : sys_ustdint_h.uint8_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sfnode_init";

  --*
  -- * @brief Set flags value for an sflist node
  -- *
  -- * Set a flags value for this slist node, which can be a value between
  -- * 0 and 3 on 32-bit architectures, or between 0 and 7 on 64-bit architectures.
  -- * These flags will persist even if the node is moved around within a list,
  -- * removed, or transplanted to a different slist.
  -- *
  -- * @param node A pointer to the node to set the flags on
  -- * @param flags The flags value to set
  --  

   procedure sys_sfnode_flags_set (node : access sys_sfnode_t; flags : sys_ustdint_h.uint8_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sfnode_flags_set";

  -- * Derived, generated APIs
  --  

  --*
  -- * @brief Test if the given list is empty
  -- *
  -- * @param list A pointer on the list to test
  -- *
  -- * @return a boolean, true if it's empty, false otherwise
  --  

   function sys_sflist_is_empty (list : access constant sys_sflist_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_is_empty";

  --*
  -- * @brief Peek the next node from current node, node is not NULL
  -- *
  -- * Faster then sys_sflist_peek_next() if node is known not to be NULL.
  -- *
  -- * @param node A pointer on the node where to peek the next node
  -- *
  -- * @return a pointer on the next node (or NULL if none)
  --  

   function sys_sflist_peek_next_no_check (node : access constant sys_sfnode_t) return access sys_sfnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_peek_next_no_check";

  --*
  -- * @brief Peek the next node from current node
  -- *
  -- * @param node A pointer on the node where to peek the next node
  -- *
  -- * @return a pointer on the next node (or NULL if none)
  --  

   function sys_sflist_peek_next (node : access constant sys_sfnode_t) return access sys_sfnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_peek_next";

  --*
  -- * @brief Prepend a node to the given list
  -- *
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param node A pointer on the node to prepend
  --  

   procedure sys_sflist_prepend (list : access sys_sflist_t; node : access sys_sfnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_prepend";

  --*
  -- * @brief Append a node to the given list
  -- *
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param node A pointer on the node to append
  --  

   procedure sys_sflist_append (list : access sys_sflist_t; node : access sys_sfnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_append";

  --*
  -- * @brief Append a list to the given list
  -- *
  -- * Append a singly-linked, NULL-terminated list consisting of nodes containing
  -- * the pointer to the next node as the first element of a node, to @a list.
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param head A pointer to the first element of the list to append
  -- * @param tail A pointer to the last element of the list to append
  --  

   procedure sys_sflist_append_list
     (list : access sys_sflist_t;
      head : System.Address;
      tail : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_append_list";

  --*
  -- * @brief merge two sflists, appending the second one to the first
  -- *
  -- * When the operation is completed, the appending list is empty.
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param list_to_append A pointer to the list to append.
  --  

   procedure sys_sflist_merge_sflist (list : access sys_sflist_t; list_to_append : access sys_sflist_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_merge_sflist";

  --*
  -- * @brief Insert a node to the given list
  -- *
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param prev A pointer on the previous node
  -- * @param node A pointer on the node to insert
  --  

   procedure sys_sflist_insert
     (list : access sys_sflist_t;
      prev : access sys_sfnode_t;
      node : access sys_sfnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_insert";

  --*
  -- * @brief Fetch and remove the first node of the given list
  -- *
  -- * List must be known to be non-empty.
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- *
  -- * @return A pointer to the first node of the list
  --  

   function sys_sflist_get_not_empty (list : access sys_sflist_t) return access sys_sfnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_get_not_empty";

  --*
  -- * @brief Fetch and remove the first node of the given list
  -- *
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- *
  -- * @return A pointer to the first node of the list (or NULL if empty)
  --  

   function sys_sflist_get (list : access sys_sflist_t) return access sys_sfnode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_get";

  --*
  -- * @brief Remove a node
  -- *
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param prev_node A pointer on the previous node
  -- *        (can be NULL, which means the node is the list's head)
  -- * @param node A pointer on the node to remove
  --  

   procedure sys_sflist_remove
     (list : access sys_sflist_t;
      prev_node : access sys_sfnode_t;
      node : access sys_sfnode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_remove";

  --*
  -- * @brief Find and remove a node from a list
  -- *
  -- * This and other sys_sflist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param node A pointer on the node to remove from the list
  -- *
  -- * @return true if node was removed
  --  

   function sys_sflist_find_and_remove (list : access sys_sflist_t; node : access sys_sfnode_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:489
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_find_and_remove";

  --*
  -- * @brief Compute the size of the given list in O(n) time
  -- *
  -- * @param list A pointer on the list
  -- *
  -- * @return an integer equal to the size of the list, or 0 if empty
  --  

   function sys_sflist_len (list : access constant sys_sflist_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/sflist.h:500
   with Import => True, 
        Convention => C, 
        External_Name => "sys_sflist_len";

  --* @}  
end zephyr_sys_sflist_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
