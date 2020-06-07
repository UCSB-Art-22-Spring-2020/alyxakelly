int [] bonus = new int[10];

void setup() {
  size(600, 600);
  //noLoop();
}
float x;
void draw() {
  if (mousePressed == true) {
    for (int i=0; i < bonus.length; i++){
      bonus[i] = int(random(0,600));
    } 

  }
    //println(bonus);
    printArray(bonus);
  } 
  
