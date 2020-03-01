
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
