void gameover() {
  background(palette[1]);
  
  fill(palette[4]);
  textSize(70);
  text("GAMEOVER", width/2, 150);
  
  textSize(30);
  text("SCORE: " + score, width/2, height/2);
  
  text("HIGHSCORE: " + highscore, width/2, height/2 + 50);
  
  if (mousePressed) {
    mousePressed = false;
    mode = INTRO;
  }
}
