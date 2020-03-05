Script started on 2020-03-05 13:59:08-0500
]0;ajv234@gold07: ~/cs214/Labs/Lab05/05/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab05/05/Java[00m$ -jac    jcav   avac -deprecation Split.java 
]0;ajv234@gold07: ~/cs214/Labs/Lab05/05/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab05/05/Java[00m$ cat Split.java
/* Split.java is a class and program that splits a string
 * into two substrings.
 *
 * Begun by: Serita Nelesen
 * Completed by: AJ Vrieland (ajv234)
 * Date: 03/04/2020
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();

      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);

    }

  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/
  // replace this line with a definition for splitter
  public static void splitter(String theString, int position, String[] resultList){
    String first = theString.substring(0, position);
    String second = theString.substring(position, theString.length());
    resultList[0] = first;
    resultList[1] = second;
  }

}
]0;ajv234@gold07: ~/cs214/Labs/Lab05/05/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab05/05/Java[00m$ java Split 

To split a string, enter the string: 
hello

Enter the split position: 
0

The first part is 
 and the second part is hello
]0;ajv234@gold07: ~/cs214/Labs/Lab05/05/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab05/05/Java[00m$ java Split 

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
]0;ajv234@gold07: ~/cs214/Labs/Lab05/05/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab05/05/Java[00m$ java Split 

To split a string, enter the string: 
hello

Enter the split position: 
5

The first part is hello
 and the second part is 
]0;ajv234@gold07: ~/cs214/Labs/Lab05/05/Java[01;32majv234@gold07[00m:[01;34m~/cs214/Labs/Lab05/05/Java[00m$ exit

Script done on 2020-03-05 14:00:04-0500
