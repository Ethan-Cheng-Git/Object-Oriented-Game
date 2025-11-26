ArrayList<Player> player;
ArrayList<Snowman> snowman;
ArrayList<Background> background;
void setup () {
  size(800, 500);
  background(255);
  player = new ArrayList<Player>();
  snowman = new ArrayList<Snowman>();
  background = new ArrayList<Background>();
  
  background.add(new Background(40, 180, 20, 40, 1, color(150, 75, 0)));
  
}

void draw() {
  for (int i = 0; i < background.size(); i++) {
    Background b = background.get(i);
    b.display();
  }
}
