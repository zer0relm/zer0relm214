-- computes the area of a rectangle
--
-- Input: The length and width of the rectangle
-- Precondition: length and width are positive
-- Output: The are of the rectangle
--
-- By: AJ Vrieland
-- Date: 02/10/2020
------------------------------------------------

with Ada.Text_IO, Ada.Float_text_IO;
use Ada.Text_IO, Ada.Float_text_IO;

procedure rectangle_area is
	length, width, area : float;

	-- function rectangleArea computes the rectangle's area
	-- Parameter: l, w, a float
	-- Precontion: l >= 0.0
	-- Return: the area of the rectangle
	-------------------------------------------------------
	function rectangleArea(l, w: in float) return float is
	begin
		return l * w;
	end rectangleArea;

begin
	New_Line;
	Put_Line("To compute the area of a circle, ");
	Put("enter its Length: ");
	Get(length);
	
	Put("enter its Width: ");
	Get(width);

	area := rectangleArea(length, width);

	New_Line;
	Put("The rectangle's area is ");
	Put(area, 1, 5, 0);
	New_Line; New_Line;
end rectangle_area;
