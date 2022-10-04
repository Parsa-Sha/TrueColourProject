// True Colour Project by PS

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer intro, gameover, success;


int mode = 0;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

color palette[] = new color[5];
String words[] = new String[5];
PFont font;
PImage bg, homeIcon;


int rand1, rand2;
int score, highscore;

void setup() {
  size(400, 600);
  palette[0] = #003049; // Black/Blue
  palette[1] = #d62828; // Red
  palette[2] = #f77f00; // Orange
  palette[3] = #fcbf49; // Yellow
  palette[4] = #eae2b7; // White/Cream
  words[0] = "BLUE";
  words[1] = "RED";
  words[2] = "ORANGE";
  words[3] = "YELLOW";
  words[4] = "WHITE";
  bg = loadImage("data//imgs//bg.png");
  homeIcon = loadImage("data//imgs//homeIcon.png");
  imageMode(CENTER);

  minim = new Minim(this);
  intro = minim.loadFile("data//sfx//intro.mp3");
  gameover = minim.loadFile("data//sfx//gameover.mp3");
  success = minim.loadFile("data//sfx//success.wav");

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
