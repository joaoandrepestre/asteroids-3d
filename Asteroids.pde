import damkjer.ocd.*;


Ship ship;
Asteroid[] ast;

Camera cam;

void setup(){
  size(600,600, P3D);
  noStroke();
  fill(255);
  ship = new Ship();
  cam = new Camera(this,ship.pos.x,ship.pos.y-100,ship.pos.z-600,ship.pos.x,ship.pos.y,ship.pos.z);
  ast = new Asteroid[5];
  for(int i=0;i<5;i++){
    ast[i] = new Asteroid();
  }
}

void updateCamera(){
  PVector camPos = ship.pos;
  PVector offset = new PVector(-sin(ship.dir.y),0,-cos(ship.dir.y));
  camPos.add(offset);
  cam.jump(camPos.x,camPos.y-100,camPos.z+600);
  cam.aim(ship.pos.x,ship.pos.y,ship.pos.z);
}

void keyPressed(){
  ship.keyPressed();
}

void draw(){
  cam.feed();
  background(0);
  lights();
  ship.show();
  updateCamera();
  for(Asteroid a : ast){
    a.show();
  }
}