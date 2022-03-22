PImage Background, Floor, Bird, topPipe, bottomPipe, Lose, Zero, One, Two, Three, Four, Five, Six, Seven, Eight, Nine;
int BackgroundX, BackgroundY, FloorX, FloorY, BirdX, BirdY, ZW, ZWS, LoseX, LoseY;
int GameState, Score;
int[] pipeX, pipeY;

import processing.sound.*;
SoundFile hit, point, wing;

void setup(){
  size(600,650);
  Background = loadImage("./img/Background.png");
  Floor = loadImage("./img/Floor.png");
  Bird = loadImage("./img/Bird.png");
  topPipe = loadImage("./img/topPipe.png");
  bottomPipe = loadImage("./img/bottomPipe.png");
  Lose = loadImage("./img/Lose.png");
  
  hit = new SoundFile(this, "hit.mp3");
  point = new SoundFile(this, "point.mp3");
  wing = new SoundFile(this, "wing.mp3");
  
  LoseX = 175;
  LoseY = 250;
  
  FloorX = 0;
  FloorY = 555;
  
  BirdX = 50;
  BirdY = 250;
  
  ZW = 1;
  
  pipeX = new int[4];
  pipeY = new int[pipeX.length];
  
  for(int i = 0; i < pipeX.length; i++){
  pipeX[i] = width + 200*i;
  pipeY[i] = (int)random(-250, 0);
  }
  
}

void draw(){
  
  if(GameState == 0){
  Background();
  Pipes();
  Floor();
  Bird();
  Score();
  }else{
    image(Lose, LoseX, LoseY);
    //hit.play();
  }
}

void mousePressed(){
  ZWS = -10;
  wing.play();
}

void Pipes(){
  for(int i = 0; i < pipeX.length; i++){
    image(topPipe, pipeX[i], pipeY[i]);
    image(bottomPipe, pipeX[i], pipeY[i] + 500);
    pipeX[i] -=2;
    
  if(pipeX[i] < -200){
    pipeX[i] = width;
    }
    
  if(BirdX > pipeX[i] - 30 && BirdX < pipeX[i] + 61){
    if(!(BirdY > pipeY[i] + 350 && BirdY < pipeY[i] + 350 + 123)){
      GameState = 1;
    }else if(BirdX == pipeX[i]){
      point.play();
      Score++;
    }
   }
  }
}

void Bird(){
  image(Bird,BirdX,BirdY);
  BirdY = BirdY + ZWS;
  ZWS = ZWS + ZW;
}

void Background(){
  image(Background, BackgroundX, BackgroundY);
  image(Background, BackgroundX + Background.width, BackgroundY);
  BackgroundX = BackgroundX -2; 
  
  if(BackgroundX < -Background.width){
    BackgroundX = 0;
  }

}

void Floor(){
  image(Floor, FloorX, FloorY);
  image(Floor, FloorX + Floor.width, FloorY);
  FloorX = FloorX -2; 
  
  if(FloorX < -Floor.width){
    FloorX = 0;
  }
}

void Score(){
  fill(0,0,0);
  textSize(30);
  text("Score: " + Score, 250, 75);
}
