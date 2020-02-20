Script started on 2020-02-20 15:30:58-0500
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ cat YearCodes.java
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 *
 * Completed by: AJ Vrieland (ajv234)
 * Date: 02/20/2020
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    *	yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

   public static int yearCode(String year){
   	if (year.equals("freshman")){
		return 1;
	} else if (year.equals("sophomore")){
		return 2;
	} else if (year.equals("junior")){
		return 3;
	} else if (year.equals("senior")){
		return 4;
	} else {
		return 0;
	}
   }


}
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ javac -deprecation YearCodes.java 
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ java YearCodes 

Enter your academic year: 
freshman
1
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ java YearCodes 

Enter your academic year: 
sophomore
2
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ java YearCodes 

Enter your academic year: 
junior
3
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ java YearCodes 

Enter your academic year: 
senior
4
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ java YearCodes 

Enter your academic year: 
ye  second year
0
]0;aj@aj-VirtualBox: ~/Documents/cs214/Labs/Lab03/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Labs/Lab03/Java[00m$ exit

Script done on 2020-02-20 15:31:44-0500
