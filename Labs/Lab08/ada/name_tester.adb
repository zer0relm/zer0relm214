-- name_tester.adb "test-drives" the Name type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: AJ Vrieland
-- Date: 04/14/2020
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with name_package; use name_package;

procedure name_tester is
  aName : name_package.Name ;


begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ",
                   "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ",
                   "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ",
                   "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                    "getFullName() failed");
   Put(aName); New_line;
   Put("All tests passed!"); New_line;
end name_tester;
