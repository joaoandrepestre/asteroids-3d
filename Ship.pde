class Ship{
  
  PVector pos;
  PVector vel;
  PVector acc;
  
  public Ship(){
    pos = new PVector(width/2,height/2,0);
    vel = new PVector();
    acc = new PVector();
  }
  
  public void shoot(){}
  
  public void keyPressed(){}
  
  public void update(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  
  public void show(){
    update();
    pushMatrix();
    translate(pos.x,pos.y,pos.z);
    box(width/12);
    popMatrix();
  }
  
}