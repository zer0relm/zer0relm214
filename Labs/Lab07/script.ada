Script started on 2020-04-03 17:17:59-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="188" LINES="28"]
]0;zer0relm@AJ-Desktop:~/cs214/Labs/Lab07/Ada[01;32m[zer0relm@AJ-Desktop[01;37m Ada[01;32m]$[00m cat name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: AJ Vrieland
-- Date: 04/03/2020
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  -- replace this line with the definition of NAME_SIZE
  NAME_SIZE : constant Integer := 8;
  -- replace this line with the definition of Name
  type Name is record
    myFirst, myMiddle, myLast : String(1..NAME_SIZE);
  end record;
  aName : Name ;


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

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John    Paul    Jones   ",
                    "getFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;
]0;zer0relm@AJ-Desktop:~/cs214/Labs/Lab07/Ada[01;32m[zer0relm@AJ-Desktop[01;37m Ada[01;32m]$[00m make ada
make: Nothing to be done for 'ada'.
]0;zer0relm@AJ-Desktop:~/cs214/Labs/Lab07/Ada[01;32m[zer0relm@AJ-Desktop[01;37m Ada[01;32m]$[00m ./name_tester 
John    Paul    Jones   
All tests passed!
]0;zer0relm@AJ-Desktop:~/cs214/Labs/Lab07/Ada[01;32m[zer0relm@AJ-Desktop[01;37m Ada[01;32m]$[00m exit

Script done on 2020-04-03 17:18:15-04:00 [COMMAND_EXIT_CODE="0"]
