import java.util.*;
class Snake {

  int snake_length;
  int speed;
  int positionx;
  int positiony;
  int movex;
  int movey;
  int ofsetx;
  int ofsety;
  int direction;

  LinkedList<SnakeSegement> mySnakeSegements;

  Snake() {
    mySnakeSegements= new LinkedList();
    positiony=height/2;
    positionx=width/2;
    speed=10;
    ofsetx=0;
    ofsety=0;
  }

  void display() {
    fill(0);
    positionx+=ofsetx;
    positiony+=ofsety;
    rect(positionx, positiony, GRID_SIZE, GRID_SIZE);
    if (positionx<0||positionx>width-GRID_SIZE||positiony<0||positiony>height-GRID_SIZE) {
      game_over();
    }
    mySnake.eat();
    for (SnakeSegement aSnakeSegement : mySnakeSegements) {
      aSnakeSegement.Display(positionx, positiony);
    }
  }

  void move() {
    ofsetx=movex;
    ofsety=movey;
    if (snake_length>0) {
      SnakeSegement aSnakeSegement = new SnakeSegement(positionx, positiony);
      mySnakeSegements.addFirst(aSnakeSegement);
      if (mySnakeSegements.size()>snake_length) {
        mySnakeSegements.removeLast();
      }
    }
  }

  void direction() {
    if (key=='w') {
      if (direction==2) {
      } else {
        movex=0;
        movey=-speed;
        direction=0;
      }
    }
    if (key=='s') {
      if (direction==0) {
      } else {
        movex=0;
        movey=speed;
        direction=2;
      }
    }
    if (key=='d') {
      if (direction==3) {
      } else {
        movex=speed;
        movey=0;
        direction=1;
      }
    }
    if (key=='a') {
      if (direction==1) {
      } else {
        movex=-speed;
        movey=-0;
        direction=3;
      }
    }
  }

  void eat() {
    if (fallx==positionx) {
      if (fally==positiony) {
        myApple = new Apple((int)random(0, width/GRID_SIZE-1), (int)random(0, height/GRID_SIZE-1));
        snake_length++;
      }
    }
  }
}