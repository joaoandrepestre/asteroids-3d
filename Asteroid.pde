class Asteroid{

  PVector pos;
  PVector vel;
  
  public Asteroid(){
    pos = PVector.random3D().mult(random(width));
    vel = new PVector(0,0,-1);
  }
  
  public void breakIntoPieces(){}
  
  public void update(){
    pos.add(vel);
  }
  
  public void show(){
    update();
    pushMatrix();
    translate(pos.x,pos.y,pos.z);
    sphere(width/6);
    popMatrix();
  }
}