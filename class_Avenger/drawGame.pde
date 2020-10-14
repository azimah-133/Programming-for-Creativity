/**
 * Draw menu & game states.
 */
void draw() {
  if (gameState==0) {
    imageMode(CENTER);
    image(imgSTART, width/2, height/2);
    sound.play();
    sound.loop();
    if (keyPressed) {
      if (key == ' ') {
        gameState = 1; // change menu to game
      }
    }
  }
  draw_game();
}

/**
 * Draw game.
 */
void draw_game() {
  // Game animations
  if (gameState==1) {
    sound1.pause();
    for (int idx = 0; idx < avengers.size(); idx++)
    {
      Avenger a = avengers.get(idx);
      a.update();
    }

    // Game Style
    background(background); // game screen background
    image(imgGauntlet, mouseX-60, 870, 180, 210);

    for (int idx = 0; idx < avengers.size(); idx++)
    {
      Avenger a = avengers.get(idx);
      a.render();
    }

    // Display score
    fill(255, 0, 0); // text colour red
    textSize(50); // score text size
    text(score, 40, 50); // score text

    // Shoot faces
    if (shoot)
    {
      cannon(mouseX);
      shoot = false;
    }
    // comments
    if (score >= 3 && score <9) {
      soundmatter.play();
    }
    if (score >= 9 && score <18) {
      soundpolitics.play();
    }
    if (score >= 18 && score <36) {
      soundKree.play();
    }

    if (score >= 36 && score <59) {
      soundEmptyHand.play();
    }

    if (score >= 59 && score <80) {
      soundLose.play();
    }
    if (score >= 80 && score <101) {
      soundDread.play();
    }
    if (score >= 101 && score <140) {
      soundFun.play();;
    }
    if (score >=140) {
      soundSmile.play();;
    }

    if (gameState == 1) {
      sound1.play();
      sound1.loop();
      if (keyPressed) {
        if (key == 'p') {
          gameState = 0; // pause game
        }
      }
    }
  }
  gameFinish();
}

/**
 * Play the game.
 */

void mouseDragged() {
  image(imgGauntlet2, mouseX-60, 870, 180, 240);
}

void mousePressed() {
  shoot = true;
  image(imgGauntlet2, mouseX-60, 870, 180, 240);

  // add more faces
  if (score == 3) {
    avengers.add(new Avenger("sw.png"));
  }
  if (score == 4 ) {
    avengers.add(new Avenger("blackwid.png"));
  }
  if (score == 5 ) {
    avengers.add(new Avenger("falcon.png"));
  }
  if (score == 6) {
    avengers.add(new Avenger("loki.png"));
  }
  if (score == 7 ) {
    avengers.add(new Avenger("drstrange1.png"));
  }
  if (score == 8 ) {
    avengers.add(new Avenger("bucky.png"));
  }
  if (score == 9 ) {
    avengers.add(new Avenger("THOR.png"));
  }
  if (score == 10  ) {
    avengers.add(new Avenger("gamora1.png"));
  }
  if (score == 11) {
    avengers.add(new Avenger("bp.png"));
  }
  if (score == 12 ) {
    avengers.add(new Avenger("okoye.png"));
  }
  if (score == 14 ) {
    avengers.add(new Avenger("hawkeye.png"));
  }
  if (score == 15 ) {
    avengers.add(new Avenger("spiderman.png"));   
    avengers.add(new Avenger("drax1.png"));
  }
}

float getRandomX() {
  return random(0, width);
}

/**
 * Shooting cannons
 */
void cannon(int shotX) {
  boolean strike = false;
  for (int i = 0; i < avengers.size(); i++)
  {
    Avenger a = avengers.get(i);
    if ((shotX >= (a.x-a.getSize()/2)) && (shotX <= (a.x+a.getSize()/2))) {
      strike = true;
      line(mouseX, 120, mouseX, a.y);
      ellipse(a.x, a.y, a.getSize()/3, a.getSize() / 3 );
      a.restart();
      // update score
      score++;
    }
  }
  if (strike == false)
  {
    line(mouseX, 0, mouseX, 120);
  }
}