
class Planeta {
  float raio;
  float distancia;
  Planeta[] planetas;
  float angle;
  float orbitavel;

  Planeta(float r, float d, float o) {
    raio = r;
    distancia = d;
    angle = PI;
    orbitavel = o;
  }

  void orbita() {
    angle = angle + orbitavel;
    if (planetas != null) {
      for (int i = 0; i < planetas.length; i++) {
        planetas[i].orbita();
      }
    }
  }

  void criarLua(int total, int level) {
    planetas = new Planeta[total];
    for (int i = 0; i < planetas.length; i++) {
      float r = raio/(level*2);
      float d = distancia/level;
      float o = 0.01;
      planetas[i] = new Planeta(r, d, o);
      if (level < 3) {
        int num = 2;
        planetas[i].criarLua(num, level+1);
      }
    }
  }

  void show() {
    pushMatrix();
    fill(255, 204, 0);
    rotate(angle);
    translate(distancia, 0);
    ellipse(0, 0, raio*2, raio*2);
    if (planetas != null) {
      for (int i = 0; i < planetas.length; i++) {
        planetas[i].show();
      }
    }
    popMatrix();
  }
}
