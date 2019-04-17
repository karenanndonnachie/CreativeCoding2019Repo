
PFont f;
PShape shape;
PImage image;
import wordcram.*; // this library needed for wordcram
import java.awt.*; // this library needed for shapes
import wordcram.text.*; // this library needed for shapes
void setup() {
  size(800, 600);
  background(255);
  colorMode(HSB); // this allows you to reference the black of the image with hex value
  image = loadImage("trump.png"); // load your b&W image here
  image.resize(width, height); // this resizes the image to the sketch size
  Shape imageShape = new ImageShaper().shape(image, #000000); // this will write the words in the 'black' of the image
  ShapeBasedPlacer placer = new ShapeBasedPlacer(imageShape);
  new WordCram(this)
      .fromTextFile("trumpSoTU.txt") // rename this for your .txt (drag it over the window to add to data folder)
      .withFont(createFont("LiberationSerif-Regular.ttf", 1)) //this font must be in your data folder
      .sizedByWeight(5, 90)
      .withPlacer(placer) //these two lines work the words into the shape
      .withNudger(placer)
      //.sizedByWeight(10, 90)
      .excludeNumbers()
      .withStopWords("RT") //exclude some words
      .withStopWords("amp")
      .withColors(color(0, 250, 200), color(30), color(170, 230, 200)) 
      .drawAll();
}
