class Background {

  PVector objectLocation;
  float x, y, l, w, t;
  color c;

  Background (float temp1, float temp2, float temp3, float temp4, float temp5, color temp6) {
    x = temp1;
    y = temp2;
    w = temp3;
    l = temp4;
    t = temp5;
    c = temp6;
    objectLocation = new PVector(x, y);
  }
  
  void display () {
   if (t == 1) {
    stroke(1);
    fill(c);
    rect(objectLocation.x, objectLocation.y, w, l); 
   }
  }
  
  
  
  
  
  
  
}
