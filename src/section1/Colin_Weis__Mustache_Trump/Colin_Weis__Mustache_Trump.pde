PImage mustache;
  PImage freind;
void setup() {
  freind = loadImage ("Freind.jpeg");
  mustache = loadImage("hi.jpg");
  size (600, 400);
  freind.resize(600, 400);
}
void draw() {
background(freind);
image(mustache, mouseX, mouseY);
}