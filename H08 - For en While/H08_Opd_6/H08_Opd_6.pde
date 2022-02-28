int a = 90;

size(500,500);
background(255,255,255);

for( int i = 0; i < 5; i++){
  ellipse(250 - a/2,250,a,a);
  a -= 20;
}
