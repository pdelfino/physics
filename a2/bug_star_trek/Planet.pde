
class Planet {
  float radius;
  float distance;
  Planet[] planets;
  float angle;
  float orbitspeed;

  Planet(float r, float d, float o) {
    radius = r;
    distance = d;
    angle = PI;
    orbitspeed = o;
    //println(angle);
  }

  void orbit() {
    angle = angle + orbitspeed;
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].orbit();
      }
    }
  }

  void spawnMoons(int total, int level) {
    planets = new Planet[total];
    for (int i = 0; i < planets.length; i++) {
      float r = radius/(level*2);
      float d = 700;
      float o = 0.01;
      planets[i] = new Planet(r, d/(level+(i*10)), o);
      if (level < 3) {
        int num = 2;
        planets[i].spawnMoons(num, level+1);
      }
    }
  }

  void show() {
    pushMatrix();
    fill(255, 100);
    rotate(angle);
    translate(distance, 0);
    ellipse(0, 0, radius*2, radius*2);
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].show();
      }
    }
    popMatrix();
  }
}