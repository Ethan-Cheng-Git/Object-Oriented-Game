class Snow {
  // set up the variables
  float x;
  float y;
  float diameter;
  // make the snow constructor 
  Snow(float tempD) {
    x = random(width);
    y = random(height);
    diameter = tempD;
  }
  //The movement of the snow falling, using random() to simulate irregular movement 
  void snowFall() {
    y = (y + random(1, 4) / 2);
    x = x + random(-2, 2);
  }
  // display the small ellipses as snow 
  void display() {
    stroke(0);
    fill (255);
    x = x - 4;
    ellipse(x, y, diameter, diameter);
  }
  // if the snow goes off screen, the snow appears back on top of the screen or to the right of the screen
  void fall() {
    if (y > height) {
      y = 0;
    } else if (x < 0) {
      x = width;
    }
  }
}
