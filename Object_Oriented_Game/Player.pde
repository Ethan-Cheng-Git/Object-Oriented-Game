class Player {
  boolean onGround;
  PVector position;
  PVector velocity;
  PVector acceleration;
  float fall = 0.02;
  float groundY = 350;
  float jumpP = -3;
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
    position = new PVector(x, y);
    velocity = new PVector(0, 1);
    acceleration = new PVector(0, 0.9);
    gotHit = new ArrayList<PVector>();
    onGround = true;
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    

  if (position.y >= groundY) {
   position.y = groundY;
   velocity.y = 0;
   onGround = true;
  }
  
  }


  void display () {
    //make a smaller circle with stroke
    if (t == 1) {
      stroke(1);
      fill(c);
      ellipse(position.x, position.y, w, w);
    }
  }
  
  void stay() {
    if (!onGround) {
      acceleration.y = fall;
 
    } else {
      acceleration.y = 0;
    } 
     if (position.y >= 370) {
      position.y = 390 - 100;
      onGround = true;
    }
  }

  void jump() {
    if (keyCode == UP) {
      if (onGround == true) {
       velocity.y = jumpP;
       onGround = false;
      }  
    } else {
           onGround = false; 
    }
  
  }
}
