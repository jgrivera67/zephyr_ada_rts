pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;
with stddef_h;

package zephyr_sys_slist_h is

   --  arg-macro: procedure SYS_SLIST_FOR_EACH_NODE (__sl, __sn)
   --    Z_GENLIST_FOR_EACH_NODE(slist, __sl, __sn)
   --  arg-macro: procedure SYS_SLIST_ITERATE_FROM_NODE (__sl, __sn)
   --    Z_GENLIST_ITERATE_FROM_NODE(slist, __sl, __sn)
   --  arg-macro: procedure SYS_SLIST_FOR_EACH_NODE_SAFE (__sl, __sn, __sns)
   --    Z_GENLIST_FOR_EACH_NODE_SAFE(slist, __sl, __sn, __sns)
   --  arg-macro: procedure SYS_SLIST_CONTAINER (__ln, __cn, __n)
   --    Z_GENLIST_CONTAINER(__ln, __cn, __n)
   --  arg-macro: procedure SYS_SLIST_PEEK_HEAD_CONTAINER (__sl, __cn, __n)
   --    Z_GENLIST_PEEK_HEAD_CONTAINER(slist, __sl, __cn, __n)
   --  arg-macro: procedure SYS_SLIST_PEEK_TAIL_CONTAINER (__sl, __cn, __n)
   --    Z_GENLIST_PEEK_TAIL_CONTAINER(slist, __sl, __cn, __n)
   --  arg-macro: procedure SYS_SLIST_PEEK_NEXT_CONTAINER (__cn, __n)
   --    Z_GENLIST_PEEK_NEXT_CONTAINER(slist, __cn, __n)
   --  arg-macro: procedure SYS_SLIST_FOR_EACH_CONTAINER (__sl, __cn, __n)
   --    Z_GENLIST_FOR_EACH_CONTAINER(slist, __sl, __cn, __n)
   --  arg-macro: procedure SYS_SLIST_FOR_EACH_CONTAINER_SAFE (__sl, __cn, __cns, __n)
   --    Z_GENLIST_FOR_EACH_CONTAINER_SAFE(slist, __sl, __cn, __cns, __n)
   --  arg-macro: procedure SYS_SLIST_STATIC_INIT (ptr_to_list)
   --    {NULL, NULL}
  -- * Copyright (c) 2016 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  --  * @file
  --  * @defgroup single-linked-list_apis Single-linked list
  --  * @ingroup datastructure_apis
  --  *
  --  * @brief Single-linked list implementation.
  --  *
  --  * Single-linked list implementation using inline macros/functions.
  --  * This API is not thread safe, and thus if a list is used across threads,
  --  * calls to functions must be protected with synchronization primitives.
  --  * @{
  --   

  --* @cond INTERNAL_HIDDEN  
   type u_snode;
   type u_snode is record
      next : access u_snode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:33

  --* @endcond  
  --* Single-linked list node structure.  
   subtype sys_snode_t is u_snode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:39

  --* @cond INTERNAL_HIDDEN  
   type u_slist is record
      head : access sys_snode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:43
      tail : access sys_snode_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:42

  --* @endcond  
  --* Single-linked list structure.  
   subtype sys_slist_t is u_slist;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:49

  --*
  -- * @brief Provide the primitive to iterate on a list
  -- * Note: the loop is unsafe and thus __sn should not be removed
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SLIST_FOR_EACH_NODE(l, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * This and other SYS_SLIST_*() macros are not thread safe.
  -- *
  -- * @param __sl A pointer on a sys_slist_t to iterate on
  -- * @param __sn A sys_snode_t pointer to peek each node of the list
  --  

  --*
  -- * @brief Provide the primitive to iterate on a list, from a node in the list
  -- * Note: the loop is unsafe and thus __sn should not be removed
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SLIST_ITERATE_FROM_NODE(l, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * Like SYS_SLIST_FOR_EACH_NODE(), but __dn already contains a node in the list
  -- * where to start searching for the next entry from. If NULL, it starts from
  -- * the head.
  -- *
  -- * This and other SYS_SLIST_*() macros are not thread safe.
  -- *
  -- * @param __sl A pointer on a sys_slist_t to iterate on
  -- * @param __sn A sys_snode_t pointer to peek each node of the list
  -- *             it contains the starting node, or NULL to start from the head
  --  

  --*
  -- * @brief Provide the primitive to safely iterate on a list
  -- * Note: __sn can be removed, it will not break the loop.
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SLIST_FOR_EACH_NODE_SAFE(l, n, s) {
  -- *         <user code>
  -- *     }
  -- *
  -- * This and other SYS_SLIST_*() macros are not thread safe.
  -- *
  -- * @param __sl A pointer on a sys_slist_t to iterate on
  -- * @param __sn A sys_snode_t pointer to peek each node of the list
  -- * @param __sns A sys_snode_t pointer for the loop to run safely
  --  

  --*
  -- * @brief Provide the primitive to resolve the container of a list node
  -- * Note: it is safe to use with NULL pointer nodes
  -- *
  -- * @param __ln A pointer on a sys_node_t to get its container
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_node_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek container of the list head
  -- *
  -- * @param __sl A pointer on a sys_slist_t to peek
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_node_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek container of the list tail
  -- *
  -- * @param __sl A pointer on a sys_slist_t to peek
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_node_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to peek the next container
  -- *
  -- * @param __cn Container struct type pointer
  -- * @param __n The field name of sys_node_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to iterate on a list under a container
  -- * Note: the loop is unsafe and thus __cn should not be detached
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SLIST_FOR_EACH_CONTAINER(l, c, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * @param __sl A pointer on a sys_slist_t to iterate on
  -- * @param __cn A pointer to peek each entry of the list
  -- * @param __n The field name of sys_node_t within the container struct
  --  

  --*
  -- * @brief Provide the primitive to safely iterate on a list under a container
  -- * Note: __cn can be detached, it will not break the loop.
  -- *
  -- * User _MUST_ add the loop statement curly braces enclosing its own code:
  -- *
  -- *     SYS_SLIST_FOR_EACH_NODE_SAFE(l, c, cn, n) {
  -- *         <user code>
  -- *     }
  -- *
  -- * @param __sl A pointer on a sys_slist_t to iterate on
  -- * @param __cn A pointer to peek each entry of the list
  -- * @param __cns A pointer for the loop to run safely
  -- * @param __n The field name of sys_node_t within the container struct
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

   procedure sys_slist_init (list : access sys_slist_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_init";

  --*
  -- * @brief Statically initialize a single-linked list
  -- * @param ptr_to_list A pointer on the list to initialize
  --  

   function z_snode_next_peek (node : access sys_snode_t) return access sys_snode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "z_snode_next_peek";

   procedure z_snode_next_set (parent : access sys_snode_t; child : access sys_snode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "z_snode_next_set";

   procedure z_slist_head_set (list : access sys_slist_t; node : access sys_snode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "z_slist_head_set";

   procedure z_slist_tail_set (list : access sys_slist_t; node : access sys_snode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "z_slist_tail_set";

  --*
  -- * @brief Peek the first node from the list
  -- *
  -- * @param list A point on the list to peek the first node from
  -- *
  -- * @return A pointer on the first node of the list (or NULL if none)
  --  

   function sys_slist_peek_head (list : access sys_slist_t) return access sys_snode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_peek_head";

  --*
  -- * @brief Peek the last node from the list
  -- *
  -- * @param list A point on the list to peek the last node from
  -- *
  -- * @return A pointer on the last node of the list (or NULL if none)
  --  

   function sys_slist_peek_tail (list : access sys_slist_t) return access sys_snode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_peek_tail";

  -- * Derived, generated APIs
  --  

  --*
  -- * @brief Test if the given list is empty
  -- *
  -- * @param list A pointer on the list to test
  -- *
  -- * @return a boolean, true if it's empty, false otherwise
  --  

   function sys_slist_is_empty (list : access sys_slist_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_is_empty";

  --*
  -- * @brief Peek the next node from current node, node is not NULL
  -- *
  -- * Faster then sys_slist_peek_next() if node is known not to be NULL.
  -- *
  -- * @param node A pointer on the node where to peek the next node
  -- *
  -- * @return a pointer on the next node (or NULL if none)
  --  

   function sys_slist_peek_next_no_check (node : access sys_snode_t) return access sys_snode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_peek_next_no_check";

  --*
  -- * @brief Peek the next node from current node
  -- *
  -- * @param node A pointer on the node where to peek the next node
  -- *
  -- * @return a pointer on the next node (or NULL if none)
  --  

   function sys_slist_peek_next (node : access sys_snode_t) return access sys_snode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_peek_next";

  --*
  -- * @brief Prepend a node to the given list
  -- *
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param node A pointer on the node to prepend
  --  

   procedure sys_slist_prepend (list : access sys_slist_t; node : access sys_snode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_prepend";

  --*
  -- * @brief Append a node to the given list
  -- *
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param node A pointer on the node to append
  --  

   procedure sys_slist_append (list : access sys_slist_t; node : access sys_snode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_append";

  --*
  -- * @brief Append a list to the given list
  -- *
  -- * Append a singly-linked, NULL-terminated list consisting of nodes containing
  -- * the pointer to the next node as the first element of a node, to @a list.
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * FIXME: Why are the element parameters void *?
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param head A pointer to the first element of the list to append
  -- * @param tail A pointer to the last element of the list to append
  --  

   procedure sys_slist_append_list
     (list : access sys_slist_t;
      head : System.Address;
      tail : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_append_list";

  --*
  -- * @brief merge two slists, appending the second one to the first
  -- *
  -- * When the operation is completed, the appending list is empty.
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param list_to_append A pointer to the list to append.
  --  

   procedure sys_slist_merge_slist (list : access sys_slist_t; list_to_append : access sys_slist_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_merge_slist";

  --*
  -- * @brief Insert a node to the given list
  -- *
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param prev A pointer on the previous node
  -- * @param node A pointer on the node to insert
  --  

   procedure sys_slist_insert
     (list : access sys_slist_t;
      prev : access sys_snode_t;
      node : access sys_snode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_insert";

  --*
  -- * @brief Fetch and remove the first node of the given list
  -- *
  -- * List must be known to be non-empty.
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- *
  -- * @return A pointer to the first node of the list
  --  

   function sys_slist_get_not_empty (list : access sys_slist_t) return access sys_snode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_get_not_empty";

  --*
  -- * @brief Fetch and remove the first node of the given list
  -- *
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- *
  -- * @return A pointer to the first node of the list (or NULL if empty)
  --  

   function sys_slist_get (list : access sys_slist_t) return access sys_snode_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:392
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_get";

  --*
  -- * @brief Remove a node
  -- *
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param prev_node A pointer on the previous node
  -- *        (can be NULL, which means the node is the list's head)
  -- * @param node A pointer on the node to remove
  --  

   procedure sys_slist_remove
     (list : access sys_slist_t;
      prev_node : access sys_snode_t;
      node : access sys_snode_t)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_remove";

  --*
  -- * @brief Find and remove a node from a list
  -- *
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer on the list to affect
  -- * @param node A pointer on the node to remove from the list
  -- *
  -- * @return true if node was removed
  --  

  --*
  -- * @brief Find if a node is already linked in a singly linked list
  -- *
  -- * This and other sys_slist_*() functions are not thread safe.
  -- *
  -- * @param list A pointer to the list to check
  -- * @param node A pointer to the node to search in the list
  -- * @param[out] prev A pointer to the previous node
  -- *
  -- * @return true if node was found in the list, false otherwise
  --  

   function sys_slist_find
     (list : access sys_slist_t;
      node : access sys_snode_t;
      prev : System.Address) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:436
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_find";

  --*
  -- * @brief Compute the size of the given list in O(n) time
  -- *
  -- * @param list A pointer on the list
  -- *
  -- * @return an integer equal to the size of the list, or 0 if empty
  --  

   function sys_slist_len (list : access sys_slist_t) return stddef_h.size_t  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_len";

  --* @}  
   function sys_slist_find_and_remove (list : access sys_slist_t; node : access sys_snode_t) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/slist.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "sys_slist_find_and_remove";

end zephyr_sys_slist_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
