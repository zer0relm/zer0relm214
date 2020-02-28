/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: AJ Vrieland (ajv234)
 * Date: 02/27/2020
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();
    logTable(start, stop, increment);
  }

  /* function logtTable() prints to console the log table given a start stop and increment
   * Parameter: start, stop, and increment, doubles
   * Precondition: start is less than stop
   * Return: nothing
   */
  public static void logTable(double start, double stop, double increment){
    for(double count = start; count < stop; count = count + increment){
      System.out.printf("The logarithm of %.3f is %f\n", count, Math.log10(count));
    }
  }
}
