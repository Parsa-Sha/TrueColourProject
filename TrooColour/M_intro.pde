void intro() {
  background(0);
  
  noFill();
  strokeWeight(20);
  for (int i = 0; i < 5; i++) {
    stroke(palette[i]);
  }
  
  stroke(255);
  circle(width/2, height/2, 250);
  
}
