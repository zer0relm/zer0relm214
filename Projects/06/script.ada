Script started on 2020-03-18 14:08:39-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="188" LINES="27"]
]0;zer0relm@AJ-Blade:~/cs214/Projects/06/Ada[01;32m[zer0relm@AJ-Blade[01;37m Ada[01;32m]$[00m cat aar[K[Krrays.adb
-- arrays.adb prints an Array that the user gives
--
-- Completed by: AJ Vrieland (ajv234)
-- Date: 03/18/2020
-------------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;

procedure arrays is
  type Vector is array ( Positive range <>) of Float;
  arraySize : Integer := 0;


  -----------------------------------------------------
  -- fillarray() fills in the array with user given numbers
  -- Receive: ar an array, size an Integer
  -- PRE: size > 0
  -- Passback: filled array
  -----------------------------------------------------
  procedure fillarray(ar: in out Vector; size: in Integer) is
  tempNum : Float := 0.0;
  i : Integer := 1;
  begin
  while i <= size loop
    Put("Enter number");
    Put(i);
    Put(": ");
    get(tempNum);
    ar(i) := tempNum;
    i := i + 1;
  end loop;
  end fillarray;


begin
  Put("Enter array size: ");
  get(arraySize);
  declare
     myArray : Vector (1..arraySize);
   begin
     fillarray(myArray, arraySize);
     Put("( ");
     for i in myArray'Range loop
       Put(myArray(i), 1, 2, 0);
       Put(" ");
     end loop;
     Put(" )");
   end;
end arrays;
]0;zer0relm@AJ-Blade:~/cs214/Projects/06/Ada[01;32m[zer0relm@AJ-Blade[01;37m Ada[01;32m]$[00m gnat make arrays.adb
gnatmake: "arrays" up to date.
]0;zer0relm@AJ-Blade:~/cs214/Projects/06/Ada[01;32m[zer0relm@AJ-Blade[01;37m Ada[01;32m]$[00m ./arrays 
Enter array size: 7
Enter number          1: 1
Enter number          2: 2
Enter number          3: 3
Enter number          4: 4
Enter number          5: 5
Enter number          6: 6
Enter number          7: 7
( 1.00 2.00 3.00 4.00 5.00 6.00 7.00  )
]0;zer0relm@AJ-Blade:~/cs214/Projects/06/Ada[01;32m[zer0relm@AJ-Blade[01;37m Ada[01;32m]$[00m exit

Script done on 2020-03-18 14:09:06-04:00 [COMMAND_EXIT_CODE="0"]
