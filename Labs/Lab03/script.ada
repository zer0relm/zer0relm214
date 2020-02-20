Script started on 2020-02-20 15:28:37-0500
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- 
-- Completed by: AJ Vriland (ajv234)
-- Date: 02/20/2020
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

   function yearCode(year: in string) return integer is
   begin 
	   if year = "freshman " then
		   return 1;
	   elsif (year = "sophomore") then
		   return 2;
	   elsif (year = "junior   ") then
		   return 3;
	   elsif (year = "senior   ") then
		   return 4;
	   else 
		   return 0;
	   end if;
   end yearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ gnatmake year_codes.adb 
x86_64-linux-gnu-gcc-8 -c year_codes.adb
x86_64-linux-gnu-gnatbind-8 -x year_codes.ali
x86_64-linux-gnu-gnatlink-8 year_codes.ali
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: freshamn   man
          1
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: soh phmore    omore
          2
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: junior
          3
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: d senior
          4
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: second year
          0
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Ada[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Ada[00m$ exit

Script done on 2020-02-20 15:29:36-0500
