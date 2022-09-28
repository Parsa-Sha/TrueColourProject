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
  
  strokeWeight(2);
  fill(palette[3]);
  rectMode(CORNERS);
  rect(25, 25, width-25, 50);
  rectMode(CORNER);
  strokeWeight(0);
  fill(palette[1]);
  rect(26, 26, map(timer, 0, maxTime, 0, width-50), 25);
  rectMode(CENTER);
  
  textSize(30);
  fill(255);
  pushMatrix();
  translate(100, height/2);
  rotate(-GALF_PI);
  
  
  fill(palette[rand1]); // Decide colour based on random

  switch(rand2) {
  case 0:
    colour = "BLUE";
    break;
  case 1:
    colour = "RED";
    break;
  case 2:
    colour = "ORANGE";
    break;
  case 3:
    colour = "YELLOW";
    break;
  case 4:
    colour = "WHITE";
    break;
  default:
    println("ERROR");
    break;
  }
  
  text(colour, width/2, height/2);

  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      keyPressed = false;
      timer = 0;
      if (rand1 == rand2) {
        randReset();
        score++;
        maxTime -= 10;
      } else {
        mode = GAMEOVER;
      } 
    } else if (key == 'd' || key == 'D') {
      keyPressed = false;
      timer = 0;
      if (rand1 != rand2) {
        randReset();
        score++;
        maxTime -= 10;
      } else {
        mode = GAMEOVER;
      }     
    }
  }
}
