final int Y_GAP = 53;

int currentSecond = 0;
int ellapsedMillis = 1000;
int nextTime = 0;
int previousTime = 0;


color red = color(220,20,60);
color orange = color(255,140,0);
color green = color(154,205,50);


void drawUI() {
  drawHp();
  drawTime();
  drawScore();
}

void drawHp() {
  int hp = player.getHp();
  int rectWidth = 50;
  int rectHeight = 25;
  for (int i = 0; i < 5; i++) {
    if(hp >= 4) {
      fill(green);
    } else if(hp >= 2) {
      fill(orange);
    } else if(hp == 1) {
      fill(red);
    }
    
    if(i + 1 > hp) {
      fill(128);
    }
    rect(50 + i * rectWidth, 30, rectWidth, rectHeight);
  }
}

void drawTime() {
  textSize(25);
  fill(255);
  text("TIME : " + currentSecond + "s", 605, Y_GAP);
  if (millis() - previousTime >= ellapsedMillis) {
    previousTime = millis();
    currentSecond += 1;
  }
}

void drawScore() {
  textSize(25);
  fill(255);
  text("SCORE : " + player.getScore(), 1200, Y_GAP);
}
