Script started on 2020-03-11 15:20:25-0400
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ada[00m$  [Kcaat[K[Kt a[Kquadratic.ad[Kb[Kdb
-- quadratic.adb computes the quadratic equation
--
-- Input: three numbers
-- Precondition: a > 0
-- Output: the roots of the quadratic equation
--
--
-- Completed by: AJ Vrieland (ajv234)
-- Date: 03/11/2020
-------------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

with Ada.Numerics, Ada.Numerics.Elementary_Functions;
use Ada.Numerics, Ada.Numerics.Elementary_Functions;

procedure quadratic is
  Qa, Qb, Qc, root1, root2 : Float;

  -----------------------------------------------------
  -- quadtratic() calculates the quadratic equation
  -- Receive: a, b, c
  -- PRE: a > 0
  -- Passback: r1 - the first root
  --           r2 - the second root
  -----------------------------------------------------
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
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ada[00m$ ./quadratic 
To calculate the quadratic equation,
Enter a: 1
Enter b: 5
Enter c: 2
Root 1 is, -4.38447E-01 Root 2 is, -4.56155E+00
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ada[00m$ ./quadratic 
To calculate the quadratic equation,
Enter a: 6
Enter b: 5
Enter c: 4
\n*** quadraticRoots(): b^2 - 4ac is negative!
error
]0;zer0relm@Zer0relm: ~/cs214/Projects/05/Ada[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/05/Ada[00m$ exit

Script done on 2020-03-11 15:21:00-0400
