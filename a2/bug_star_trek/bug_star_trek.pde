Planet sun;

void setup() {
  size(900, 1200);
  sun = new Planet(100, 400, 0);
  sun.spawnMoons(1,2);
}

void draw() {
  background(0);
  translate(750, 900/2);
  sun.show();
  sun.orbit();
}
