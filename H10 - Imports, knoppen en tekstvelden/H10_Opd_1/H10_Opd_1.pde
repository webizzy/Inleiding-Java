import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(600,400);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1").setSize(150,75)
                               .setPosition(125,160)
                               .setCaptionLabel("Klik mij");
  
  knop2 = cp.addButton("Knop2").setSize(150,75)
                               .setPosition(325,160)
                               .setCaptionLabel("Klik mij");
}

void draw(){
  background(255,255,255);
}

void Knop1(){
  println("Goed gedaan!");

}

void Knop2(){
  println("Helaas fout!");
}
