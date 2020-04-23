



class Temperature
{

  public Temperature(double degree, String scale){
    myDegree = degree;
    myScale = scale.charAt(0);
  }

  private boolean isValid(){
    assert myScale == 'K' || myScale == 'F' || myScale == 'f' || myScale == 'k' ||
      myScale == 'C' || myScale == 'c';
    return true;
  }

  public double getDegree(){
    return myDegree;
  }
  public char getScale(){
    return myScale;
  }
  /* getFahrenheit/Celsius/Kelvin() converts the temperature to given scale
   * Recieve: a Temperature in one of the three scales
   * Output: The converted temperature
   **************************************************************************/
  public void toFahrenheit(){
    if(myScale != 'F' || myScale != 'f'){
      if(myScale == 'C' || myScale == 'c'){
        myDegree = (myDegree * (1.8)) + 32;
        myScale = 'F';
      }else if(myScale == 'K' || myScale == 'k'){
        myDegree = myDegree * (1.8) - 459.67;
        myScale = 'F';
    }
    }
  }

  public void toCelsius(){
    if(myScale != 'C' || myScale != 'c'){
      if(myScale == 'F' || myScale == 'f'){
        myDegree = (myDegree - 32)/(1.8);
        myScale = 'C';
      } else if(myScale == 'K' || myScale == 'k'){
      myDegree = myDegree - 273.15;
      myScale = 'C';
    }
    }
  }

  public void toKelvin(){
    if(myScale != 'K' || myScale != 'k'){
      if(myScale == 'F' || myScale == 'f'){
        myDegree = (myDegree + 459.67)/1.8;
        myScale = 'K';
      } else if(myScale == 'C' || myScale == 'c'){
        myDegree = myDegree + 273.15;
        myScale = 'K';
      }
    }
  }


  /* setTemperature() given a string with a temperature and scale will
   *      update Temperature to that new value and scale
   * Recieve: a String containing a degree and scale
   * Output: the Temperature is updated
   **********************************************************************/
  public void setTemperature(String temp){
    String tempDegree = "";
    char tempScale = ' ';
    char tempChar;
    for(int i = 0; i < temp.length(); i++){
      tempChar = temp.charAt(i);
      if(Character.isDigit(tempChar) || tempChar == '.'){
        tempDegree += tempChar;
      } else if(tempChar == ' '){
        continue;
      } else if (Character.isLetter(tempChar)){
        tempScale = tempChar;
      }
    }

    myDegree = Double.valueOf(tempDegree);
    myScale = tempScale;
  }

  /* toString() returns a string version of the Temperature
  */
  public String toString(){
    return Double.toString(myDegree) + " " + myScale;
  }

  public void raise(double stepVal){
    myDegree += stepVal;
  }

  public void lower(double stepVal){
    myDegree -= stepVal;
  }



  public boolean equals(Temperature temp2){
    if(myScale == 'C' || myScale == 'c'){
      temp2.toCelsius();
    } else if(myScale == 'F' || myScale == 'f'){
      temp2.toFahrenheit();
    } else if(myScale == 'K' || myScale == 'k'){
      temp2.toKelvin();
    }
    if(myDegree == temp2.getDegree()){
      return true;
    }
    return false;
  }

  private double myDegree;
  private char myScale;
}
