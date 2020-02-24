



with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure grade_book is

    grade_num : string;
    grade : integer;
    charsRead : Natural;

    function gradeBook(grade: in integer) return string is
    begin
      grade := grade / 10;
      case grade is
        when 10 | 9 => return "A";
        when 8 => return "B";
        when 7 => return "C";
        when 6 => return "D";
        when others => return "F";
      end case;
    end

begin
    Put("Enter grade: ");
    Get_Line(grade, charsRead);
    grade := Integer'Value (grade_num);
    Put( gradeBook(grade));

end grade_book;
