Planeta sun;

void setup() {
  size(900, 1200);
  sun = new Planeta(100, 400, 0);
  sun.criarLua(1,2);
}

void draw() {
  background(0);
  translate(750, 900/2);
  sun.show();
  sun.orbita();
}
