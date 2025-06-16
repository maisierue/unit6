class Planets {

  float x, y, vy, size, a, b, c, q, w, e;

  Planets() {
    x = 100;
    a = 356;
    b = 543;
    c = 743;
    y = 123;
    q = 342;
    w = 563;
    e = 735;
    vy = 0.5;
    size = 120;
  }

  void show() {
    image(planet1, x, y, size, size);
    image(planet2, a, q, size, size);
    image(planet3, b, w, size, size);
    image(planet4, c, e, size, size);
  }

  void move() {
  y = y + vy;
  q = q + vy;
  w = w + vy;
  e = e + vy;

  // Check if planets go off the bottom of the screen
  if (y > height) {
    y = 0 - size;
    x = random(0, width);
  }
  
  if (q > height) {
    q = 0 - size;
    a = random(0, width);
  }
  
  if (w > height) {
    w = 0 - size;
    b = random(0, width);
  }
  
  if (e > height) {
    e = 0 - size;
    c = random(0, width);
  }
  
  
  if (x > width - size) {
    x = width - size;
  } else if (x < 0) {
    x = 0;
    x = random(0, width);
  }
  
  if (a > width - size) {
    a = width - size;
  } else if (a < 0) {
    a = 0;
    a = random(0, width);
  }
  
  if (b > width - size) {
    b = width - size;
  } else if (b < 0) {
    b = 0;
    b = random(0, width);
  }
  
  if (c > width - size) {
    c = width - size;
  } else if (c < 0) {
    c = 0;
    c = random(0, width);
  }
}

}
