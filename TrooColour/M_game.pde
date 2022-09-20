int timer, maxTime;
String colour;

void game() {
  background(0);
  timer++;
  
  
  
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
        rand1 = floor(random(0, 5));
        rand2 = floor(random(0, 5));
        if (floor(random(2)) < 1) rand2 = rand1;
      } else {
        mode = GAMEOVER;
      } 
    } else if (key == 'd' || key == 'D') {
      keyPressed = false;
      timer = 0;
      if (rand1 != rand2) {
        rand1 = floor(random(0, 5));
        rand2 = floor(random(0, 5));
        if (floor(random(2)) < 1) rand2 = rand1;
      } else {
        mode = GAMEOVER;
      }     
    }
  }
}
