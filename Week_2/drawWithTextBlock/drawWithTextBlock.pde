PFont f;
String message = "“Call me Ishmael. Some years ago—never mind how long precisely—having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world. It is a way I have of driving off the spleen and regulating the circulation. Whenever I find myself growing grim about the mouth; whenever it is a damp, drizzly November in my soul; whenever I find myself involuntarily pausing before coffin warehouses, and bringing up the rear of every funeral I meet; and especially whenever my hypos get such an upper hand of me, that it requires a strong moral principle to prevent me from deliberately stepping into the street, and methodically knocking people’s hats off—then, I account it high time to get to sea as soon as I can. This is my substitute for pistol and ball.”";
int rand;
int i=1;
void setup() {
  background (255);
  frameRate(10);
  size(800, 600);
  f = createFont("Arial",30,true);
}

void draw() { 
  //background(255);
  fill(0);
  textFont(f);         
  //rand = int(random(255));
  //char letter = char(rand);
  //textSize(rand/4+1);
  if (mousePressed) {
    text(message.charAt(i-1),mouseX,mouseY);
      if (i<message.length()){
      i++;
      }
      else i=1;
  }
 }
 void keyPressed() {
   saveFrame("mobydick_####.jpg");
   background (200);
 }