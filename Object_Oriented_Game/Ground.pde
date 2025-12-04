class Ground {
//Declare variables 
  float x, y, w, l;
  color c;
//Set the constructor for the Ground class
  Ground (float temp1, float temp2, float temp3, float temp4, color temp5) {
    x = temp1;
    y = temp2;
    w = temp3;
    l = temp4;
    c = temp5;
  }
  //Display the ground object
  void groundDisplay() {
    noStroke();
    fill(c);
    rect(x, y, w, l);
  }
  
  
  
  
  
  
  
}
