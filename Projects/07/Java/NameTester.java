/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: AJ Vrieland (ajv234)
 * Date: 04/08/2020
 ************************************************************/
import java.util.Scanner;

public class NameTester
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      assert aName.lfmi().equals("JPJ");

      aName.setFirst("Andrew") ;
      assert aName.getFirst().equals("Andrew") ;
      aName.setMiddle("James");
      assert aName.getMiddle().equals("James") ;
      aName.setLast("Vrieland");
      assert aName.getLast().equals("Vrieland");
      assert aName.lfmi().equals("VAJ");
      System.out.println(aName);

      Name name2 = new Name();
      name2.readName();
      System.out.println(name2);

      System.out.println("All tests passed!");


  }
}

// Replace this line with the declaration of class Name...
class Name
{
  private String myFirst, myMiddle, myLast;

  public Name(String first, String middle, String last)
   {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
   }

   public Name() {
     myFirst = myMiddle = myLast = "";
   }

   public String getFirst(){
     return myFirst;
   }

   public String getMiddle(){
     return myMiddle;
   }

   public String getLast(){
     return myLast;
   }

   public String toString(){
      return myFirst + ' ' + myMiddle + ' ' + myLast;
   }

   public void setFirst( String newFirst ) {
     myFirst = newFirst;
   }

   public void setMiddle( String newMiddle ) {
     myMiddle = newMiddle;
   }

   public void setLast( String newLast ) {
     myLast = newLast;
   }

   public String lfmi() {
     return Character.toString(myFirst.charAt(0)) + Character.toString(myMiddle.charAt(0)) + Character.toString(myLast.charAt(0));
   }

   public void readName() {
     Scanner keyboard = new Scanner(System.in);
     System.out.print("Enter first name: ");
     String first = keyboard.next();
     System.out.print("Enter Middle name: ");
     String middle = keyboard.next();
     System.out.print("Enter last name: ");
     String last = keyboard.next();
     setLast(last);
     setMiddle(middle);
     setFirst(first);
   }
};
