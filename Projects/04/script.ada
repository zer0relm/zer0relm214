Script started on 2020-03-01 12:23:39-0500
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ada[00m$ cat factorial.adb
-- factorial.adb computes factorial
--
-- Input: a number
-- Precondition: the number be positive
-- Output: the factorial of that number
--
-- Completed by: AJ Vrieland
-- Date: 03/01/2020


with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure factorial is

  num, increment, answer : Float;
begin
  Put("Enter Factorial: ");
  Get(num);
  increment := 2.0;
  answer := 1.0;

  while increment <= num loop
    answer := increment * answer;
    increment := 1.0 + increment;
  end loop;

  New_Line;
  Put(answer);

end factorial;
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ada[00m$ gnat make factorial.adb
x86_64-linux-gnu-gcc-8 -c factorial.adb
x86_64-linux-gnu-gnatbind-8 -x factorial.ali
x86_64-linux-gnu-gnatlink-8 factorial.ali
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ada[00m$ ./factorial 
Enter Factorial: 5

 1.20000E+02
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ada[00m$ ./factorial 
Enter Factorial: 10

 3.62880E+06
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ada[00m$ ./factorial 
Enter Factorial: 50

+Inf********
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Ada[00m$ exit

Script done on 2020-03-01 12:24:07-0500
