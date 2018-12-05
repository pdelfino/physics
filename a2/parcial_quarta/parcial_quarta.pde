Planet sun;

void setup() {
  size(600, 600);
  sun = new Planet(50, 0,0);
  sun.spawnMoons(5);// faz luas, parametro define quantas
}

void draw() {
  background(0);
  translate(width/2,height/2);
  sun.orbit();
  sun.show();
}
