class Planet {
   // fazer coordenadas polares
  float radius;
  float distance;  //distância representa a distância do sol 
  Planet planets[];
  float angle;
  float Orbitspeed;
  
  Planet(float r, float d, float o) {
     radius = r;
     distance = d;
     angle = random(TWO_PI);
     orbitspeed = o;  
}
  
  void spawnMoons(int total) {
    planets = new Planet[total];
    for (int i = 0; i < planets.length; i++) {
      float r = radius*0.5;
      float d = random(75,100); 
      float o = random(0.1,0.2);
      planets[i] = new Planet(r, d, o);  // esse 0.5 afeta o tamanho da lua do planeta, mexer depois
    }
  }
  
  void orbit() {
    angle = angle + Orbitspeed;
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].orbit();
      }    
    }
  }
  
  void show() {
    translate(distance,0);
    rotate(angle);
    fill(255, 100);
    ellipse(0,0,radius*2,radius*2);
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].show();
      }    
    }
  }
}
