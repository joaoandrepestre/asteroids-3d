class Ship{
  
  PVector pos;
  PVector vel;
  PVector acc;
  PVector dir;
  
  public Ship(){
    pos = new PVector();
    vel = new PVector();
    acc = new PVector();
    dir = new PVector();
  }
  
  public void shoot(){}
  
  public void keyPressed(){
    if(key == ' '){
      PVector thrust = new PVector(-sin(dir.y),0,-cos(dir.y));
      acc.add(thrust);
    }
    if(key == 'w' || key == 'W'){
      dir.x+=PI/10;
    }
    if(key == 'a' || key == 'A'){
      dir.y+=PI/4;
    }
    if(key == 's' || key == 'S'){
      dir.x-=PI/4;
    }
    if(key == 'd' || key == 'D'){
      dir.y-=PI/4;
    }
  }
  
  public void update(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  
  public void show(){
    update();
    pushMatrix();
    translate(pos.x,pos.y,pos.z);
    rotateX(dir.x);
    rotateY(dir.y);
    rotateZ(dir.z);
    box(width/12,height/12,width/8);
    popMatrix();
  }
  
}