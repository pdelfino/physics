//tenis de mesa, mantive a proporção, mas com 4 vezes

int propor = 4;
int bola_diameter = 4;
int raquete = propor*bola_diameter; //raquete, oficialmente, tem 17 cm. Isso é quatro vezes o diametro da bola mais ou menos
int raquete_hor_fix_esquerda = propor*bola_diameter; //
int raquete_hor_fix_direita = 1064;

float y = 17;
float j = 17;

float x_bola_pos, y_bola_pos; // posição inicial, coordenada y e coordenada x com valores None

float x_speed = 7; //depois meter o random aqui
float y_speed = 5; //depois meter o random aqui

int x_direction = 1; // esquerda para a direita
int y_direction = 1; //cima para baixo

//mesa largura oficial: 274 cm
//mesa altura oficial: 152.5 cm
//bolinha oficial: 40 mm de diâmetro, equivalle a 4 cm
//raquete oficial: 17 cm de altura
// cores oficiais: azul da mesa, linha branca, bola branca e raquete vermelha

void setup() {
    size(1096,610);
    noStroke();
    frameRate(30);
    background(0,0,156);
    
    //fill(165,42,42);
    //rect(raquete_hor_fix_esquerda, 17, raquete, propor*raquete); //vai ser constante o valor de x, y que vai variar com o deslocamento para cima e para baixo 
    //rect(raquete_hor_fix_direita, 17, raquete, propor*raquete); //vai ser constante o valor de x, y que vai variar com o deslocamento para cima e para baixo
    //stroke(255,255,255);
    //line(width/2, 0, width/2, height); //dividir a "quadra da partida"
    
    x_bola_pos = 30;
    y_bola_pos = 30;
    println("Começou");
}

void draw() {
    
    background(0,0,156);
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

  rect(raquete_hor_fix_esquerda, y, raquete, propor*raquete);
  rect(raquete_hor_fix_direita, j, raquete, propor*raquete);
  
  stroke(255,255,255);
  strokeWeight(10); 
  line(width/2, 0, width/2, height); //dividir a "quadra da partida"
  strokeWeight(1); 
  line(0, height/2, width, height/2); //dividir a "quadra da partida"
  
  fill(255,255,255);
  
  ///////////////////////////////// 
  x_bola_pos = x_bola_pos + (x_speed*x_direction);
  y_bola_pos = y_bola_pos + (y_speed*y_direction);
  
  if (y_bola_pos > height || y_bola_pos <0) { // If the shape is off screen
    y_direction *= -1;
  }
  
  if ((x_bola_pos >= width-36) && (x_bola_pos <= width-28) && (y_bola_pos>=j) && (y_bola_pos<=j +68)) {
    x_direction *= -1;
  }

  if ((x_bola_pos >= 28) && (x_bola_pos <= 36) && (y_bola_pos>=y) && (y_bola_pos<=y +68)) {
    x_direction *= -1;
  }
  
  ellipse(x_bola_pos, y_bola_pos, propor*bola_diameter, propor*bola_diameter); //fazer a bolinha, x e y dela vai variar muito
}
