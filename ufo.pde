 class UFO {
  float x, y, size;
  float bulletX, bulletY;
  boolean isShooting;
  float bulletSpeed;
  int lastShotTime;
  int shootingInterval;
  float rocketx, rockety;
  
  UFO() {

    x = width/2;
    y = height/2;
    rocketx = width/2;
    rockety = height/2;
    size = 150;
    bulletX = x;
    bulletY = y;
    isShooting = false;
    bulletSpeed = 5;
  }
  void show() {
    image(UFO, x, y, size, size);
    if (isShooting) {
      stroke(255);
      strokeWeight(2);
      line(bulletX, bulletY, rocketx, rockety);
    }
  }

  void move() {
    x = mouseX - size/2;
    y = mouseY - size/2;
    
    float angle = frameCount * 0.015; 
    float radius = 90; 
    rocketx = width/2 - 20 + cos(angle) * radius; 
    rockety = height/2 + sin(angle) * radius; 
    
  }

  void shoot() {
    if (isShooting = true) {
      bulletX = x + size/2;
      bulletY = y + size/2;
      isShooting = true;
      lastShotTime = second();
    }
  }

  void update() {
    if (isShooting) {
      float dx = width/2 - bulletX;
      float dy = height/2 - bulletY;
      float distance = sqrt(dx*dx + dy*dy);
      float vx = (dx / distance) * bulletSpeed;
      float vy = (dy / distance) * bulletSpeed;
      bulletX += vx;
      bulletY += vy;

      if (dist(bulletX, bulletY, width/2, height/2) < 5) {
        isShooting = false;
      }
    }
  }
}
