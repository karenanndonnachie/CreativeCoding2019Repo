import processing.serial.*; //importing serial lib
PImage diy; //declaring 
Serial arduino;
int serialIn;
int val=0;

void setup()
{
  size(800,800,P2D);
  //fullScreen(P2D);
  printArray(Serial.list());
  arduino = new Serial(this,Serial.list()[3],115200);
  diy= loadImage("diy.png");
  imageMode(CENTER);
  diy.resize(500,500);
  
}
void draw()
{
  background(0);
  image(diy,width/2,height/2,val,val);
  
  
  if(arduino.available()>0)
  {
    serialIn=arduino.read();
    println(serialIn);
  }
  val=int(map(serialIn,0,50,100,500));
}
