int dotx=1; //this is our starting number
boolean showImage = true;
PImage foto;
PGraphics topLayer;
PFont f;
void setup (){
  smooth(); //this makes our graphics anti-aliased
  background (255);
  size (480, 480);
  noStroke();
  fill(0);
  f = createFont("Arial",10,true);
  foto = loadImage ("karen_fbProfile.jpg");
  topLayer = createGraphics(480, 480);
}

void draw (){
   if (showImage == false) {background(255);}
   else {image (foto, 0,0);}
   image (topLayer, 0,0);// nothing in here, we don’t want automation
}

void mousePressed (){ //only on mouse click
  //to target the topLayer we use the period after and set values as per our 'setup()' function
  topLayer.beginDraw();
  topLayer.fill(0);
  topLayer.noStroke();
  topLayer.ellipse ( mouseX, mouseY, 4,4); // draws small circles
  topLayer.textSize(10);
  topLayer.textFont(f);
  topLayer.text(dotx, mouseX+5, mouseY+5); //offset from dot
  dotx++; //our dot number increases automatically
  topLayer.endDraw();
 }

void keyPressed (){ 
  //toggle background image with a press of 'x' on keyboard
  if ( key == 'x' ){showImage =! showImage;} 
  else {
  //any other key will output an image
  save ("dot_to_dot_##"+key+".png"); //save the final piece }
}
