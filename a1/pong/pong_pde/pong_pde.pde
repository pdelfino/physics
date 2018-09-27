//tenis de mesa, mantive a proporção, mas com 4 vezes

int propor = 4;
int bola_diameter = 4;
int raquete = propor*bola_diameter; //raquete, oficialmente, tem 17 cm. Isso é quatro vezes o diametro da bola mais ou menos
int raquete_hor_fix_esquerda = propor*bola_diameter;
int raquete_hor_fix_direita = 1096-2*raquete_hor_fix_esquerda;

float y = 17;
float j = 17;

float x_bola = 30;
float y_bola = 30;

float x_speed = random(5,15);
float y_speed = random(5,15);

//mesa largura oficial: 274 cm
//mesa altura oficial: 152.5 cm
//bolinha oficial: 40 mm de diâmetro, equivalle a 4 cm
//raquete oficial: 17 cm de altura
// cores oficiais: azul da mesa, linha branca, bola branca e raquete vermelha

void setup() {
    frameRate(30);
    size(1096,610);
    background(0,0,156);
    
    //fill(165,42,42);
    //rect(raquete_hor_fix_esquerda, 17, raquete, propor*raquete); //vai ser constante o valor de x, y que vai variar com o deslocamento para cima e para baixo 
    //rect(raquete_hor_fix_direita, 17, raquete, propor*raquete); //vai ser constante o valor de x, y que vai variar com o deslocamento para cima e para baixo
    //stroke(255,255,255);
    //line(width/2, 0, width/2, height); //dividir a "quadra da partida"
    
    println("I’m starting");
}


void draw() {
  // Displays the frame count to the Console
    println("I’m drawing");
    println(frameCount);
    fill(165,42,42);
    
    if (keyPressed && (key == CODED)) {
  
      if (keyCode == DOWN) {
      y = y + 8;
      } 
      else if (keyCode == UP) {
      y = y - 8;
      }
  }

   if (keyPressed && (key == CODED)) {
  
      if (keyCode == RIGHT) {
      j = j + 8;
      } 
      else if (keyCode == LEFT) {
      j = j - 8;
      }
  }
  background(0,0,156);
  fill(165,42,42);
  rect(raquete_hor_fix_esquerda, y, raquete, propor*raquete);
  rect(raquete_hor_fix_direita, j, raquete, propor*raquete);
  stroke(255,255,255);
  line(width/2, 0, width/2, height); //dividir a "quadra da partida"
  fill(255,255,255);
  x_bola = x_bola + x_speed;
  y_bola = y_bola + y_speed; 
  if (y_bola > height || y_bola<0) { // If the shape is off screen,
  y_speed *= -1;
  // move to the left edge
  }  
  ellipse(x_bola, y_bola, propor*bola_diameter, propor*bola_diameter); //fazer a bolinha, x e y dela vai variar muito
}
