Script started on 2020-03-13 15:08:24-0400
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab06/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab06/Ada[00m$ cat A[Kaverage.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: AJ Vrieland (ajv234)
-- Date: 03/13/2020
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

-- Declare Vector type
  type Vector is array ( Positive range <>) of Float;
-- Define array0 as an array containing no values
  array0 : Vector := (0.0, 0.0);
-- Define array1 as an array containing 9, 8, 7, 6
  array1 : Vector := (9.0, 8.0, 7.0, 6.0);
----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------

-- Replace this line with definition of sum()
  function sum(A: Vector) return Float is
    Total : Float := 0.0;
  begin
    for I in A'Range
    loop
      Total := Total + A(I);
    end loop;
    return Total;
  end sum;
-- Replace this line with documentation and definition of average()
-----------------------------------------------------
-- average() averages all of the values of an array
-- Recieve: anArray of numbers
-- Return: the average of all of the numbers
-----------------------------------------------------
  function average(theArray: Vector) return Float is
    index : integer := theArray'First;
  begin
    if theArray(index) = 0.0 then
      return 0.0;
    else
      return sum(theArray) / Float(theArray'Length);
    end if;
  end;


begin
  Put(" average 0 is ");
  Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab06/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab06/Ada[00m$ gnat makd [K[Ke a v[K[Kverage.adb
x86_64-linux-gnu-gcc-8 -c average.adb
x86_64-linux-gnu-gnatbind-8 -x average.ali
x86_64-linux-gnu-gnatlink-8 average.ali
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab06/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab06/Ada[00m$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab06/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab06/Ada[00m$ exit

Script done on 2020-03-13 15:08:51-0400
