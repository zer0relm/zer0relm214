Script started on 2020-02-10 16:33:05-0500
]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/Java[00m$ cat rectangleArea.java
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

]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/Java[00m$ javac rectangleArea.java [K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K-deprecation rectangleArea.javva 
]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/Java[00m$ java rectangleArea 


To compute the area of a rectangle,
enter its Lenth: 5
enter its Width: 5

The area is 25.0

]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/Java[00m$ java rectangleArea 


To compute the area of a rectangle,
enter its Lenth: 124
enter its Width: 6

The area is 744.0

]0;aj@aj-VirtualBox: ~/Documents/cs214/Projects/01/Java[01;32maj@aj-VirtualBox[00m:[01;34m~/Documents/cs214/Projects/01/Java[00m$ exit

Script done on 2020-02-10 16:34:19-0500
