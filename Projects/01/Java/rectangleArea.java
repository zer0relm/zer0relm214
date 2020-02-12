/* Computes the area of a give rectangle
 *
 * Input: The length and width. 
 * Precondition: They are positive numbers
 * Output: The area of the given rectangle
 *
 * By: AJ Vrieland
 * Date: 02/10/2020
 * ***************************************/

import java.util.Scanner;

public class rectangleArea {
	/* function computes the area of a rectangle given length and width
	 * Input: l & w
	 * Precontion: l & w > 0
	 * Output: area of rectangle
	 */ 
	public static double rectangleArea(double l, double w){
		return l * w;
	}

	// main program
	public static void main(String[] args) {
		System.out.println("\n\nTo compute the area of a rectangle,");
		// prompts for Length and puts in variable length
		System.out.print("enter its Lenth: ");
		Scanner keyboard1 = new Scanner(System.in);
                double length =  keyboard1.nextDouble();
		// prompts for Width and puts in variable width
		System.out.print("enter its Width: ");
		Scanner keyboard2 = new Scanner(System.in);
		double width = keyboard2.nextDouble();
		
		// prints out the result of rectangleArea given length and width
		System.out.println("\nThe area is " + rectangleArea(length, width) + "\n");
	} //main program
}//class rectangleArea

