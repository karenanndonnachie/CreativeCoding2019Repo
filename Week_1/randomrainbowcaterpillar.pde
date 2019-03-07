/* this Processing sketch will create randomly-coloured circles 
with transparency and background clear
*/

int r,g,b,w; //this establishes our integer variables for random colour

void setup (){
  size (510,510);
  background (0);
  stroke (255,0,0);
}
void draw(){
  if(mousePressed){
    fill (mouseX/2,mouseY/2,(mouseX+mouseY)/4, 100);
  }
  else {
  fill (int(random(256)),int(random(256)),int(random(256)),int(random(256)));
}
  ellipse (mouseX, mouseY, 60,60);
}
void keyPressed(){
  r = int(random(256));
  g = int(random(256));
  b = int(random(256));
  w = int(random(256));
background (r,g,b);
stroke (w);
}
