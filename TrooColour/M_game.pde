/*

To Do:

-Include score + highscore
-Include button indicators + mouse
-Make background be assigned to match/not matched

*/

int timer;
int maxTime = 300;
String colour;

void game() {
  background(0);
  image(bg, width/2, height/2);
  timer++;
  highscore = max(highscore, score);
  if (timer >= maxTime) mode = GAMEOVER;
  intro.pause();
  
  
  strokeWeight(2);
  fill(palette[3]);
  rectMode(CORNERS);
  rect(25, 25, width-25, 50);
  rectMode(CORNER);
  strokeWeight(0);
  fill(palette[1]);
  rect(26, 26, map(timer, 0, maxTime, 0, width-50), 25);
  rectMode(CENTER);
  
  textSize(40);
  fill(255);
  pushMatrix();
  translate(50, height/2);
  rotate(-HALF_PI);
  text("MATCH", 0, 0);
  translate(0, 300);
  rotate(PI);
  fill(0);
  text("NO MATCH", 0, 0);
  popMatrix();
  
  fill(palette[rand1]); // Decide colour & word based on random
  colour = words[rand2];
  
  text(colour, width/2, height/2);

  if (keyPressed) { // Key imput
    if (key == 'a' || key == 'A' || keyCode == LEFT) {
      keyPressed = false;
      timer = 0;
      if (rand1 == rand2) {
        randReset();
        score++;
        maxTime -= 10;
        success.rewind();
        success.play();
      } else {
        mode = GAMEOVER;
      } 
    } else if (key == 'd' || key == 'D' || keyCode == RIGHT) {
      keyPressed = false;
      timer = 0;
      if (rand1 != rand2) {
        randReset();
        score++;
        maxTime -= 10;
        success.rewind();
        success.play();
      } else {
        mode = GAMEOVER;
      }     
    }
  }
  
  if (mousePressed) { // Mouse input
    if (mouseX < width/2) {
      mousePressed = false;
      timer = 0;
      if (rand1 == rand2) {
        randReset();
        score++;
        maxTime -= 10;
        success.rewind();
        success.play();
      } else {
        mode = GAMEOVER;
      } 
    } else {
      mousePressed = false;
      timer = 0;
      if (rand1 != rand2) {
        randReset();
        score++;
        maxTime -= 10;
        success.rewind();
        success.play();
      } else {
        mode = GAMEOVER;
      }
    }
  }
}
