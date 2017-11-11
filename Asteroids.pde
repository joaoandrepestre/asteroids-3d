import damkjer.ocd.*;


Ship ship;
Asteroid[] ast;

Camera cam;

void setup(){
  size(600,600, P3D);
  noStroke();
  fill(255);
  ship = new Ship();
  cam = new Camera(this,ship.pos.x,ship.pos.y-100,ship.pos.z+600,ship.pos.x,ship.pos.y,ship.pos.z);
  ast = new Asteroid[5];
  for(int i=0;i<5;i++){
    ast[i] = new Asteroid();
  }
}

void keyPressed(){
  ship.keyPressed();
}

void draw(){
  background(0);
  lights();
  ship.show();
  //cam.track(ship.pos.x,ship.pos.y);
  for(Asteroid a : ast){
    a.show();
  }
  cam.feed();
}