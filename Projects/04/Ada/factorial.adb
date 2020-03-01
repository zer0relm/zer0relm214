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
