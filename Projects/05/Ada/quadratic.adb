
with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

with Ada.Numerics, Ada.Numerics.Elementary_Functions;
use Ada.Numerics, Ada.Numerics.Elementary_Functions;

procedure quadratic is
  Qa, Qb, Qc, root1, root2 : Float;


  procedure quadratic(a, b, c: in Float; r1, r2: in out Float) is
  arg : Float;
  begin
    arg := b**2.0 - 4.0*a*c;
    if a = 0.0 then
      Put("a cannot be 0");
      r1 := 0.0;
      r2 := 0.0;
    elsif arg < 0.0 then
        Put("\n*** quadraticRoots(): b^2 - 4ac is negative!");
    else
        r1 := (-b + Sqrt(arg))/2.0*a;
        r2 := (-b - Sqrt(arg))/2.0*a;
    end if;
  end quadratic;

begin
  Put_Line("To calculate the quadratic equation,");
  Put("Enter a: ");
  Get(Qa);
  Put("Enter b: ");
  Get(Qb);
  Put("Enter c: ");
  Get(Qc);
  quadratic(Qa, Qb, Qc, root1, root2);

  if root1 = 0.0 then
    New_Line;
    Put("error");
  else
    Put("Root 1 is, ");
    Put(root1);
    Put(" Root 2 is, ");
    Put(root2);
  end if;


end quadratic;
