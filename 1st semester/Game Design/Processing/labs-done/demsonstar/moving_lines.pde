

enum MovingDirection {
  DOWN, UP
}

float movingDownLineYPos = 0;
float movingUpLineYPos = 100;
int step = 2;

void settings() {
  size(100, 100);
}

void draw() {
  background(204);
  frameRate(30);
  
  drawMovingLine(MovingDirection.DOWN);
  drawMovingLine(MovingDirection.UP);
}


private void drawMovingLine(MovingDirection movingDirection) {
        float startXPoint = 0,
                startYPoint = 0,
                endXPoint = width,
                endYPoint = height;

        
        switch (movingDirection) {
            case DOWN:
                line(startXPoint, movingDownLineYPos, endXPoint, movingDownLineYPos);

                movingDownLineYPos += step;

                if (movingDownLineYPos >= height) {
                    movingDownLineYPos = 0;
                }
                break;
            case UP:
                line(startXPoint, movingUpLineYPos, endXPoint, movingUpLineYPos);

                movingUpLineYPos -= step;

                if (movingUpLineYPos <= 0) {
                    movingUpLineYPos = height;
                }
                break;
    }
}
