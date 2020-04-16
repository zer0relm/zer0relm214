
public class TemperatureTest{
  public static void main(String[] args) {
    Temperature kelvin = new Temperature(500, "K");
    Temperature celsius = new Temperature(0, "c");
    Temperature fahrenheit = new Temperature(75, "F");

    Temperature rankine =  new Temperature(491.67, "R");

    // assert celsius.getFahrenheit() == 32 : "C->F";
    // //System.out.print(celsius.getFahrenheit());
    // assert kelvin.getFahrenheit() == 440.33 : "K->F";
    // //System.out.print(kelvin.getFahrenheit());
    // assert fahrenheit.getFahrenheit() == 75 : "F->F";
    //
    // System.out.print(kelvin.getCelsius());
    // assert kelvin.getCelsius() == 226.85 : "K->C";
    // assert celsius.getCelsius() == 0 : "C->C";
    // System.out.print(fahrenheit.getCelsius());
    // assert fahrenheit.getCelsius() == 23.89 : "F->C";

    // System.out.printf("0 C in K is %f\n", celsius.getKelvin());
    // System.out.printf("75 F in K is %f\n", fahrenheit.getKelvin());
    // System.out.printf("500 in K is %f\n", kelvin.getKelvin());


  }
}
