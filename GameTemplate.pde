PImage shipImage;
PImage heroImage;
PImage enemyImage;

int level;
Game game;


void setup() {
  size(900, 800);
  background(10, 60, 40);
  frameRate(18);
  initGame();
}

void draw() {
  background(96, 108, 164);
  game.run();
}

void initGame() {
  game = new Game();
  level = 0;
  loadImages();
}

void loadImages() {
  shipImage = loadImage("ship.png");
  heroImage = loadImage("hero.png");
  enemyImage = loadImage("enemy.png");
}

void mousePressed() {
  game.mousePressedHandler(new PVector(mouseX, mouseY));
}

void mouseMoved() {
  game.mouseMovedHandler(new PVector(mouseX, mouseY));
}

void keyPressed() {
  game.keyCodeHandler(keyCode);
}

