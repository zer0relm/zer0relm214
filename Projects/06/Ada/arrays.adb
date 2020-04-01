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
