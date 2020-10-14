/**
 * Game over.
 */
void gameFinish() {

  for (int i=0; i< avengers.size(); i++)
  {
    if (avengers.get(i).hasReachedBottom()) {
      sound.pause();
      sound1.close();
      sound2.play();
      sound2.loop();
      // clear screen
      background(0); 
      fill(color(255, 0, 0));
      fill(255, 0, 0);
      textAlign(CENTER);
      textSize(50);
      text("GAME OVER", width/2, height/2 - 60);
      text("Great job Thanos! You killed "+ score, width/2, height/2);
      text("Avengers.", width/2, height/2 + 60);
      image(THANOS, 350, 450, 250, 270);
      noLoop();
    }
  }
}