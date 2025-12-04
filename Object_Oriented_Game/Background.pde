class Background {
  //declare in the PVector class and variables
  PVector objectLocation;
  float x, y, l, w, t;
  color c;
  float speedUp;
  //call the constructor method and gather data
  Background (float temp1, float temp2, float temp3, float temp4, float temp5, color temp6) {
    x = temp1;
    y = temp2;
    w = temp3;
    l = temp4;
    t = temp5;
    c = temp6;
    objectLocation = new PVector(x, y);
    speedUp = 1.5 + (frameCount / 1300);
  }
  //make rectangle with no stroke
  void display () {
    if (t == 1) {
      float skyX = objectLocation.x;
      float skyY = objectLocation.y;
      stroke(1);
      fill(c);
      rect(skyX, skyY, w, l);
    }
    //make a smaller triangle with stroke
    if (t == 2) {
      stroke(1);
      fill(c);
      triangle(objectLocation.x, objectLocation.y, objectLocation.x + 30, objectLocation.y - 40, objectLocation.x + 60, objectLocation.y);
    }
    //make a rectangle with no stroke
    if (t == 3) {
      noStroke();
      fill(c);
      rect(objectLocation.x, objectLocation.y, w, l);
    }
    //make a bigger triangle with stroke
    if (t == 4) {
      stroke(1);
      fill(c);
      triangle(objectLocation.x + 10, objectLocation.y, objectLocation.x + 30, objectLocation.y - 20, objectLocation.x + 50, objectLocation.y);
    }
    //make a ellipse
    if (t == 5) {
      stroke(1);
      fill(c);
      ellipse(objectLocation.x, objectLocation.y, w, w);
    }
    //make smaller triangle
    if (t == 6) {
      stroke(1);
      fill(c);
      triangle(objectLocation.x, objectLocation.y, objectLocation.x + 10, objectLocation.y - 5, objectLocation.x + 10, objectLocation.y + 5);
    }
  }

  void stuffMove() {
    objectLocation.x -= speedGlobal;
  }

  void continueObject () {
    if (objectLocation.x <= -70) {
      objectLocation.x = width + 100;
    }
  }
}
