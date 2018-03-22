
class Box{
float w,h; 
float x, y;

Body b; 

Box(float x_, float y_, float a){
  x = x_; 
  y = y_; 
  w = 102; 
  h = 131; 
  
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    bd.position.set(posicionTransformada);
   
    b = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape =  sd;

      
    fd.density = 0.2;
    fd.friction = 0.5;
    fd.restitution = 1;
    
    b.createFixture(fd);
    //b.setAngularVelocity(20);
}

  void display(){
    Vec2 pos = box2d.getBodyPixelCoord(b);
    float angulo = b.getAngle();
    noStroke();
    /*
  imageMode(CENTER);
  image(c1, 147, 103, 102,131);*/
    
    fill(0);
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-angulo);
    rect(0,0,w,h);
    popMatrix();
    
      
    /*
          var size = b.m_userData.imgsize;
          var imgObj = new Image(size,size);
          imgObj.src = b.m_userData.imgsrc;
          context.save();
          // Translate to the center of the object, then flip and scale appropriately
          context.translate(position.x,flipy); 
          context.rotate(b.GetAngle());
          var s2 = -1*(size/2);
          var scale = b.m_userData.bodysize/-s2;
          context.scale(scale,scale);
          context.drawImage(imgObj,s2,s2);
          context.restore();*/
  }


}