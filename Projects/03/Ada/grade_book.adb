-- grade_book.adb converts numeric sores to letter grades
--
-- Completed by: AJ Vrieland (ajv234)
-- Date: 02/24/2020
--
-- Input: grade_num, a String
-- Precondition: grade_num is a number from 1-100
-- Output: The equivalent letter grade
--------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure grade_book is

    grade_num : String(1..3) := "   ";
    grade : integer := 1;
    charsRead : Natural;

    function gradeBook(grade_num: in integer) return string is
    begin
      grade := grade / 10;
      case grade is
        when 10 | 9 => return "A";
        when 8 => return "B";
        when 7 => return "C";
        when 6 => return "D";
        when others => return "F";
      end case;
    end gradeBook;

begin
  while grade /= 0 loop
    Put("Enter grade (Enter 0 to exit): ");
    Get_Line(grade_num, charsRead);
    grade := Integer'Value (grade_num);
    Put( gradeBook(grade));
    New_Line;
  end loop;

end grade_book;
