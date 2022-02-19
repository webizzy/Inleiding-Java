float gewicht = 85;
float lengte = 1.85;
float leeftijd = 75;
float BMI = 0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;

println(BMI);

size(800,600);
background(255,255,255);

rect(160,200,130,50);
rect(510,200,130,50);
rect(335,100,130,50);

fill(0,0,0);
text("gewicht: " + gewicht + " KG" ,180,230);
text("lengte: " + lengte + " meter" ,530,230);
text("leeftijd: " + leeftijd + " jaar" ,355,130);

if(leeftijd < 70){
  if(BMI < 18.5){
    fill(255,255,0);
  }else if(BMI < 25){
    fill(0,255,0);
  }else if(BMI <30){
    fill(255,255,0);
  }else{
    fill(255,0,0);
  }
}else{
 if(BMI < 22){
    fill(255,255,0);
  }else if(BMI < 28){
    fill(0,255,0);
  }else if(BMI < 30){
    fill(255,255,0);
  }else{
    fill(255,0,0); 
  } 
}

textSize(25);
text("BMI: " + BMI ,350,400);
