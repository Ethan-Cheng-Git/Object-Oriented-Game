class Ground {

  float x, y, w, l, t, c;

  Ground (float temp1, float temp2, float temp3, float temp4, color temp5) {
    x = temp1;
    y = temp2;
    w = temp3;
    l = temp4;
    c = temp5;
  }
  
  void skyDisplay() {
    noStroke();
    fill(c);
    rect(x, y, w, l);
  }
  
  
  
  
  
  
  
}
