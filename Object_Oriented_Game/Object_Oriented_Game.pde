ArrayList<Player> player;
ArrayList<Background> background;
ArrayList<Ground> ground;
boolean gameOn = true;
Snow [] snow = new Snow [60];
float speedGlobal = 1.5;
int score = 0;


void setup () {
  size(1200, 500);
  background(0, 100, 255);
  player = new ArrayList<Player>();
  background = new ArrayList<Background>();
  ground = new ArrayList <Ground>();


  // sky?
  ground.add(new Ground(0, 180, width, height, color(245)));

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
  //body
  background.add(new Background(100, 260, 40, 0, 5, color(255)));
  background.add(new Background(100, 300, 40, 0, 5, color(255)));
  background.add(new Background(100, 340, 40, 0, 5, color(255)));
  //eyes
  background.add(new Background(90, 250, 1, 1, 5, color(255)));
  background.add(new Background(100, 250, 1, 1, 5, color(255)));
  //arms
  background.add(new Background(60, 280, 10, 10, 1, color(0)));
  background.add(new Background(70, 290, 10, 10, 1, color(0)));
  background.add(new Background(120, 290, 10, 10, 1, color(0)));
  background.add(new Background(130, 280, 10, 10, 1, color(0)));
  //nose
  background.add(new Background(90, 260, 100, 55, 6, color(255, 100, 0)));
  //buttons
  background.add(new Background(100, 290, 1, 0, 5, color(255)));
  background.add(new Background(100, 300, 1, 0, 5, color(255)));
  background.add(new Background(100, 310, 1, 0, 5, color(255)));


  //snowman 2
  background.add(new Background(600, 260, 40, 0, 5, color(255)));
  background.add(new Background(600, 300, 40, 0, 5, color(255)));
  background.add(new Background(600, 340, 40, 0, 5, color(255)));
  //arms
  background.add(new Background(560, 280, 10, 10, 1, color(0)));
  background.add(new Background(570, 290, 10, 10, 1, color(0)));
  background.add(new Background(620, 290, 10, 10, 1, color(0)));
  background.add(new Background(630, 280, 10, 10, 1, color(0)));
  //eyes
  background.add(new Background(590, 250, 1, 0, 5, color(255)));
  background.add(new Background(600, 250, 1, 0, 5, color(255)));
  //nose
  background.add(new Background(590, 260, 100, 55, 6, color(255, 100, 0)));
  //buttons
  background.add(new Background(600, 290, 1, 0, 5, color(255)));
  background.add(new Background(600, 300, 1, 0, 5, color(255)));
  background.add(new Background(600, 310, 1, 0, 5, color(255)));

  //make the player
  player.add(new Player(205, 340, 30, 0, 1, color(255)));
  //snow animation
  for (int i = 0; i < snow.length; i++) {
    snow[i] = new Snow(4);
  }
}

void draw() {
  background (169, 169, 169);

  for (int i = 0; i < ground.size(); i++) {
    Ground g = ground.get(i);
    g.groundDisplay();
  }

  //call the user-defined method "display()" to set the trees
  for (int i = 0; i < background.size(); i++) {
    Background b = background.get(i);
    b.display();
    b.stuffMove();
    b.continueObject();
  }

  for (int i = 0; i < player.size(); i++) {
    Player p = player.get(i);
    p.display();
    p.update();
    p.stay();
    p.display();
    collision(p, background);
  }

  //call the user-defined method to enable the snowfall
  for (int i = 0; i < snow.length; i++) {
    snow[i].display();
    snow[i].snowFall();
    snow[i].fall();
  }
  // if the game ends, show game over screen
  if (gameOn) {
    speedGlobal += 0.0006;
    score = frameCount;

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("SCORE: " + score, 100, 20);
  } else if (!gameOn) {
    fill(0);
    rect(0, 0, width, height);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("YOU LOST, YOUR SCORE IS " + score + "! PRESS X TO PLAY AGAIN!", width/2, height/2);
  }
}

void keyPressed() {
  if (keyCode == ' ') {
    for (Player p : player) {
      p.jump();
    }
  }
  if (gameOn == false && (key == 'X' || key == 'x')) {
    gameOn = true;
    frameCount = 0;
    setup();
  }
}

void collision(Player p, ArrayList<Background> obstacle) {
  for (Background b : obstacle) {
    if (b.t == 5) {
      float distanceX = p.position.x - b.objectLocation.x;
      float distanceY = p.position.y - b.objectLocation.y;

      float distanceSquared = (distanceX * distanceX) + (distanceY * distanceY);

      float radiusSum = (p.w/2 + b.w/2);
      float radiusSquared = radiusSum * radiusSum;

      if (distanceSquared < radiusSquared) {
        gameOn = false;
        speedGlobal = 1.5;
      }
    }
  }
}
