/* Functions */

void settings() {
  size(800, 600);
}

void draw() {
  drawLines(10, 20);
  drawLines(70, 20);
  drawLines(10, 100, 7, 5, 50);
  drawLines(70, 100, 10, 5, 100);
  drawSquares(30, 200, 5);
  drawSquares(130, 200, 10);
  drawSquares(50, 320, 10, color(255, 0, 0));
  drawSquares(140, 325, 5, color(0, 255, 0));
}

void drawLines(float posX, float posY) {
  stroke(0);
  float gap = 5, lineLength = 40;
  for (int i = 1; i <= 5; i++) {
    if (i == 1) {
      line(posX, posY, posX + lineLength, posY);
      continue;
    }
    float linePosY = posY + gap * (i - 1);
    line(posX, linePosY, posX + lineLength, linePosY);
  }
}

void drawLines(float posX, float posY, float gap, int amount, float lineLength) {
  stroke(0);
  for (int i = 1; i <= amount; i++) {
    if (i == 1) {
      line(posX, posY, posX + lineLength, posY);
      continue;
    }
    float linePosY = posY + gap * (i - 1);
    line(posX, linePosY, posX + lineLength, linePosY);
  }
}

void drawSquares(float posX, float posY, int amount) {
  stroke(0);
  noFill();
  int size = 10;
  float gap = 10;
  for (int i = 1; i <= amount; i++) {
    if (i == 1) {
      rect(posX + size / 2, posY + size / 2, size, size);
      continue;
    }
    size += 10;
    rect(posX - gap * (i - 1) + size / 2, posY - gap * (i - 1) + size / 2, size, size);
  }
}

void drawSquares(float posX, float posY, int amount, color squareColor) {
  stroke(squareColor);
  noFill();
  int size = 10;
  float gap = 10;
  for (int i = 1; i <= amount; i++) {
    if (i == 1) {
      rect(posX + size / 2, posY + size / 2, size, size);
      continue;
    }
    size += 10;
    rect(posX - gap * (i - 1) + size / 2, posY - gap * (i - 1) + size / 2, size, size);
  }
}

void drawCircles(float posX, float posY, int amount, float radius) {
  for (int i = 1; i <= amount; i++) {
    
  }
}
