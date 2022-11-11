/* Square spiral */

int posX, posY;
int initialLineWidth = 10;
int lineCounter = 2;

void settings() {
  size (200,200);
}

void setup(){
  noLoop();
  posX = width / 2;
  posY = height / 2;
}

void draw(){
  drawSquareSpiral();
}

void drawSquareSpiral() {
  for (int i = 0; i <= 2; i++) {
    line(posX, posY, posX, posY + initialLineWidth);
    line(posX, posY + initialLineWidth, posX + initialLineWidth, posY + initialLineWidth);
    line(posX + initialLineWidth, posY + initialLineWidth, posX + initialLineWidth, posY - initialLineWidth);
    line(posX + initialLineWidth, posY - initialLineWidth, posX - initialLineWidth, posY - initialLineWidth);
    line(posX - initialLineWidth, posY - initialLineWidth, posX - initialLineWidth, posY + initialLineWidth * 2);
    line(posX - initialLineWidth, posY + initialLineWidth * lineCounter, posX + initialLineWidth * lineCounter, posY + initialLineWidth * lineCounter);
    line(posX + initialLineWidth * lineCounter, posY + initialLineWidth * lineCounter, posX + initialLineWidth * lineCounter, posY - initialLineWidth * lineCounter);
    line(posX + initialLineWidth * lineCounter, posY - initialLineWidth * lineCounter, posX - initialLineWidth * lineCounter, posY - initialLineWidth * lineCounter);
    line(posX - initialLineWidth * lineCounter, posY - initialLineWidth * lineCounter, posX - initialLineWidth * lineCounter, posY + initialLineWidth * lineCounter + initialLineWidth);
    line(posX - initialLineWidth * lineCounter, posY + initialLineWidth * lineCounter + initialLineWidth, posX + initialLineWidth * lineCounter, posY + initialLineWidth * lineCounter + initialLineWidth);
    lineCounter++;
  }

  line(posX + initialLineWidth * lineCounter, posY + initialLineWidth * lineCounter, posX + initialLineWidth * lineCounter - initialLineWidth, posY + initialLineWidth * lineCounter);
  line(posX + initialLineWidth * lineCounter, posY + initialLineWidth * lineCounter, posX + initialLineWidth * lineCounter, posY - initialLineWidth * lineCounter);
  line(posX + initialLineWidth * lineCounter, posY - initialLineWidth * lineCounter, posX - initialLineWidth * lineCounter, posY - initialLineWidth * lineCounter);
}
