
import java.util.Scanner; 		// Get input

class Factorial{

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
