
Ship ship;
Asteroid[] ast;

void setup(){
  size(600,600,P3D);
  ship = new Ship();
  ast = new Asteroid[5];
  for(int i=0;i<5;i++){
    ast[i] = new Asteroid();
  }
  lights();
}

void draw(){
  background(0);
  ship.show();
  for(Asteroid a : ast){
    a.show();
  }
}