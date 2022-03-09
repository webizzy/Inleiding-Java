int seconden;
int leftAmount;
int aantal = 0;
boolean racing = true;

void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  
  seconden = millis()/1000;
  leftAmount = 10 - seconden;
  if(leftAmount <= 0){
    leftAmount = 0;
  }
  
  if(seconden >= 10){
    racing = false;
  }
  fill(0,0,0);
  text("Spaties: " + aantal, 200,200);
  text("Seconds Left " + leftAmount, 200,220);
}

void keyReleased(){
  if(keyCode == 32 && racing){
    aantal++;
  }
}
