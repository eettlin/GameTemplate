

class Hero{
  
  PVector loc, vel, acc, dir;
  
  Hero(PVector location, PVector velocity){
    loc = location;
    vel = velocity;
    acc = new PVector(0, 0);
  }
  
  
  void run(){
    display();
    update();
    checkEdges();
  }
  
  void display(){
      float angle = radians(0);
      pushMatrix();
      translate(loc.x, loc.y);
      rotate(angle);
      image(heroImage, 0, 0 );
      popMatrix();
  }
  
  void update(){
    
  }
  
  void checkEdges(){
    
  }
  
}
