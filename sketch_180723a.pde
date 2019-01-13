PImage img;

void setup() {
  size(343, 500);
  img = loadImage("monariza.jpg");
  noStroke();
}

void draw() {


  image(img,0 ,0);
  loadPixels();

  for (int i = 0; i < width; i++) {
    color c = pixels[width * mouseY + i];
    stroke(c);
    line(i, 0, i,  height);
  }

  stroke(255, 102);
  line(0,mouseY,width,mouseY);
}
