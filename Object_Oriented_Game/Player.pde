class Player {
  //Set up the variables and PVector for position, velocity, and acceleration
  boolean onGround;
  PVector position;
  PVector velocity;
  PVector acceleration;
  float fall = 0.02;
  float groundY = 350;
  float jumpP = -3;
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
    onGround = false;
  }
  //Establish the physics
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    //If the player is on the same y-coordinates as the ground value, then the player remains on ground, hence the "onGround" boolean set to true
    if (position.y >= groundY) {
      position.y = groundY;
      velocity.y = 0;
      onGround = true;
    }
  }

// display the objects of the player, depicted as a circle 
  void display () {
    //make a smaller circle with stroke
    if (t == 1) {
      stroke(1);
      fill(c);
      ellipse(position.x, position.y, w, w);
    }
  }
  //If the ball isn't on the ground, the acceleration is the same as the fall value 
  void stay() {
    if (!onGround) {
      acceleration.y = fall;
      onGround = false;
    } else {
      //if ball is on ground, acceleration is set back to 0 
      acceleration.y = 0;
      onGround = true;
    }
    //If the position of the player is below the position.y value, the onGround boolean is true
    if (position.y >= 370) {
      position.y = 390 - 100;
      onGround = true;
    }
  }
  //When the player jumps, the velocity of the jump is the same value as the jumpP variable
  void jump() {
    if (onGround == true) {
      velocity.y = jumpP;
      onGround = false;
    } else {
      onGround = false;
    }
  }
}
