int x, y;
int h, s, b; 

void setup() {
  size(600, 600);
  x=width/2;
  y=height/2;
}

void draw() {
  background(0, 255);
  colorMode(HSB, 300);
  h=220;
  s=190;
  b=195;

  fill(y/2, b/2, s);
  ellipse(x, y, 30, 30);

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == RIGHT) {
        x+=10;
      }
      if (keyCode == LEFT) {
        x-=10;
      }
      if (keyCode == UP) {
        y-=10;
      }
      if (keyCode == DOWN) {
        y+=10;
      }
    }
  }
  if (x>width) {
    x=width;
  }
  if (x<0) {
    x=0;
  }
  if (y>height) {
    y=height;
  }
  if (y<0) {
    y=0;
  }
  if (X < width/2) {
  }
}
