void game() {
  background(0);

  fill(palette[rand1]); // Decide colour based on random

  switch(rand2) {
  case 0:
    text("BLUE", width/2, height/2);
    break;
  case 1:
    text("RED", width/2, height/2);
    break;
  case 2:
    text("ORANGE", width/2, height/2);
    break;
  case 3:
    text("YELLOW", width/2, height/2);
    break;
  case 4:
    text("WHITE", width/2, height/2);
    break;
  default:
    println("ERROR");
    break;
  }

  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      keyPressed = false;
      if (rand1 == rand2) {
        rand1 = floor(random(0, 5));
        rand2 = floor(random(0, 5));
        
      } else {
        mode = GAMEOVER;
      } 
    } else if (key == 'd' || key == 'D') {
      keyPressed = false;
      if (rand1 != rand2) {
        rand1 = floor(random(0, 5));
        rand2 = floor(random(0, 5));
      } else {
        mode = GAMEOVER;
      }     
    }
  }
}
