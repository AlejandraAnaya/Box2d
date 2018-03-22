void pantallas() {
  
  switch(pant) {

  case 0: 
    presentacion(); 
    break;

  case 1:
    concepto();
    break; 

  case 2:
    main(); 
    break;
  }
  
}

void presentacion() { //0
  
  float box2dx = box2d.scalarPixelsToWorld(width/2);
  float box2dy = box2d.scalarPixelsToWorld(height/2);
  
  c1 = loadImage ("1.jpg");  
  
  image(fondo, 0, 0, width, height);
  
  textFont(letra2);
  textAlign(CENTER);
  textSize(10);
  fill(255,140);
  
   box2dx += random(-2, 2);
   box2dy += random(-2, 2);
   text("REALIDAD", box2dx ,  box2dy );
   
   textFont(letra2);
   textSize(10); 
   fill(200,200,0);
   text("A",width/2,height-30); 
   
   /* switch(key) {

  case 'a' | 'A':
    pant = 0;

    key = 'y' | 'Y';
    break;
  }*/
}




void concepto(){ //1
 float x=150; 
 float y = 150; 
 float o = 200; 
 float p = 220; 
 float t = 300;
 float v= 400; 
  
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



void main(){ //2
  
  
   una = new Box(147,103,90); 
  dos = new Box(249,103, 30); 
  tres = new Box(351,103, 30); 
  
  cuatro = new Box(147, 234, 30); 
  cinco = new Box(249, 234, 30); 
  seis = new Box(351, 234, 30); 
  
  siete = new Box(147, 365, 30); 
  ocho = new Box(249, 365, 30); 
  nueve = new Box(351, 365, 30); 
  boundaries = new ArrayList<Boundary>();
  boundaries.add(new Boundary(width-5, height/2, 10, height, 0));
  boundaries.add(new Boundary(5, height/2, 10, height, 0));
  boundaries.add(new Boundary(width/4-2, height/4-145, width+310, 10, 0));
  boundaries.add(new Boundary(width/4-2, height-5, width+310, 10, 0));
 
}