

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;

procedure arrays is
  type Vector is array ( Positive range <>) of Float;
  --arraySize : Integer := 0;
  arraySize : Float := 0.0;

  procedure fillarray(ar: in out Vector; size: in Float) is
  i, tempNum : Float := 0.0;
  --i : Integer := 0;
  begin
  while i < size loop
    Put("Enter number ");
    Put(i);
    Put(": ");
    get(tempNum);
    ar(i) := tempNum;
  end loop;
  end fillarray;





begin
  Put("Enter array size: ");
  get(arraySize);
  declare
     myArray : Vector(0..arraySize);
   begin
     fillarray(myArray, arraySize);
   end;
end arrays;
