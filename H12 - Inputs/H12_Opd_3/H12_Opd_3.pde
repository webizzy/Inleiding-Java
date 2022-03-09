

void setup(){
  size(800,800);
  background(0,0,0);
  noStroke();
}

void draw(){

}

void mouseMoved(){
  int R = floor(random(256));
  int G = floor(random(256));
  int B = floor(random(256));
  fill(R,G,B);
  rect(mouseX,mouseY,20,20);
}
