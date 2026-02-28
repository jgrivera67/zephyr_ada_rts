pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;
with sys_ustdint_h;

package zephyr_sys_rb_h is
   pragma Preelaborate;

   --  unsupported macro: alloca __builtin_alloca
   --  arg-macro: function Z_TBITS (t)
   --    return (sizeof(t)) < sizeof(uint64_t) ? 2 : 3;
   --  arg-macro: function Z_PBITS (t)
   --    return BITS_PER_BYTE * sizeof(t);
   --  unsupported macro: Z_MAX_RBTREE_DEPTH (2 * (Z_PBITS(int *) - Z_TBITS(int *) - 1) + 1)
   --  arg-macro: procedure RB_FOR_EACH (tree, node)
   --    for (struct _rb_foreach __f := _RB_FOREACH_INIT(tree, node); ((node) := z_rb_foreach_next((tree), and__f)); )
   --  arg-macro: procedure RB_FOR_EACH_CONTAINER (tree, node, field)
   --    for (struct _rb_foreach __f := _RB_FOREACH_INIT(tree, node); ({struct rbnode *n := z_rb_foreach_next(tree, and__f); (node) := n ? CONTAINER_OF(n, __typeof__(*(node)), field) : NULL; (node); }) /= NULL; )
  -- * Copyright (c) 2018 Intel Corporation
  -- *
  -- * SPDX-License-Identifier: Apache-2.0
  --  

  --*
  -- * @file
  -- * @defgroup rbtree_apis Balanced Red/Black Tree
  -- * @ingroup datastructure_apis
  -- *
  -- * @brief Balanced Red/Black Tree implementation
  -- *
  -- * This implements an intrusive balanced tree that guarantees
  -- * O(log2(N)) runtime for all operations and amortized O(1) behavior
  -- * for creation and destruction of whole trees. The algorithms and
  -- * naming are conventional per existing academic and didactic
  -- * implementations, c.f.:
  -- *
  -- * https://en.wikipedia.org/wiki/Red%E2%80%93black_tree
  -- *
  -- * The implementation is size-optimized to prioritize runtime memory
  -- * usage. The data structure is intrusive, which is to say the @ref
  -- * rbnode handle is intended to be placed in a separate struct, in the
  -- * same way as with other such structures (e.g. Zephyr's @ref
  -- * doubly-linked-list_apis), and requires no data pointer to be stored
  -- * in the node. The color bit is unioned with a pointer (fairly common
  -- * for such libraries). Most notably, there is no "parent" pointer
  -- * stored in the node, the upper structure of the tree being generated
  -- * dynamically via a stack as the tree is recursed. So the overall
  -- * memory overhead of a node is just two pointers, identical with a
  -- * doubly-linked list.
  -- *
  -- * @{
  --  

  -- Our SDK/toolchains integration seems to be inconsistent about
  -- * whether they expose alloca.h or not.  On gcc it's a moot point as
  -- * it's always builtin.
  --  

  --*
  -- * @brief Balanced red/black tree node structure
  --  

  --* @cond INTERNAL_HIDDEN  
   type rbnode;
   type anon_array1372 is array (0 .. 1) of access rbnode;
   type rbnode is record
      children : anon_array1372;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:60
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:58

  --* @endcond  
  -- Theoretical maximum depth of tree based on pointer size. If memory
  -- * is filled with 2-pointer nodes, and the tree can be twice as a
  -- * packed binary tree, plus root...  Works out to 59 entries for 32
  -- * bit pointers and 121 at 64 bits.
  --  

  --*
  -- * @typedef rb_lessthan_t
  -- * @brief Red/black tree comparison predicate
  -- *
  -- * Compares the two nodes and returns true if node A is strictly less
  -- * than B according to the tree's sorting criteria, false otherwise.
  -- *
  -- * Note that during insert, the new node being inserted will always be
  -- * "A", where "B" is the existing node within the tree against which
  -- * it is being compared.  This trait can be used (with care!) to
  -- * implement "most/least recently added" semantics between nodes which
  -- * would otherwise compare as equal.
  --  

   type rb_lessthan_t is access function (arg1 : access rbnode; arg2 : access rbnode) return Extensions.bool
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:86

  --*
  -- * @brief Balanced red/black tree structure
  --  

  --* Root node of the tree  
   type rbtree is record
      root : access rbnode;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:93
      lessthan_fn : rb_lessthan_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:95
      max_depth : aliased int;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:97
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:91

  --* Comparison function for nodes in the tree  
  --* @cond INTERNAL_HIDDEN  
  --* @endcond  
  --*
  -- * @brief Prototype for node visitor callback.
  -- * @param node Node being visited
  -- * @param cookie User-specified data
  --  

   type rb_visit_t is access procedure (arg1 : access rbnode; arg2 : System.Address)
   with Convention => C;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:110

   function z_rb_child (node : access rbnode; side : sys_ustdint_h.uint8_t) return access rbnode  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "z_rb_child";

   function z_rb_is_black (node : access rbnode) return int  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "z_rb_is_black";

   procedure z_rb_walk
     (node : access rbnode;
      visit_fn : rb_visit_t;
      cookie : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "z_rb_walk";

   function z_rb_get_minmax (tree : access rbtree; side : sys_ustdint_h.uint8_t) return access rbnode  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "z_rb_get_minmax";

  --*
  -- * @brief Insert node into tree
  --  

   procedure rb_insert (tree : access rbtree; node : access rbnode)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "rb_insert";

  --*
  -- * @brief Remove node from tree
  --  

   procedure rb_remove (tree : access rbtree; node : access rbnode)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "rb_remove";

  --*
  -- * @brief Returns the lowest-sorted member of the tree
  --  

   function rb_get_min (tree : access rbtree) return access rbnode  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "rb_get_min";

  --*
  -- * @brief Returns the highest-sorted member of the tree
  --  

   function rb_get_max (tree : access rbtree) return access rbnode  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "rb_get_max";

  --*
  -- * @brief Returns true if the given node is part of the tree
  -- *
  -- * Note that this does not internally dereference the node pointer
  -- * (though the tree's lessthan callback might!), it just tests it for
  -- * equality with items in the tree.  So it's feasible to use this to
  -- * implement a "set" construct by simply testing the pointer value
  -- * itself.
  --  

   function rb_contains (tree : access rbtree; node : access rbnode) return Extensions.bool  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "rb_contains";

  --*
  -- * @brief Walk/enumerate a rbtree
  -- *
  -- * Very simple recursive enumeration.  Low code size, but requiring a
  -- * separate function can be clumsy for the user and there is no way to
  -- * break out of the loop early.  See RB_FOR_EACH for an iterative
  -- * implementation.
  --  

   procedure rb_walk
     (tree : access rbtree;
      visit_fn : rb_visit_t;
      cookie : System.Address)  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "rb_walk";

   type u_rb_foreach is record
      stack : System.Address;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:173
      is_left : access sys_ustdint_h.uint8_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:174
      top : aliased sys_ustdint_h.int32_t;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:175
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:172

   function z_rb_foreach_next (tree : access rbtree; f : access u_rb_foreach) return access rbnode  -- /Users/jgrivera/my-projects/third-party/zephyrproject/zephyr/include/zephyr/sys/rb.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "z_rb_foreach_next";

  --*
  -- * @brief Walk a tree in-order without recursing
  -- *
  -- * While @ref rb_walk() is very simple, recursing on the C stack can
  -- * be clumsy for some purposes and on some architectures wastes
  -- * significant memory in stack frames.  This macro implements a
  -- * non-recursive "foreach" loop that can iterate directly on the tree,
  -- * at a moderate cost in code size.
  -- *
  -- * Note that the resulting loop is not safe against modifications to
  -- * the tree.  Changes to the tree structure during the loop will
  -- * produce incorrect results, as nodes may be skipped or duplicated.
  -- * Unlike linked lists, no _SAFE variant exists.
  -- *
  -- * Note also that the macro expands its arguments multiple times, so
  -- * they should not be expressions with side effects.
  -- *
  -- * @param tree A pointer to a struct rbtree to walk
  -- * @param node The symbol name of a local struct rbnode* variable to
  -- *             use as the iterator
  --  

  --*
  -- * @brief Loop over rbtree with implicit container field logic
  -- *
  -- * As for RB_FOR_EACH(), but "node" can have an arbitrary type
  -- * containing a struct rbnode.
  -- *
  -- * @param tree A pointer to a struct rbtree to walk
  -- * @param node The symbol name of a local iterator
  -- * @param field The field name of a struct rbnode inside node
  --  

  --* @}  
end zephyr_sys_rb_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
