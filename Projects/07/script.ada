Script started on 2020-04-13 16:13:32-0400
]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Projects/07/Ada[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Projects/07/Ada[00m$ cat name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: AJ Vrieland
-- Date: 04/03/2020
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.Fixed;
use Ada.Strings.Fixed;
procedure name_tester is

  -- replace this line with the definition of NAME_SIZE
  NAME_SIZE : constant Integer := 8;
  -- replace this line with the definition of Name
  type Name is record
    myFirst, myMiddle, myLast : String(1..NAME_SIZE);
  end record;
  aName, name2 : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  -- replace this line with the definition of Init()
procedure Init(theName : out Name; First, Middle, Last : in String) is
begin
  theName.myFirst := First;
  theName.myMiddle := Middle;
  theName.myLast := Last;
end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  -- replace this line with the definition of getFirst()
function getFirst(theName : in Name) return String is
begin
  return theName.myFirst;
end getFirst;

  -- replace this line with the doc and def of getMiddle()
  function getMiddle(theName : in Name) return String is
  begin
    return theName.myMiddle;
  end getMiddle;

  -- replace this line with the doc and def of getLast()
  function getLast(theName : in Name) return String is
  begin
    return theName.myLast;
  end getLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  -- replace this line with the definition of getFullName()
  function getFullName(theName : in Name) return String is
  begin
    return theName.myFirst & theName.myMiddle & theName.myLast;
  end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  -- replace this line with the definition of Put()
  procedure Put(theName : in Name ) is
  begin
    Put(getFullName(theName));
  end Put;

  ---------------------------------------------------------------
  -- setFirst/Middle/Last sets the value of the respective name -
  -- PRE: theName has been initialized.                         -
  -- Receive: theName, a Name; the new Name, a String.          -
  -- Output: theName changed                                    -
  ---------------------------------------------------------------

  procedure setFirst(theName : in out Name; newfirst : in String ) is
  begin
    theName.myFirst := newfirst;
  end setFirst;
  procedure setMiddle(theName : in out Name; newMiddle : in String) is
  begin -- setMiddle
    theName.myMiddle := newMiddle;
  end setMiddle;
  procedure setLast(theName : in out Name; newLast : in String) is
  begin -- setMiddle
    theName.myLast := newLast;
  end setLast;

  --------------------------------------------------
  -- lfmi() returns the last first middle initials -
  -- PRE: theName has been initialized.            -
  -- Receive: theName, a Name.                     -
  -- Output: the initials                          -
  --------------------------------------------------

  function lfmi(theName : in Name) return String is
    last, first, middle : String := "        ";
  begin
    last := theName.myLast;
    first := theName.myFirst;
    middle := theName.myMiddle;
    return last(last'First) & first(first'First) & middle(middle'First);
  end lfmi;

  --------------------------------------------------
  -- readName() inits a name based of user imputs  -
  -- PRE: theName has not been initialized.        -
  -- Receive: theName, a Name                      -
  -- Output: an initialized Name                   -
  --------------------------------------------------

  procedure readName(theName : out Name) is
  firstName, middleName, lastName : String(1..NAME_SIZE);
  begin
    Put("Enter first Name: ");
    Get(firstName);
    Put("Enter middle Name: ");
    Get(middleName);
    Put("Enter last Name: ");
    Get(lastName);
    Init(theName, firstName, middleName, lastName);
  end readName;
begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst(1) failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John    Paul    Jones   ",
                    "getFullName() failed");
   Put(aName); New_line;

   setFirst(aName, "Andrew  ");
   setMiddle(aName, "James   ");
   setLast(aName, "Vrieland");
   pragma Assert( getFirst(aName) = "Andrew  ", "getFirst(2) failed");
   pragma Assert( getMiddle(aName) = "James   ", "getMiddle(2) failed");
   pragma Assert( getLast(aName) = "Vrieland", "getLast(2) failed");
   Put(aName); New_line;

   pragma Assert( lfmi(aName) = "VAJ", "lfmi failed");

   readName(name2);
   Put(name2); New_line;

   Put("All tests passed!"); New_line;

end name_tester;
]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Projects/07/Ada[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Projects/07/Ada[00m$ make ada
make: Nothing to be done for 'ada'.
]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Projects/07/Ada[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Projects/07/Ada[00m$ ./name_tester 
John    Paul    Jones   
Andrew  James   Vrieland
Enter first Name: Nathan    
Enter middle Name: Lukk e    
Enter last Name: Vrieand         land    
Nathan    Luke    Vriela
All tests passed!
]0;ajv234@cs-ssh: /home/cs/214/current/ajv234/Projects/07/Ada[01;32majv234@cs-ssh[00m:[01;34m/home/cs/214/current/ajv234/Projects/07/Ada[00m$ exit

Script done on 2020-04-13 16:13:57-0400
