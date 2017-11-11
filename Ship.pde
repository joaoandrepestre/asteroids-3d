class Ship{
  
  PVector pos;
  PVector vel;
  PVector acc;
  PVector dir;
  
  public Ship(){
    pos = new PVector(width/2,height/2,0);
    vel = new PVector();
    acc = new PVector();
    dir = new PVector();
  }
  
  public void shoot(){}
  
  public void keyPressed(){
    if(key == ' '){
      PVector thrust = new PVector(0,0,-1);
      thrust.add(dir);
      acc.add(thrust);
    }
    if(key == 'w' || key == 'W'){
      PVector steer = new PVector(0,-1,0);
      dir.add(steer);
    }
    if(key == 'a' || key == 'A'){
      PVector steer = new PVector(-1,0,0);
      dir.add(steer);
    }
    if(key == 's' || key == 'S'){
      PVector steer = new PVector(0,1,0);
      dir.add(steer);
    }
    if(key == 'd' || key == 'D'){
      PVector steer = new PVector(1,0,0);
      dir.add(steer);
    }
  }
  
  public void update(){
    vel.add(acc);
    vel.rotate(dir.heading());
    pos.add(vel);
    acc.mult(0);
  }
  
  public void show(){
    update();
    pushMatrix();
    translate(pos.x,pos.y,pos.z);
    rotateX(-dir.y);
    rotateY(-dir.x);
    rotateZ(dir.z);
    box(width/12,height/12,width/8);
    popMatrix();
  }
  
}