private enum MovingDirection {
        DOWN, UP, LEFT, RIGHT
    }

    private final int SKETCH_WIDTH = 100;
    private final int SKETCH_HEIGHT = 100;

    private float movingDownLineYPos = 0;
    private float movingUpLineYPos = SKETCH_HEIGHT;
    private float movingRightLineXPos = 0;
    private float movingLeftLineXPos = SKETCH_WIDTH;

    public void settings() {
        size(SKETCH_WIDTH, SKETCH_HEIGHT);
    }

    public void draw() {
        background(204);
        drawMovingLine(MovingDirection.DOWN);
        drawMovingLine(MovingDirection.UP);
        drawMovingLine(MovingDirection.RIGHT);
        drawMovingLine(MovingDirection.LEFT);
    }

    private void drawMovingLine(MovingDirection movingDirection) {
        float startXPoint = 0,
                startYPoint = 0,
                endXPoint = SKETCH_WIDTH,
                endYPoint = SKETCH_HEIGHT;

        frameRate(80);
        switch (movingDirection) {
            case DOWN:
                line(startXPoint, movingDownLineYPos, endXPoint, movingDownLineYPos);

                movingDownLineYPos++;

                if (movingDownLineYPos >= SKETCH_HEIGHT) {
                    movingDownLineYPos = 0;
                }
                break;
            case UP:
                line(startXPoint, movingUpLineYPos, endXPoint, movingUpLineYPos);

                movingUpLineYPos--;

                if (movingUpLineYPos <= 0) {
                    movingUpLineYPos = SKETCH_HEIGHT;
                }
                break;
            case LEFT:
                line(movingLeftLineXPos, startYPoint, movingLeftLineXPos, endYPoint);

                movingLeftLineXPos--;

                if (movingLeftLineXPos <= 0) {
                    movingLeftLineXPos = SKETCH_WIDTH;
                }
                break;
            case RIGHT:
                line(movingRightLineXPos, startYPoint, movingRightLineXPos, endYPoint);

                movingRightLineXPos++;

                if (movingRightLineXPos >= SKETCH_WIDTH) {
                    movingRightLineXPos = 0;
                }
                break;
        }

        drawConnectionLine(movingRightLineXPos, startYPoint, startXPoint, movingUpLineYPos);
        drawConnectionLine(movingRightLineXPos, startYPoint, endXPoint, movingDownLineYPos);
        drawConnectionLine(startXPoint, movingUpLineYPos, movingLeftLineXPos, endYPoint);
        drawConnectionLine(movingLeftLineXPos, endYPoint, endXPoint, movingDownLineYPos);

    }

    private void drawConnectionLine(float x1, float y1, float x2, float y2) {
        line(x1, y1, x2, y2);
    }
