Script started on 2020-02-27 19:29:41-0500
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab04/Java[00m$ cat log[K[K[KLogTable.java
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
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab04/Java[00m$ -java[K[K[K[K[Kjavac -deprecation LogTable.java 
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab04/Java[00m$ java dde[Ke[K[Ke[K[KLogTable 
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
0.5
The logarithm of 1.000 is 0.000000
The logarithm of 1.500 is 0.176091
The logarithm of 2.000 is 0.301030
The logarithm of 2.500 is 0.397940
The logarithm of 3.000 is 0.477121
The logarithm of 3.500 is 0.544068
The logarithm of 4.000 is 0.602060
The logarithm of 4.500 is 0.653213
The logarithm of 5.000 is 0.698970
The logarithm of 5.500 is 0.740363
The logarithm of 6.000 is 0.778151
The logarithm of 6.500 is 0.812913
The logarithm of 7.000 is 0.845098
The logarithm of 7.500 is 0.875061
The logarithm of 8.000 is 0.903090
The logarithm of 8.500 is 0.929419
The logarithm of 9.000 is 0.954243
The logarithm of 9.500 is 0.977724
]0;zer0relm@Zer0relm: ~/cs214/Labs/Lab04/Java[01;32mzer0relm@Zer0relm[00m:[01;34m~/cs214/Labs/Lab04/Java[00m$ exit

Script done on 2020-02-27 19:30:20-0500
