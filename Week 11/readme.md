# Using sprites for animation/games in P5js

https://creative-coding.decontextualize.com/making-games-with-p5-play/
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
