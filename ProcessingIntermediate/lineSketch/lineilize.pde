String imageName = "vespa.jpg";
PImage img;
PVector pos1 = new PVector (100, 100);
PVector pos2 = new PVector (300,400);
float x;
float y;

void setup(){
  size(800,600);
  background(255);
  img = loadImage(imageName);
  smooth (5);
  frameRate(20);
  strokeWeight (random(0.01, 1));
}    

void draw(){
 pos1.x = random (width);
 pos1.y = random (height);
 pos2.x = random (width);
 pos2.y = random (height);
 for (float t=0; t<= 1; t+= 0.001) {
   x = lerp (pos1.x, pos2.x, t);
   y = lerp (pos1.y, pos2.y, t);
   stroke (img.get((int)x,(int)y));
   point(x,y); 
 }
}
