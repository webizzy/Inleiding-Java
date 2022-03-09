String zoeknaam = "Max";
boolean gevonden = false;
String[] namen = {"Marvin", "Marcel", "Harry", "Barrie", "Chris", "Tom"};

void setup(){
  for(int i = 0; i < namen.length; i++){
    if(zoeknaam == namen[i]){
     gevonden = true;
    }
  }
  
  if(gevonden){
    println( "Ja de naam " + zoeknaam + " bestaat!" );
  }else{
    println("Helaas de naam " + zoeknaam + " ken ik niet!");
  }
  
}
