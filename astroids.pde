class Astroids {

  float x, y, vy, size;

  Astroids() {
    x = random(0, width);
    y = random(0, height);
    vy = random(1, 3);
    size = 50;
  }

  void show() {
    image(astroid, x, y, size, size);
  }

  void move() {
    y = y + vy;
    if (y > height) {
      y = 0-size;
      x = random(0, width);
    }

    if (x > 200 && x < height-250) {
      y = 0-size;
      x = random(0, width);
    }
  }
}
