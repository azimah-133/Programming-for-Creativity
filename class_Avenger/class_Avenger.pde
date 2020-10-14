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

  /**
   * Animate and move Avenger.
   */
  void update()
  {
    // avenger movement
    x += dx;
    y += dy;
  }

  /**
   * Initialise the Avenger.
   */
  void restart()
  {
    x= getRandomX();
    dx=0;
    y =0;
    dy+= 0.5; // vertical velocity of Avenger increases
  }

  /**
   * Render the Avenger.
   */
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
ArrayList<Avenger> avengers; // create avenger list

// images
PImage imgSTART, imgGauntlet, imgGauntlet2, THANOS, background;

// sounds
import ddf.minim.*;
AudioPlayer sound;
AudioPlayer sound1;
AudioPlayer sound2;
AudioPlayer soundmatter;
AudioPlayer soundpolitics;
AudioPlayer soundKree;
AudioPlayer soundEmptyHand;
AudioPlayer soundLose;
AudioPlayer soundDread;
AudioPlayer soundFun;
AudioPlayer soundSmile;
Minim minim;

//initialise score variable
int score;
int avengerSize = 20;


boolean shoot = false;

//Initialise gameOver variable
int gameOver = 0;