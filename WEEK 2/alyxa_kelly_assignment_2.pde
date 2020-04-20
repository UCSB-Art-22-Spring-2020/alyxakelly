//week 2 assignment 2 ~ 4/14/20
//art 22  ~alyxa kelly

int x, y; // variables for position
int h, s, b; // color variables

void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;
}

void draw() {
  for (int i=1; i<10; i++) {
    rect(random(0, width), random(0, height), 10, 10); //randomly placed rectangles change color as key movement changes
  }
  colorMode(HSB); //hue sat bright color mode
  h=200; //hue
  s=300; //saturation
  b=100; //brightness

  noStroke();
  fill(x/3, b, s); //honestly put random things until it looked colorful
  stroke(0); //outline
  ellipse(x, y, 20, 20); //x,y,width,height

  if (keyPressed) {//is a key pressed
    if (key==CODED) {//is it a special coded key?
      if (keyCode==DOWN) {//is the coded key the down arrow?
        y+=10; //same as saying y=y+10
      }
      if (keyCode==UP) {//is the coded key the up arrow?
        y-=10;//same as saying y=y-10
      }
      if (keyCode==LEFT) { //is the coded key the left arrow?
        x-=10; //same as saying x=x-10
      }
      if (keyCode==RIGHT) { //is the coded key the right arrow?
        x+=10; //same as saying x=x+10
      }
    }
    if (y>height) { //if y goes out of bounds on the top
      y=height;//reset to height
    }
  }
  if (y<0) { //if x goes out of bounds on the bottom
    y=0;//reset to 0
  }
  if (x>width) { //if x goes out of bounds on the right
    x=width; //reset to width
  }
  if (x<0) { //if x goes out of bounds on the right
    x=0; //reset to 0
  }
}
