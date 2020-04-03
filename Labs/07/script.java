Script started on 2020-04-03 15:36:47-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="188" LINES="28"]
]0;zer0relm@AJ-Desktop:~/cs214/Labs/07/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: AJ Vrieland (ajv234)
 * Date: 04/07/2020 
 ************************************************************/

public class NameTester
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

// Replace this line with the declaration of class Name...
class Name
{
  private String myFirst, myMiddle, myLast;

  public Name(String first, String middle, String last)
   {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
   }

   public String getFirst(){
     return myFirst;
   }

   public String getMiddle(){
     return myMiddle;
   }

   public String getLast(){
     return myLast;
   }

   public String toString()
   {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
   }
};
]0;zer0relm@AJ-Desktop:~/cs214/Labs/07/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m make java
javac -deprecation NameTester.java
]0;zer0relm@AJ-Desktop:~/cs214/Labs/07/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m java -a[Kea NameTester
John Paul Jones
All tests passed!
]0;zer0relm@AJ-Desktop:~/cs214/Labs/07/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m exit

Script done on 2020-04-03 15:37:09-04:00 [COMMAND_EXIT_CODE="0"]
