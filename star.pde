class Star {
  //1. Instance Variables - the data that objects
  //                        of this type need to
  //                        remember.
  float x, y, vy, size;
  
  //2. Constructor - initializes (give default
  //                 values) to the instance vars.
  //                 The constructor is a function
  //                 with no void and its name 
  //                 must be the same as the class.
  Star() {
    x = random(0, width);
    y = random(0, height);
    vy = random(1, 3);
    size = vy;
  }
  
  //3. Behaviour Functions - regular functions that
  //             act upon the instance variables
  //             and do whatever tasks these objects
  //             are supposed to do.
  void show() {
    fill(255);
    stroke(255,10);
    square(x, y, size);
  }
  
  void move() {
    y = y + vy;
    if (y > height) {
      y = 0;
      x = random(0,width);
    }
  }
  
} //end of Star class
