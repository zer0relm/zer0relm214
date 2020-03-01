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
