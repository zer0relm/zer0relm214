Script started on 2020-03-01 12:24:26-0500
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Java[00m$ cat fac[K[K[KFactorial.java
/* Factorial.java computes a factorial
 *
 * Input: a number
 * PRE: number must be positive
 * Output: the factorial of that number
 *
 * Completed by: AJ Vrieland (ajv234)
 * Date: 03/01/2020
 *****************************************/


import java.util.Scanner; 		// Get input

class Factorial{


  /* function computes the factorial
   * Parameter: n, a number
   * Precondition: n is positive
   * Return: the factorial
   */
  public static double factorial(double n){
    double answer = 1.0;
    for(double i = 2; i <= n; i++){
      answer *= i;
    }
    return answer;
  }

  public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.print("Enter factorial: ");
      double number;
      number = keyboard.nextDouble();
      System.out.println(factorial(number));
  }
}
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Java[00m$ javac -deprecta[K[Kation Factorial.java 
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Java[00m$ java Factorial 
Enter factorial: 5
120.0
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Java[00m$ java Factorial 
Enter factorial: 10
3628800.0
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Java[00m$ java Factorial 
Enter factorial: 50
3.0414093201713376E64
]0;zer0relm@Zer0relm: ~/cs214/Projects/04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Projects/04/Java[00m$ exit

Script done on 2020-03-01 12:24:55-0500
