-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: AJ Vrieland (ajv234)
-- Date: 02/05/2020
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

with Ada.Strings.Fixed;
use Ada.Strings.Fixed;
procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.
   -- Receive: The_String, the string to be split,
   --          Position, the split index.
   -- PRE: 0 < Position <= The_String.length().
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure split(str: in String; pos1: in Natural; p1, p2: in out String) is
     substr1, substr2 : String := EMPTY_STRING;
   begin
      --substr1 := str(0, pos1);
      --substr2 := str(pos1, 40-pos1);
      Ada.Strings.Fixed.Move(str(str'First .. (pos1 - 1)), p1);
      Ada.Strings.Fixed.Move(str(pos1 .. str'Last), p2);
   end split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;
