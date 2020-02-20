Script started on 2020-02-20 13:53:07-0500
]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
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

]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ gnatmake year_codes.adb 
gnatmake: "year_codes" up to date.
]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: freshman
          1
]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: sophomore
          2
]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: junior
          3
]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: seno ior
          4
]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ ./year_codes 
Enter your academic year: second year
          0
]0;ajv234@gold08: ~/cs214/Labs/Lab03/Ada[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03/Ada[00m$ exit

Script done on 2020-02-20 13:53:49-0500
