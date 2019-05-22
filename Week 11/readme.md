# Using sprites for animation/games in P5js
Sprites are useful when you have repeated graphics or character, objects, etc..
Please see here for the entire tutorial: https://creative-coding.decontextualize.com/making-games-with-p5-play/

Creating a sprite in p5.play is accomplished using the createSprite() function. This function returns a sprite object, which itself has a number of attributes and methods that allow us to query and change properties of the sprite.
Here’s a simple example that creates a single sprite:
<pre>var spr;
function setup() {
  createCanvas(400, 400);
  spr = createSprite(
    width/2, height/2, 40, 40);
  spr.shapeColor = color(255);
  spr.velocity.y = 0.5;
}
function draw() {
  background(50);
  drawSprites();
}
function mousePressed() {
  spr.position.x = mouseX;
  spr.position.y = mouseY;
}</pre>

## Multiple sprites
You can call the createSprite() function as many times as you want to! The p5.play framework keeps track of all the sprites you’ve added behind the scenes (so you don’t need to create your own data structure to store them). In the following example, I’ve written some code in mousePressed() that creates a new sprite whenever the user clicks the mouse:

## For example.... Using sprites in groups
<pre>var clouds;
var birds;
function setup() {
  createCanvas(400, 400);
  clouds = new Group();
  birds = new Group();

  for (var i = 0; i < 10; i++) {
    var c = createSprite(
      random(width), random(height),
      random(25, 100), random(25, 100));
    c.shapeColor = color(random(200, 255));
    clouds.add(c);
  }
  for (var i = 0; i < 5; i++) {
    var b = createSprite(
      random(width), random(height),
      random(10, 50), random(5, 25));
    b.shapeColor = color(255, 0, random(255));
    b.friction = random(0.97, 0.99);
    b.maxSpeed = random(1, 4);
    b.rotateToDirection = true;
    birds.add(b);
  }
}
function draw() {
  background(0, 150, 240);
  for (var i = 0; i < clouds.length; i++) {
    clouds[i].position.x += clouds[i].width * 0.01;
    if (clouds[i].position.x > width) {
      clouds[i].position.x = 0;
    }
  }
  for (var i = 0; i < birds.length; i++) {
    birds[i].attractionPoint(0.2, mouseX, mouseY);
  }
  drawSprites();
}</pre>
