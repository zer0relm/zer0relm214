-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: AJ Vrieland (ajv234)
-- Date: 02/27/2020
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

with Ada.Numerics, Ada.Numerics.Elementary_Functions;
use Ada.Numerics, Ada.Numerics.Elementary_Functions;
procedure log_table is

   Start, Stop, Increment, num : Float;

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,");
   Put(" enter the start, stop, and increment values: ");
   Get(Start); Get(Stop); Get(Increment);

   while Start <= Stop loop
     New_Line;
     Put("The logarithm of ");
     Put(Start);
     Put(" is ");
     num := log(start, 10.0);
     Put(num);
     New_Line;
     Start := Start + Increment;
   end loop;

end log_table;
