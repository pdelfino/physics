
//tenis de mesa, mantive a proporção, mas com 4 vezes
size(1096,610);
//mesa largura oficial: 274 cm
//mesa altura oficial: 152.5 cm
//bolinha oficial: 40 mm de diâmetro, equivalle a 4 cm

int propor = 4;
int bola_diameter = 4;
int raquete = propor*bola_diameter; //raquete, oficialmente, tem 17 cm. Isso é quatro vezes o diametro da bola mais ou menos

int raquete_hor_fix_esquerda = propor*bola_diameter;
int raquete_hor_fix_direita = width-2*raquete_hor_fix_esquerda;

background(0,0,156);

fill(165,42,42);
rect(raquete_hor_fix_esquerda, 17, raquete, propor*raquete); //vai ser constante o valor de x, y que vai variar com o deslocamento para cima e para baixo 
rect(raquete_hor_fix_direita, 17, raquete, propor*raquete); //vai ser constante o valor de x, y que vai variar com o deslocamento para cima e para baixo

stroke(255,255,255);
line(width/2, 0, width/2, height); //dividir a "quadra da partida"

fill(255,255,255);
ellipse(100, 60, propor*bola_diameter, propor*bola_diameter); //fazer a bolinha, x e y dela vai variar muito
