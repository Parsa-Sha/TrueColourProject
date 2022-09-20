void gameover() {
  background(palette[1]);
  if (mousePressed) {
    mousePressed = false;
    mode = INTRO;
  }
}
