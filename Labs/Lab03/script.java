Script started on 2020-02-20 13:27:26-0500
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ cat YearCodes.java
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
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
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ javaccat YearCodes.javaexit[Kprint --help[Ka2ps example6.script                      java  c -deprecatioln      ation YearCodes.java 
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ java YearCodes 

Enter your academic year: 
freshman
1
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ java YearCodes 

Enter your academic year: 
sophmo  omore
2
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ java YearCodes 

Enter your academic year: 
junior
3
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ java YearCodes 

Enter your academic year: 
senior
4
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ java YearCodes 

Enter your academic year: 
second year  
0
]0;ajv234@gold08: ~/cs214/Labs/Lab03[01;32majv234@gold08[00m:[01;34m~/cs214/Labs/Lab03[00m$ exit

Script done on 2020-02-20 13:28:35-0500
