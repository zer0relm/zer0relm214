Script started on 2020-05-04 16:34:26-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="188" LINES="27"]
]0;zer0relm@AJ-Blade:~/cs214/Labs/Lab09/ada[01;32m[zer0relm@AJ-Blade[01;37m ada[01;32m]$[00m cat Max.ada list_package.adb list_package.ads
cat: Max.ada: No such file or directory
-- list_package.adb defines Ada linked list operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
-------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body List_Package is

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List : out List) is
  begin
    A_List.Its_First := null;
    A_List.Its_Last := null;
    A_List.Its_Length := 0;
  end Init;

  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List : in List) return Boolean is
  begin
    return A_List.Its_Length = 0;
  end Empty;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer is
  begin
    return A_List.Its_Length;
  end Length;

  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List : in out List) is
    Temp_Ptr : constant Node_Ptr := new List_Node;
  begin
    Temp_Ptr.Its_Value := A_Value;
    Temp_Ptr.Its_Next := null;

    if A_List.Its_Length = 0 then
       A_List.Its_First := Temp_Ptr;
    else
       A_List.Its_Last.Its_Next := Temp_Ptr;
    end if;

    A_List.Its_Last := Temp_Ptr;

    A_List.Its_Length := A_List.Its_Length + 1;
  end Append;

  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------

  procedure Put(A_List : in List) is
    Temp_Ptr : Node_Ptr := A_List.Its_First;
  begin
    while Temp_Ptr /= null loop
       Put(' '); Put(Temp_Ptr.Its_Value);
       Temp_Ptr := Temp_Ptr.Its_Next;
    end loop;
  end Put;
  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------

  function Max(A_List : in List) return Integer is
    Temp_Ptr : Node_Ptr := A_List.Its_First;
    Temp_max : Integer := 0;
  begin
    while Temp_Ptr /= null loop
      if Temp_Ptr.Its_Value > Temp_max then
        Temp_max := Temp_Ptr.Its_Value;
      end if;
      Temp_Ptr := Temp_Ptr.Its_Next;
    end loop;
    return Temp_max;
  end Max;


end List_Package;
-- list_package.ads declares an Ada linked list and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
------------------------------------------------------------------

package List_Package is

  -- the list-type itself (public)
  type List is private;

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List: out List);


  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List: in List) return Boolean;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer;


  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List: in out List);


  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------

  procedure Put(A_List : in List);

  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------

  function Max(A_List : in List) return Integer;

 private
   -- replace this line with a forward-dec of List_Node
   type List_Node;
   -- replace this line with a dec of Node_Ptr
   type Node_Ptr is access List_Node;
   -- replace this line with a full dec of List_Node
   type List_Node is
          record
           Its_Value : Integer;
           Its_Next : Node_Ptr;
          end record;
   -- replace this line with a full dec of List
   type List is
        record
          Its_First : Node_Ptr;
          Its_Last : Node_Ptr;
          its_Length : Integer;
        end record;

end List_Package;
]0;zer0relm@AJ-Blade:~/cs214/Labs/Lab09/ada[01;32m[zer0relm@AJ-Blade[01;37m ada[01;32m]$[00m .[Kmake max
gnatbind  max.ali
gnatlink  max.ali -o adaMax
]0;zer0relm@AJ-Blade:~/cs214/Labs/Lab09/ada[01;32m[zer0relm@AJ-Blade[01;37m ada[01;32m]$[00m ./adaMax 
          99          88          77          66          55
          55          66          77          88          99
          55          77          99          88          66
The maximum value in list 1 is          99
The maximum value in list 2 is          99
The maximum value in list 3 is          99
]0;zer0relm@AJ-Blade:~/cs214/Labs/Lab09/ada[01;32m[zer0relm@AJ-Blade[01;37m ada[01;32m]$[00m exit

Script done on 2020-05-04 16:34:56-04:00 [COMMAND_EXIT_CODE="0"]
