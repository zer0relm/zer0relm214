/* Quadratic.java returns roots of the quadratic equation given three numbers
 *
 *
 * Completed by: AJ Vrieland (ajv234)
 * Date: 03/11/2020
 ******************************************************************************/

import java.util.Scanner;

public class Quadratic
{
  public static void main(String[] args) {
    Scanner keyboard = new Scanner(System.in);
    double[] roots = new double[2];

    System.out.println("\nTo calculate the quadratic formula,");
    System.out.print("Enter a: ");
    double Qa = keyboard.nextDouble();
    System.out.print("Enter b: ");
    double Qb = keyboard.nextDouble();
    System.out.print("Enter c: ");
    double Qc = keyboard.nextDouble();

    roots = quadratic(Qa, Qb, Qc);

    System.out.printf("Root 1 is, %f", roots[0]);
    System.out.printf("\nRoot 2 is %f", roots[1]);

  }

  /* quadratic() returns roots of the quadratic equation
   * Receive: a, b, c, doubles
   * Precondition: a > 0
   * Return: a vector of the roots
   *******************************************************/
  public static double[] quadratic(double a, double b, double c){
    double[] rs = new double[2];
    double arg = (Math.pow(b, 2) - 4.0*a*c);
    if( a != 0.0 ){
      if ( arg >= 0.0 ){
        rs[0] = (b - Math.sqrt(arg)) / 2.0 * a;
        rs[1] = (b + Math.sqrt(arg)) / 2.0 * a;
      }
    }
    return rs;
  }
}
