// True Colour Project by PS

int mode = 0;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

color palette[] = new color[5];
PFont font;

int rand1, rand2;
int score, highscore;

void setup() {
  size(400, 600);
  palette[0] = #003049; // Black/Blue
  palette[1] = #d62828; // Red
  palette[2] = #f77f00; // Orange
  palette[3] = #fcbf49; // Yellow
  palette[4] = #eae2b7; // White/Cream

  font = createFont("data/KungFuMaster-K7vrX.otf", 128);
  textFont(font);
  textLeading(1);
}

void draw() {
  switch(mode) {
  case INTRO:
    intro();
    break;
  case GAME:
    game();
    break;
  case GAMEOVER:
    gameover();
    break;
  default:
    println("ERROR");
    break;
  }
}
