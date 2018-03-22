import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import gifAnimation.*;
import processing.sound.*;

Box2DProcessing box2d; 
Box una, dos, tres, cuatro, cinco, seis, siete, ocho, nueve; 
ArrayList<Boundary> boundaries; 
int pant;
Gif fondo;
SoundFile file;

PImage c1;


PFont letra1; 
PFont letra2;

void setup() {

  size(600, 600); 
  box2d = new Box2DProcessing(this); 
  box2d.createWorld();
  box2d.setGravity(0, -9.8);

  una = new Box(147,103,90); 
  
  dos = new Box(249,103, 30); 
  tres = new Box(351,103, 30); 
  
  cuatro = new Box(147, 234, 30); 
  cinco = new Box(249, 234, 30); 
  seis = new Box(351, 234, 30); 
  
  siete = new Box(147, 365, 30); 
  ocho = new Box(249, 365, 30); 
  nueve = new Box(351, 365, 30); 
  
  c1 = loadImage("1.jpg");

  boundaries = new ArrayList<Boundary>();
  boundaries.add(new Boundary(width-5, height/2, 10, height, 0));
  boundaries.add(new Boundary(5, height/2, 10, height, 0));
  boundaries.add(new Boundary(width/4-2, height/4-145, width+310, 10, 0));
  boundaries.add(new Boundary(width/4-2, height-5, width+310, 10, 0));
}

void draw() {
  box2d.step(); 
  background(255); 
  //image(c1, 0, 0);
  una.display();
 
  dos.display();
  tres.display();
  cuatro.display();
  cinco.display();
  seis.display();
  siete.display();
  ocho.display();
  nueve.display();
  
  for (Boundary wall : boundaries) {
    wall.display();
  }

  /*fill(255,0,0);
   rect(width/2,height/2,400,400); 
   
    /*BodyDef bd = new BodyDef();
   bd.type = BodyType.DYNAMIC; 
   Body body = box2d.createBody(bd);
   
   Vec2[] vertices = new Vec2[4]; 
   vertices[0] = box2d.vectorPixelsToWorld(new Vec2(-432, 261));
   vertices[1] = box2d.vectorPixelsToWorld(new Vec2(397, 265));
   vertices[2] = box2d.vectorPixelsToWorld(new Vec2(364, 246));
   vertices[3] = box2d.vectorPixelsToWorld(new Vec2(442, 189));
   
   PolygonShape ps = new PolygonShape();
   ps.set(vertices, vertices.length); 
   
   FixtureDef fd = new FixtureDef();
   fd.shape = ps;
   fd.density = 1;
   fd.friction = 0.3;
   fd.restitution = 0.5;
   
   body.createFixture(fd);*/
}