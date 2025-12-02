class Snow {
  
  float x; 
  float y;
  float diameter;
  
  Snow(float tempD) {
    x = random(width);
    y = random(height);
    diameter = tempD;   
  }
  
  void snowFall() {
    y = (y + random(1,4) / 2);
    x = x + random(-2,2);
  }
  
  void display() {
    stroke(0); 
    fill (255);
    ellipse(x,y,diameter,diameter);
  }
  
 void fall() {
   if (y > height) {
     y = 0; 
   }
 }
  
  
  
}
