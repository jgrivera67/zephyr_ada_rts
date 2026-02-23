------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--               S Y S T E M . M U L T I P R O C E S S O R S                --
--                                                                          --
--                                  S p e c                                 --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT.  In accordance with the copyright of that document, you can freely --
-- copy and modify this specification,  provided that if you redistribute a --
-- modified version,  any changes that you have made are clearly indicated. --
--                                                                          --
------------------------------------------------------------------------------

--  This is the Zephyr version for Ravenscar profile

package System.Multiprocessors is
   pragma Preelaborate (Multiprocessors);

   type CPU_Range is range 0 .. 16;
   --  Maximum 16 CPUs supported (can be increased if needed)
   --  Note: Zephyr supports CONFIG_MP_MAX_NUM_CPUS

   subtype CPU is CPU_Range range 1 .. CPU_Range'Last;

   Not_A_Specific_CPU : constant CPU_Range := 0;

   function Number_Of_CPUs return CPU;
   pragma Inline (Number_Of_CPUs);
   --  Number of available CPUs (for now, returns 1 for single-CPU systems)
   --  TODO: Implement using Zephyr's arch_num_cpus() or CONFIG_MP_MAX_NUM_CPUS

end System.Multiprocessors;
