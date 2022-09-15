float spin = 0;

void intro() {
  background(0);
  spin += QUARTER_PI/200;
  spin = spin % TWO_PI;
  
  // Spining Colour Logo
  noFill();
  strokeWeight(20);
  pushMatrix();
  translate(width/2, height/2); 
  rotate(spin); // Increasing spin gives some movement
  for (int i = 0; i < 5; i++) {
    stroke(palette[i]); // Use each colour once
    arc(0, 0, 250, 250, TWO_PI/5*i, TWO_PI/5*i+0.95); // Give it equal distance from eachother
  }
  
  rotate(-2 * spin);
  stroke(palette[4]);
  if (true) {
    textAlign(CENTER, CENTER);
    textSize(30);
    text("TROO\nCOLOOR", 0, 0);
  }
  
  popMatrix();
  
}
