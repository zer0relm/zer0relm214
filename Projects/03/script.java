Script started on 2020-02-24 19:33:39-0500
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Java[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Java[00m$ cat GradeBook.java
/* GradeBook.java is a driver for the function gradeBook();
 *
 * Program by: AJ Vrieland (ajv234)
 * Date: 02/23/20
 **********************************************************/

import java.util.Scanner;

public class GradeBook{

  public static void main(String[] arg) {
    Scanner keyboard = new Scanner(System.in);
    String gradestr = "";                                       // init gradestr
    int grade = 1;                                              // init grade (1 to enter the loop)
    while (grade != 0){                                         // starts loop to enter grades
      System.out.print("Enter a grade (type '0' to exit): ");   // asks user for grade and instructions to exit
      gradestr = keyboard.next();                               // gets string from user
      grade = Integer.parseInt(gradestr);                       // converts user string to int
      System.out.print(gradeBook(grade) + "\n");                // returns the letter grade
    }

  }

  /***********************************************************
   * gradeBook() converts a number grade into a letter grade
   *
   * Receive: grade, an Integer
   * PRE: 1 <= grade <= 100
   * Return: letter grade
   ***********************************************************/
  public static String gradeBook(int grade){
    switch (grade / 10) {
      case 10: case 9:
        return "A";
      case 8:
        return "B";
      case 7:
        return "C";
      case 6:
        return "D";
      default:
        return "F";
    }
  }
}
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Java[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Java[00m$ javac -deprecation GradeBook.java 
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Java[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Java[00m$ java GradeBook 
Enter a grade (type '0' to exit): 12
F
Enter a grade (type '0' to exit): 56
F
Enter a grade (type '0' to exit): 65
D
Enter a grade (type '0' to exit): 78
C
Enter a grade (type '0' to exit): 87
B
Enter a grade (type '0' to exit): 98
A
Enter a grade (type '0' to exit): 99
A
Enter a grade (type '0' to exit): 100
A
Enter a grade (type '0' to exit): 0
F
]0;zer0relm@zer0relm: ~/cs214/Projects/03/Java[01;32mzer0relm@zer0relm[00m:[01;34m~/cs214/Projects/03/Java[00m$ exit

Script done on 2020-02-24 19:34:40-0500
