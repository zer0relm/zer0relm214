
import java.util.Scanner;

public class TemperatureTest{
  public static void main(String[] args) {
    Scanner keyboard = new Scanner(System.in);
    Temperature temp1 = new Temperature(0.0, "f");
    Temperature temp2 = new Temperature(0.0, "F");

    Temperature test = new Temperature(0.0, "c");
    //System.out.print(temp2.getDegree());
    System.out.print(temp1.equals(test));
    test.setTemperature("-17.778 c");
    System.out.print(test);
    System.out.print(temp1.equals(test));
    System.out.print(test);

    // System.out.print("Enter base Temp: ");
    // String temp = keyboard.next();
    // temp1.setTemperature(temp);
  }
}
