size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(2);
stroke(230);


float radius = 10;
int centX = width/2;
int centY = height/2;

float x,y;
float lastx = -999;
float lasty = -999;

for(float ang = 0; radius <=width/3; ang +=10){
 radius +=0.5;
 float rad = radians(ang);
 x = centX + (radius * cos(rad));
 y = centY + (radius * sin(rad));
 
 if(lastx > -999){
  line(x,y,lastx,lasty);   
 }
 lastx=x;
 lasty=y;
}


save(getClass().getSimpleName()+System.currentTimeMillis()+  ".png");