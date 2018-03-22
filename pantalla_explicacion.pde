PFont letra1; 
PFont letra2; 
 float x=150; 
 float y = 150; 
 float o = 200; 
 float p = 220; 
 float t = 300;
 float v= 400; 


void setup() {
  size(600, 600); 
  letra1 = createFont("Letter Gothic Std", 20);
  letra2 = createFont("OCR A Std", 20);
}


void draw() {
  background(0); 
  fill(255);
  
  textFont(letra2); 
  textAlign(CENTER); 
   
  text("REALIDAD", width/2, height/2-250);
  
  textSize(50); 
  fill(255,100);
  
  text("REALIDAD", width/2, height/2-245); 

  fill(255); 
  x += random(-2, 2);
   y += random(-2, 2);
  
  textFont(letra1); 
  textAlign(CENTER); 
  text("¿Qué pasa cuando el humano es capaz de desintegrarse a sí mismo?", x, y, 300, 300);
  
  textSize(30);
  o+= random(-2, 2);
  p += random(-2, 2);
  text("¿Qué impacto tiene el entorno en nuestra configuración?", o, p, 300, 300);
  
    textSize(10);
  x+= random(-2, 2);
  t += random(-2, 2);
  text("¿Qué somos?", x, t, 300, 300);
  
   textSize(20);
  o+= random(-2, 2);
  v += random(-2, 2);
  text("¿Qué sucede si las condiciones en que vivimos cambian?", x, v, 300, 300);
  
  
}