class Avenger {
  float x, y; // X and Y position
  float dx, dy; // X and Y velocity of the avenger
  PImage imgAvenger; // picture of the avenger

  Avenger(String pictureFilename)
  {
    dx = 0; // X velocity
    dy = 0; // Y velocity
    imgAvenger = loadImage(pictureFilename);
    restart();
  }

  void update()
  {
    x += dx;
    y += dy;
  }

  void restart()
  {
    x= getRandomX();
    dx=0;
    y =0;
    dy+= 0.5;
  }

  void render()
  {
    imageMode(CENTER);
    image(imgAvenger, x, y);
  }

  float getSize()
  {
    return imgAvenger.width;
  }

  boolean hasReachedBottom()
  {
    if (y > height) return true;
    else return false;
  }
}


// declare objects
ArrayList<Avenger> avengers;

PImage imgGauntlet, imgGauntlet2, THANOS;

color background   = color(0, 255, 255);
//initialise score variable
int score;
int avengerSize = 20;


boolean shoot = false;

//Initialise gameOver variable
int gameOver = 0;