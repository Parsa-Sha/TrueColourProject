// Incorporate sqrt(abs(cos(t/PI))) to bounce off rotating

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
  rotate(spin); // Increasing spin gives movement
  for (int i = 0; i < 5; i++) {
    stroke(palette[i]); // Use each colour once
    arc(0, 0, 250, 250, TWO_PI/5*i, TWO_PI/5*i+0.95); // Give it equal distance from eachother
  }

  rotate(-2*spin); // Title spinning the opposite way
  fill(palette[4]);
  textAlign(CENTER, CENTER);
  textSize(40);
  text("TROO\nCOLOOR", 0, 0);

  popMatrix();

  fill(palette[4]);
  stroke(palette[4]);
  
  //circle(width/2, 130, 50);
  //circle(width/2, height-130, 50);
  
  // Take sqrt(abs(cos(t/PI))) to give bouncing, and then map it 

  if (mousePressed && dist(mouseX, mouseY, width/2, height/2) < 125) {
    mousePressed = false;
    rand1 = floor(random(0, 5));
    rand2 = floor(random(0, 5));
    if (floor(random(2.3)) < 1) rand2 = rand1;
    timer = 0;
    maxTime = 300;
    mode = GAME;
  }
}
