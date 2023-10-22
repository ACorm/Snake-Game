class Apple {

  Apple(int x, int y) {
    fallx=GRID_SIZE*x;
    fally=GRID_SIZE*y;
  }
  void display() {
    fill(255, 0, 0);
    rect(fallx, fally, GRID_SIZE, GRID_SIZE);
  }
}