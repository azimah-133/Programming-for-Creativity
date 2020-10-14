/**
 * COMP570 Programming for Creativity 2018 S1
 *
 * Final Project
 *
 * This program is an Avengers shooting meme game. Shoot the faces by clicking the mouse. Inspired by 'Shooting Game' on openprocessing.org.
 * 
 *
 * @author Azimah Ali, Student ID# 17982007
 * @version 1.0 - 08.05.2018: Created 
 */

/**
 * Initialise the canvas and load images & sounds
 */
void setup() {
  size (1700, 950); // canvas size
  smooth ();
  // images
  imgSTART = loadImage("startgame.png"); // menu image
  imgGauntlet = loadImage("cddd181351344a0d85a5228df29f2f14_Original.png"); // shooting glove
  imgGauntlet2 = loadImage("Infinity_Gauntlet_IW.png"); // glove when mouse pressed
  THANOS = loadImage("giphy.gif"); // game over image
  background = loadImage("background2.jpg"); // background image for game
  avengers = new ArrayList<Avenger>(); // ArrayList of Avneger
  avengers.add(new Avenger("capt.png")); 
  avengers.add(new Avenger("ironman.png")); // add two avenger faces
 // sounds
  minim = new Minim(this);
  sound = minim.loadFile("The Ting Goes 7th Element.mp3"); // in-game sound
  sound1 = minim.loadFile("Infinity War (Avengers Infinity War Soundtrack).mp3"); // menu sound
  sound2 = minim.loadFile("Spider-Man Death Scene - Mr. Stark I dont feel so good1.mp3"); // game over sound
  soundmatter = minim.loadFile("Matter.mp3"); // comment sound
  soundpolitics = minim.loadFile("politics.mp3"); // comment sound
  soundKree = minim.loadFile("kree.mp3"); // comment sound
  soundEmptyHand = minim.loadFile("emptyhand.mp3"); // comment sound
  soundLose = minim.loadFile("lose.mp3"); // comment sound
  soundDread = minim.loadFile("dread.mp3"); // comment sound
  soundFun = minim.loadFile("fun.mp3"); // comment sound
  soundSmile = minim.loadFile("smile.mp3"); // comment sound
  sound1.play();
  sound1.loop();
}


int gameState; // 0 = menu, 1 = game