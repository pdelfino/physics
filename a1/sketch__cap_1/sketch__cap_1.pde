void setup() {
  
  size(480, 500);
  smooth();
  }
  
void draw() {
  if (mousePressed) {
    fill(0);
  }
  else {
    fill(255);
  }
  ellipse(mouseX,mouseY,80,80);
}

//void draw() {
  //ellipse(50,50,80,80);
//}
