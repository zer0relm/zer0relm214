/* Max.java finds the maximum values in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by: AJ Vrieland (ajv234)
 * Date:
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Max {

  public static void main(String [] args) {
    // define list1, list2, list3 here ...
    LinkedList<Integer> list1 = new LinkedList<Integer>();
    LinkedList<Integer> list2 = new LinkedList<Integer>();
    LinkedList<Integer> list3 = new LinkedList<Integer>();


    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // max is first
    list1.add(77);
    list1.add(66);
    list1.add(55);

    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // max is last
    list2.add(77);
    list2.add(88);
    list2.add(99);

    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // max is in the middle
    list3.add(99);
    list3.add(88);
    list3.add(66);

    print(list1);
    print(list2);
    print(list3);

   // display maxima of the 3 lists...
    System.out.println("Max of List1 is " + Collections.max(list1));
    System.out.println("Max of List2 is " + Collections.max(list2));
    System.out.println("Max of List3 is " + Collections.max(list3));
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   *
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
  // replace this line with the definition of print().
  public static void print(LinkedList<Integer> aList)
   {
     Iterator<Integer> listIterator = aList.iterator();
     while (listIterator.hasNext()){
	    System.out.print(listIterator.next() + " ");
	   }
	   System.out.print('\n');
   }

}
