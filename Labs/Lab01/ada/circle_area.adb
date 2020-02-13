-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: AJ Vrieland (ajv234)
-- Date: 02/06/2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float;  -- defines radius and area as float variables

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is     -- creates the function and sets up that it can only take in and return float numbers
      PI : constant := 3.1415927;   -- defines PI as a constant
   begin
      return PI * r ** 2;  -- body of the function calculating area
   end circleArea;

begin                           
   New_Line;
   Put_Line("To compute the area of a circle,");    -- Put_Line writes the text on it's own line creating a new line before and after the text
   Put("enter its radius: ");                       -- Put writes the text where ever the cursor is
   Get(radius);                                     -- Get "gets" a value from the user and puts it in the variable radius

   area := circleArea(radius);                      -- assignes the result from circleArea to variable area

   New_Line;   
   Put("The circle's area is ");
   Put(area);
   New_Line; New_Line; 

   Put("The circle's area is ");
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end circle_area;
