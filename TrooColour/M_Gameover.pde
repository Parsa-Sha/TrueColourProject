void gameover() {
  background(palette[1]);
  
  fill(palette[4]);
  textSize(70);
  text("GAMEOVER", width/2, 150);
  
  if (mousePressed) {
    mousePressed = false;
    mode = INTRO;
  }
}
