static int GRID_SIZE = 50;
static int fallx = 0;
static int fally = 0;
int slide;

Snake mySnake;
Apple myApple;

void setup() { 
  mySnake = new Snake();
  myApple = new Apple((int)random(0, width/GRID_SIZE-1), (int)random(0, height/GRID_SIZE-1));
  size(1000, 1000, P2D);  
  frameRate(30);
  slide=0;
}

void draw() {
  background(100);
  myApple.display();
  mySnake.display();
  if (keyPressed) {
    mySnake.direction();
  }
  if (slide<4) {
    slide++;
  } else {
    mySnake.move();
    slide=0;
  }
}
void game_over() {
  textSize(50);
  text("GAME OVER", 500, 500);
  noLoop();
}

void keyPressed() {
  if (key=='p') {
    setup();
    loop();
  }
}