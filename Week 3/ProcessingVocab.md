#Using Text
##Simple Text use
Remember to intiate a PFont variable
<pre>PFont f;
String message = "this text is spinning";
textFont(f);                  // Set the font
textAlign(CENTER);    
text(message,0,0);</pre>


#Using Image
Remember to intiate a PImage variable and the image must be dragged to your sketch or otherwise added to your data folder.
Images may be jpg, png etc.

##Simple image load
<pre>PImage img;

void setup() {
  img = loadImage("YOURIMAGE.jpg");
  size(480, 480);
}
 
void draw() {
  image(img, 0, 0);
}</pre>
