Script started on 2020-03-15 12:12:23-04:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="189" LINES="29"]
]0;zer0relm@AJ-Desktop:~/cs214/Projects/06/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m cat Avera[K[K[Ke[Kar[K[K[Ka[Krrays.java
/* Arrays.java prints an Array that the user gives
 *
 * Completed by: AJ Vrieland (ajv234)
 * Date: 03/15/2020
 **************************************************/

import java.util.Scanner;

public class Arrays
{

  public static void main(String[] args) {
    Scanner keyboard = new Scanner(System.in);

    System.out.print("Enter the size of the array: ");
    int size = keyboard.nextInt();
    int[] mArray = new int[size];

    mArray = fillarray(size, keyboard);

    System.out.print("\n[");
    for(int i = 0; i < size; i++){
      System.out.print(" " + mArray[i]);
    }
    System.out.print(" ]\n");
  }

  /* fillarray() creates an array of numbers that the user imputs
   * Recieve: size, int
   * Precondition: size > 0
   * Return: an filled array
   ***************************************************************/
  public static int[] fillarray(int s, Scanner k){
    int[] tempArray = new int[s];
    int tempNum;
    for(int i = 0; i < s; i++){
      System.out.print("Enter number " + i + ": ");
      tempNum = k.nextInt();
      tempArray[i] = tempNum;
    }
    return tempArray;
  }
}
]0;zer0relm@AJ-Desktop:~/cs214/Projects/06/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m javac 0[Kp[K-dp[Keprecation a[KArrays.java
]0;zer0relm@AJ-Desktop:~/cs214/Projects/06/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m java Arrr[Kays
Enter the size of the array: 7
Enter number 0: 1
Enter number 1: 2
Enter number 2: 3
Enter number 3: 4
Enter number 4: 5
Enter number 5: 6
Enter number 6: 7

[ 1 2 3 4 5 6 7 ]
]0;zer0relm@AJ-Desktop:~/cs214/Projects/06/Java[01;32m[zer0relm@AJ-Desktop[01;37m Java[01;32m]$[00m exit

Script done on 2020-03-15 12:13:06-04:00 [COMMAND_EXIT_CODE="0"]
