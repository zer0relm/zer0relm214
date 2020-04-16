



class Temperature
{

  public Temperature(final double degree, final String scale){
    myDegree = degree;
    myScale = scale;
    assert scale == "K" || scale == "F" || scale == "f" || scale == "k" ||
      scale == "C" || scale == "c";
  }

  public final double getFahrenheit(){
    if(myScale != "F" || myScale != "f"){
      if(myScale == "C" || myScale == "c"){
        return (myDegree * (1.8)) + 32;
      }else if(myScale == "K" || myScale == "k"){
        return myDegree * (1.8) - 459.67;
    }
    }
    return myDegree;
  }

  public final double getCelsius(){
    if(myScale != "C" || myScale != "c"){
      if(myScale == "F" || myScale == "f"){
        return (myDegree - 32)/(1.8);
      } else if(myScale == "K" || myScale == "k"){
      return myDegree - 273.15;
    }
    }
    return myDegree;
  }

  public final double getKelvin(){
    if(myScale != "K" || myScale != "k"){
      if(myScale == "F" || myScale == "f"){
        return (myDegree + 459.67)/1.8;
      } else if(myScale == "C" || myScale == "c"){
        return myDegree + 273.15;
      }
    }
    return myDegree;
  }


  private Double myDegree;
  private String myScale;
}
