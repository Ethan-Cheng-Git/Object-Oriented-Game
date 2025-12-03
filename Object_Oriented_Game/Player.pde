class Player {
  boolean onGround = true;
  PVector position;
  PVector velocity;
  PVector acceleration;
  float fall = 0.02;
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
    acceleration = new PVector(0, 0.3);
    gotHit = new ArrayList<PVector>();
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    position.y += velocity.y;
    velocity.y += acceleration.y;
  }

  void display () {
    if (t == 1) {
      stroke(1);
      fill(c);
      rect(position.x, position.y, w, l);
    }
    //make a smaller triangle with stroke
    if (t == 2) {
      stroke(1);
      fill(c);
      ellipse(position.x, position.y, w, w);
    }
  }

  void stay() {
    if (onGround) {
      velocity.y = 0;
      acceleration.y = 0;
    } else {
      acceleration.y = fall;
    }
  }
  void jump() {
    if (keyCode == UP) {
      if (onGround == true) {
       velocity.y = -5;
       onGround = false;
      }  
    }
    else {
      
    }
  }
}
