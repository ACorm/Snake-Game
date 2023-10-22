class SnakeSegement {
  int x;
  int y;
  boolean tail;

  SnakeSegement(int positionx, int positiony) {
    tail=false;
    x=positionx;
    y=positiony;
    this.Display(positionx, positiony);
  }


  void Display(int positionx, int positiony) {
    fill(0);
    rect(x, y, GRID_SIZE, GRID_SIZE);
    if (fallx==x&&fally==y) {
      myApple = new Apple((int)random(0, width/GRID_SIZE-1), (int)random(0, height/GRID_SIZE-1));
    }
    if (tail&&x==positionx&&y==positiony) {
      game_over();
    }
    tail=true;
  }
}