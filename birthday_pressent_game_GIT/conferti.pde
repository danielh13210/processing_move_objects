class Conferti {
  int X;
  int Y;
  int h = 5;
  Conferti(int intX, int intY) {
    X=intX;
    Y=intY;
  }
  void setColor() {
    color thisColor = color(random(0, 255), random(0, 255), random(0, 255));
    fill(thisColor);
  }
  void display() {
    rect(X, Y, 10, h);
    Y = Y + 1;
    if (Y > 600) {
      Y = 0;
    }
    h = (h + 1) % 5;
  }
}
