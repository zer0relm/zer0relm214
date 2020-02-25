Script started on 2020-02-24 19:43:26-0500
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Ada[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Ada[00m$ cat grade_book.adb
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
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Ada[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Ada[00m$ gnat make grade_book
x86_64-linux-gnu-gnatmake-8: "grade_book" up to date.
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Ada[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Ada[00m$ ./grade_book 
Enter grade (Enter 0 to exit): 65
D
Enter grade (Enter 0 to exit): 98
A
Enter grade (Enter 0 to exit): 87
B
Enter grade (Enter 0 to exit): 78
C
Enter grade (Enter 0 to exit): 56
F
Enter grade (Enter 0 to exit): 100
A
Enter grade (Enter 0 to exit): A
Enter grade (Enter 0 to exit): 0
F
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Ada[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Ada[00m$ exit

Script done on 2020-02-24 19:43:51-0500
