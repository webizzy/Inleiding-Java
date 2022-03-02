import controlP5.*;

ControlP5 cp;

Textfield TFI;

Button knop1;

void setup(){
  size(600,500);
  
  cp = new ControlP5(this);
  
  TFI = cp.addTextfield("Textfield1").setText("ENTER YOUR NAME!")
                                     .setSize(200,50)
                                     .setPosition(150,200)
                                     .setCaptionLabel("");
                                     
  knop1 = cp.addButton("Knop1")
            .setCaptionLabel("Enter")
            .setPosition(380,200)
            .setSize(80,50);
}

void draw(){
  background(0,0,0);
}

void Knop1(){
  println("Your name is:" + TFI.getText());
}
