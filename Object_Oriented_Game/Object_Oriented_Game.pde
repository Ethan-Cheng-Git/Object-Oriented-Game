ArrayList<Player> player;
ArrayList<Snowman> snowman;
ArrayList<Background> background;
Snow [] snow = new Snow [60];

void setup () {
  size(800, 500);
  background(255);
  player = new ArrayList<Player>();
  snowman = new ArrayList<Snowman>();
  background = new ArrayList<Background>();

  // sky?
  background.add(new Background(0, 0, width, 180, 3, color(0, 100, 255)));

  //Add the trees
  //wood
  background.add(new Background(40, 180, 20, 40, 1, color(150, 75, 0)));
  background.add(new Background(120, 180, 10, 15, 1, color(150, 75, 0)));
  background.add(new Background(180, 180, 20, 40, 1, color(150, 75, 0)));
  background.add(new Background(250, 180, 10, 15, 1, color(150, 75, 0)));
  background.add(new Background(320, 180, 20, 40, 1, color(150, 75, 0)));
  background.add(new Background(400, 180, 10, 15, 1, color(150, 75, 0)));
  background.add(new Background(480, 180, 20, 40, 1, color(150, 75, 0)));
  background.add(new Background(550, 180, 10, 15, 1, color(150, 75, 0)));
  background.add(new Background(620, 180, 20, 40, 1, color(150, 75, 0)));
  background.add(new Background(700, 180, 10, 15, 1, color(150, 75, 0)));
  background.add(new Background(760, 180, 20, 40, 1, color(150, 75, 0)));

  //tree tops
  background.add(new Background(20, 200, 50, 140, 2, color(0, 255, 0)));
  background.add(new Background(20, 180, 0, 0, 2, color(0, 255, 0)));
  background.add(new Background(20, 160, 50, 140, 2, color(0, 255, 0)));

  background.add(new Background(95, 180, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(95, 170, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(95, 160, 0, 0, 4, color(0, 255, 0)));

  background.add(new Background(160, 200, 50, 140, 2, color(0, 255, 0)));
  background.add(new Background(160, 180, 0, 0, 2, color(0, 255, 0)));
  background.add(new Background(160, 160, 50, 140, 2, color(0, 255, 0)));

  background.add(new Background(225, 180, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(225, 170, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(225, 160, 0, 0, 4, color(0, 255, 0)));

  background.add(new Background(300, 200, 50, 140, 2, color(0, 255, 0)));
  background.add(new Background(300, 180, 0, 0, 2, color(0, 255, 0)));
  background.add(new Background(300, 160, 50, 140, 2, color(0, 255, 0)));

  background.add(new Background(375, 180, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(375, 170, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(375, 160, 0, 0, 4, color(0, 255, 0)));

  background.add(new Background(460, 200, 50, 140, 2, color(0, 255, 0)));
  background.add(new Background(460, 180, 0, 0, 2, color(0, 255, 0)));
  background.add(new Background(460, 160, 50, 140, 2, color(0, 255, 0)));

  background.add(new Background(525, 180, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(525, 170, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(525, 160, 0, 0, 4, color(0, 255, 0)));

  background.add(new Background(600, 200, 50, 140, 2, color(0, 255, 0)));
  background.add(new Background(600, 180, 0, 0, 2, color(0, 255, 0)));
  background.add(new Background(600, 160, 50, 140, 2, color(0, 255, 0)));
  
  background.add(new Background(675, 180, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(675, 170, 0, 0, 4, color(0, 255, 0)));
  background.add(new Background(675, 160, 0, 0, 4, color(0, 255, 0)));

  background.add(new Background(740, 200, 50, 140, 2, color(0, 255, 0)));
  background.add(new Background(740, 180, 0, 0, 2, color(0, 255, 0)));
  background.add(new Background(740, 160, 50, 140, 2, color(0, 255, 0)));
  
  
  //snowman
  background.add(new Background(100, 260, 40, 0, 5, color(255)));
  background.add(new Background(100, 300, 40, 0, 5, color(255)));
  background.add(new Background(100, 340, 40, 0, 5, color(255)));
  //eyes
  background.add(new Background(60, 280, 80, 300, 6, color(255)));
  background.add(new Background(120, 300, 140, 280, 6, color(255)));
  //arms
  background.add(new Background(90, 250, 1, 0, 5, color(255)));
  background.add(new Background(100, 250, 1, 0, 5, color(255)));
  //nose
  background.add(new Background(90, 260, 100, 55, 7, color(255, 100, 0)));
  //buttons
  background.add(new Background(100, 290, 1, 0, 5, color(255)));
  background.add(new Background(100, 300, 1, 0, 5, color(255)));
  background.add(new Background(100, 310, 1, 0, 5, color(255)));
  
  
  //snowman 2
  background.add(new Background(600, 260, 40, 0, 5, color(255)));
  background.add(new Background(600, 300, 40, 0, 5, color(255)));
  background.add(new Background(600, 340, 40, 0, 5, color(255)));
  //arms
  background.add(new Background(560, 280, 580, 300, 6, color(255)));
  background.add(new Background(620, 300, 640, 280, 6, color(255)));
  //eyes
  background.add(new Background(590, 250, 1, 0, 5, color(255)));
  background.add(new Background(600, 250, 1, 0, 5, color(255)));
  //nose
  background.add(new Background(590, 260, 100, 55, 7, color(255, 100, 0)));
  //buttons
  background.add(new Background(600, 290, 1, 0, 5, color(255)));
  background.add(new Background(600, 300, 1, 0, 5, color(255)));
  background.add(new Background(600, 310, 1, 0, 5, color(255)));
  
  
  
  
  
  //snow animation
  for (int i = 0; i < snow.length; i++) {
    snow[i] = new Snow(4);
  }
}

void draw() {
  background (255);
  //call the user-defined method "display()" to set the trees
  for (int i = 0; i < background.size(); i++) {
    Background b = background.get(i);
    b.display();
  }
  //call the user-defined method to enable the snowfall
  for (int i = 0; i < snow.length; i++) {
    snow[i].display();
    snow[i].snowFall();
    snow[i].fall();
  }
}
