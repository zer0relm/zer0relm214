Script started on 2020-03-12 13:57:17-0400
]0;ajv234@gold07: ~/cs214/Labs/Lab06/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab06/Java[00m$ cat Average.. java
/* Average.java is a driver for method avg().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name:
 * Date:
 *
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;

public class Average
{
  public static void main(String[] args) {

      double[] array0 = {};
      double[] array1 = {9.0, 8.0, 7.0, 6.0};

      // output the average of the values in the arrays
      System.out.println("The first average is " + avg(array0));
      System.out.println("The second average is " + avg(array1));
  }


  /* sum() is a method that computes the sum of all the values
   * in an array of doubles.
   * Receive: anArray, an array of doubles.
   * Return: the sum of the values in anArray.
   ************************************************************/

   public static double sum(double[] theArray){
    double total = 0.0;
    for (int i = 0; i < theArray.length; i++){
        total += theArray[i];
    }
    return total;
  }


  /* avg() is a method that computes the average of the values
   * in an array.
   * Receive: anArray, an array of doubles.
   * Return: the average of the values in anArray.
   **************************************************************/

   public static double avg(double[] theArray ){
     if (theArray.length == 0 || theArray == null) {
       return 0.0;
     }
     else{
       return sum(theArray) / 2.0;
     }
   }

}
]0;ajv234@gold07: ~/cs214/Labs/Lab06/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab06/Java[00m$ javac -deprecation
error: no source files
]0;ajv234@gold07: ~/cs214/Labs/Lab06/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab06/Java[00m$ javac -deprecation Average.java 
]0;ajv234@gold07: ~/cs214/Labs/Lab06/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab06/Java[00m$ java av  Average 
The first average is 0.0
The second average is 15.0
]0;ajv234@gold07: ~/cs214/Labs/Lab06/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab06/Java[00m$ exit

Script done on 2020-03-12 13:57:40-0400
