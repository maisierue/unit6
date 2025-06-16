//Advance Animation
//2-2
//Sofie Tang

//Class Declare
Star[] myStar;
Astroids[] myAstroids;
Rocket myRocket;
UFO myUFO;
Planets[] myPlanets;

//Varible Declare
int numstars;
int numast;
int numplanets;

//Image Declare
PImage astroid;
PImage rocket;
PImage flame;
PImage planet1;
PImage planet2;
PImage planet3;
PImage planet4;
PImage UFO;
//==========================================================================
void setup() {
  size(800, 800);
  //Image Declare
  astroid = loadImage("astroid.png");
  rocket = loadImage("rocket.png");
  flame = loadImage("flame.png");
  planet1 = loadImage("planet1.png");
  planet2 = loadImage("planet2.png");
  planet3 = loadImage("planet3.png");
  planet4 = loadImage("planet4.png");
  UFO = loadImage("UFO.png");


  //STAR
  numstars = 120;
  myStar = new Star[numstars]; //constructor
  int s = 0;
  while ( s < numstars) {
    myStar[s] = new Star();
    s++;
  }

  //ASTROID
  numast = 10;
  myAstroids = new Astroids[numast];
  int a = 0;
  while ( a < numast) {
    myAstroids[a] = new Astroids();
    a++;
  }

  //ROCKET
  myRocket = new Rocket();

  //PlANETS
  numplanets = 1;
  myPlanets = new Planets[numplanets];
  int p = 0;
  while ( p < numplanets) {
    myPlanets[p] = new Planets();
    p++;
  }

  //UFO
  myUFO = new UFO();


  background(0);
}

void draw() {
  noStroke();
  //PLANETS
  int p = 0;
  while ( p < numplanets) {
    myPlanets[p].show();
    myPlanets[p].move();
    p++;
  }

  fill(0, 50);
  rect(0, 0, width, height);
  fill(255);

  //STAR
  int s = 0;
  while ( s < numstars) {
    myStar[s].show();
    myStar[s].move();
    s++;
  }

  //ASTROIDS
  int a = 0;
  while ( a < numast) {
    myAstroids[a].show();
    myAstroids[a].move();
    a++;
  }

  //ROCKET
  myRocket.show();
  myRocket.move();

  //UFO
  myUFO.show();
  myUFO.move();
  //UFO
  myUFO.update();

  if (mousePressed) {
    myUFO.shoot();
  }
}
