class Rocket {
  float x, y, vy, size, size2, a, b;
  int timer;
  float glowAmount;  

  Rocket() {
    x = width/2;
    y = width/2;
    a = width/2;
    b = width/2;
    size = 150;
    size2 = 80;
    timer = 100;
    glowAmount = 0;  // Initialize the glow amount
  }

  void show() {
    timer = timer - 1;

    if (timer < 0) {
      image(flame, a, b, size2, size2);
    }

    if (timer == -100) {
      timer = 100;
    }

    
    float ringRadius = size / 2 + 40;
    float ringX = x + size / 2 - 4;
    float ringY = y + size / 2;

    
    float glow = sin(glowAmount) * 10;

    
    stroke(0, 0, 255, 100 + glow);
    strokeWeight(3);
    noFill();
    ellipse(ringX, ringY, ringRadius + glow, ringRadius + glow);  

    image(rocket, x, y, size, size);

    // Update the glow amount for the next frame
    glowAmount += 0.1;
  }

  void move() {
    println(timer);
    float angle = frameCount * 0.015; 
    float radius = 90; 
    x = width/2 - 100 + cos(angle) * radius; 
    y = height/2 - 50 + sin(angle) * radius; 

    a = width/2 - 67 + cos(angle) * radius; 
    b = height/2 + 80 + sin(angle) * radius; 
  }
}
