
    final int HOUSE_WIDTH_SIZE = 100;
    final int HOUSE_HEIGHT_SIZE = 60;
    final int DEFAULT_Y_POSITION = 60;

    int[] fillRGB = new int[]{};
    int[] strokeRGB = new int[]{};


    public void settings() {
        size(700, 150);
        noSmooth();
    }

    public void setup() {
        background(238, 232, 170);
    }

    public void draw() {
        fillRGB = new int[]{255, 0, 0};
        drawHouse(30, DEFAULT_Y_POSITION, true, false);

        strokeRGB = new int[]{0, 0, 0};
        fillRGB = new int[]{255, 255, 255};
        drawHouse(150, DEFAULT_Y_POSITION, false, true);

        drawQuad(270, DEFAULT_Y_POSITION);
        drawFlag(350, DEFAULT_Y_POSITION);
        drawGameBoard(450, DEFAULT_Y_POSITION - 40);
        draw3Ellipses(600, DEFAULT_Y_POSITION);
    }

    private void drawHouse(float x, float y, boolean fill, boolean stroke) {
        if (fill) {
            fill(fillRGB[0], fillRGB[1], fillRGB[2]);
        } else {
            noFill();
        }

        if (stroke) {
            stroke(strokeRGB[0], strokeRGB[1], strokeRGB[2]);
        } else {
            noStroke();
        }

        rect(x, y, HOUSE_WIDTH_SIZE, HOUSE_HEIGHT_SIZE);
        triangle(x, y, x + HOUSE_WIDTH_SIZE, y, x + (HOUSE_WIDTH_SIZE / 2.0f), y - (HOUSE_WIDTH_SIZE / 2.0f));
    }

    private void drawQuad(float x, float y) {
        float quadSize = 55;
        fill(255, 255, 0);
        stroke(0, 0, 0);
        quad(x, y, x + (quadSize / 2), y - quadSize, x + quadSize, y, x + (quadSize / 2), y + quadSize);
    }

    private void drawFlag(float x, float y) {
        stroke(0, 0, 0);
        strokeWeight(5);
        line(x, y + HOUSE_HEIGHT_SIZE, x, y - (HOUSE_HEIGHT_SIZE / 2.0f));

        float flagColorWidth = 18, flagColorHeight = 40;
        fill(0, 0, 0);
        rect(x + 5, y - (HOUSE_HEIGHT_SIZE / 2.0f), flagColorWidth, flagColorHeight);

        fill(255, 255, 0);
        stroke(255, 255, 0);
        rect(x + 5 + flagColorWidth, y - (HOUSE_HEIGHT_SIZE / 2.0f), flagColorWidth, flagColorHeight);

        fill(255, 0, 0);
        stroke(255, 0, 0);
        rect(x + 5 + flagColorHeight, y - (HOUSE_HEIGHT_SIZE / 2.0f), flagColorWidth, flagColorHeight);
    }

    private void drawGameBoard(float x, float y) {
        final float START_POS = x;
        final int GAME_BOARD_SIZE = 3;
        final int GAME_BOARD_MAX_CELLS = GAME_BOARD_SIZE * 3;
        final float CELL_SIZE = 20;

        for (int i = 1; i <= GAME_BOARD_MAX_CELLS; i++) {
            if (i == 4 || i == 7) {
                y += CELL_SIZE + 5;
                x = START_POS;
            }

            if (i % 2 == 0) {
                fill(255, 255, 255);
                stroke(255, 255, 255);
            } else {
                fill(0, 0, 0);
                stroke(0, 0, 0);
            }

            rect(x, y, CELL_SIZE, CELL_SIZE);
            x += CELL_SIZE + 5;
        }
    }

    private void draw3Ellipses(float x, float y) {
        final float ELLIPSE_WIDTH = 80;
        final float ELLIPSE_HEIGHT = (ELLIPSE_WIDTH / 2) - 5;

        fill(255, 0, 0);
        noStroke();
        ellipse(x, y, ELLIPSE_WIDTH, ELLIPSE_HEIGHT);

        fill(0, 255, 0);
        noStroke();
        ellipse(x, y, ELLIPSE_HEIGHT, ELLIPSE_WIDTH);

        fill(255, 255, 0);
        stroke(255, 0, 0);
        strokeWeight(1);
        ellipse(x, y, ELLIPSE_HEIGHT, ELLIPSE_HEIGHT);
    }
