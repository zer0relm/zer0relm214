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
