int mijnGetal;

void setup(){
  println(Getal(20,10));
  mijnGetal = Getal(30,40);
  println(mijnGetal);
}

void draw(){

}

int Getal( int Getal1, int Getal2){
  int antwoord;
  
  antwoord = (Getal1 + Getal2)/2;
  
  return antwoord;
}
