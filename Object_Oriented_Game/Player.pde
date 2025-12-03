class Player {
  PVector objectLocation;
  PVector position;
  PVector velocity;
  PVector acceleration;
ArrayList<PVector> gotHit;
  float x, y, l, w, t;
  color c;
  //call the constructor method and gather data
  Player (float temp1, float temp2, float temp3, float temp4, float temp5, color temp6) {
    x = temp1;
    y = temp2;
    w = temp3;
    l = temp4;
    t = temp5;
    c = temp6;
    objectLocation = new PVector(x, y);
    position = new PVector(x, y);
    velocity = new PVector(3,0);
    acceleration = new PVector(0,0.3);
    gotHit = new ArrayList<PVector>();
  }
  
  void update() {
   velocity.add(acceleration);
   position.add(velocity);
  }
  
   void display () {
    if (t == 1) {
      stroke(1);
      fill(c);
      rect(objectLocation.x, objectLocation.y, w, l);
    }
    //make a smaller triangle with stroke
    if (t == 2) {
      stroke(1);
      fill(c);
      ellipse(objectLocation.x, objectLocation.y, w, w);
    }
}}
