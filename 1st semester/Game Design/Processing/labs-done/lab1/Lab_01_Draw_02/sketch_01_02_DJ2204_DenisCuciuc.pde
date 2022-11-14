final int SKETCH_WIDTH = 500;
    final int SKETCH_HEIGHT = 600;

    final float SKULL_WIDTH = SKETCH_WIDTH / 2.0f;
    final float SKULL_HEIGHT = SKETCH_HEIGHT / 5.0f;
    final float CHIN_WIDTH = SKULL_WIDTH / 3.0f;
    final float CHIN_HEIGHT = SKULL_HEIGHT / 12.0f;

    final float SHIRT_TOP_WIDTH = (SKULL_WIDTH + 10) - (CHIN_WIDTH / 2.0f);
    final float SHIRT_TOP_HEIGHT = 20.0f;
    final float SHIRT_MIDDLE_WIDTH = SHIRT_TOP_WIDTH - 45.0f;
    final float SHIRT_MIDDLE_HEIGHT = SHIRT_TOP_HEIGHT * 3;
    final float SHIRT_BOTTOM_WIDTH = SHIRT_MIDDLE_WIDTH;
    final float SHIRT_BOTTOM_HEIGHT = SHIRT_TOP_HEIGHT / 2;

    public void settings() {
        size(SKETCH_WIDTH, SKETCH_HEIGHT);
        noSmooth();
    }

    public void setup() {
        background(0, 0, 0);
    }

    public void draw() {
        drawHat(SKETCH_WIDTH / 2.0f, SKETCH_HEIGHT / 4.0f - 10);
        drawHead(SKETCH_WIDTH / 4.0f, SKETCH_HEIGHT / 4.0f);
        drawBody(SKETCH_WIDTH / 4.5f, (SKETCH_HEIGHT / 4.0f) + SKULL_HEIGHT + (CHIN_HEIGHT * 3));
    }

    private void drawHat(float x, float y) {
        beginShape();
        noStroke();
        fill(0, 0, 255);
        vertex(x - 20, y);
        vertex(x - 14, y - 14);
        vertex(x - 30, y - 40);
        vertex(x + 10, y - 18);
        vertex(x + 20, y);
        endShape(CLOSE);
    }

    private void drawHead(float x, float y) {
        drawSkull(x, y);
        drawChin(x + CHIN_WIDTH, y + SKULL_HEIGHT);
        drawNose(x, y);
        drawEye(x + (CHIN_WIDTH / 2), y + (SKULL_HEIGHT - 30));
        drawEye(x + (SKULL_WIDTH - (CHIN_WIDTH / 2)), y + (SKULL_HEIGHT - 30));
    }

    private void drawSkull(float x, float y) {
        noStroke();
        fill(255, 255, 255);
        rect(x, y, SKULL_WIDTH, SKULL_HEIGHT, 20);
    }

    private void drawChin(float x, float y) {
        strokeJoin(ROUND);
        strokeWeight(10.0f);
        stroke(255, 255, 255);
        fill(255, 255, 255);
        rect(x, y, CHIN_WIDTH, CHIN_HEIGHT);
    }

    private void drawNose(float x, float y) {
        final float TRIANGLE_X1 = x + (SKULL_WIDTH / 2.0f - 10);
        final float TRIANGLE_Y1 = y + (SKULL_HEIGHT - 20);

        noStroke();
        fill(0, 0, 0);
        triangle(
                TRIANGLE_X1, TRIANGLE_Y1,
                TRIANGLE_X1 + (22 / 2.0f), TRIANGLE_Y1 - 20,
                TRIANGLE_X1 + 22, TRIANGLE_Y1
        );
    }

    private void drawEye(float x, float y) {
        final float YEY_SIZE = 15.0f;
        noStroke();
        fill(0, 0, 0);
        ellipse(x, y, YEY_SIZE, YEY_SIZE);
    }

    private void drawBody(float x, float y) {
        drawTShirt(x, y);
        drawHand(x - 20, y);
        drawHand(x + SHIRT_TOP_WIDTH + 20, y);
        drawLeg(x + SHIRT_TOP_WIDTH / 5.0f,
                y + SHIRT_TOP_HEIGHT + SHIRT_MIDDLE_HEIGHT + 20);
        drawLeg(x + SHIRT_TOP_WIDTH / 5.0f + SHIRT_BOTTOM_WIDTH - 45,
                y + SHIRT_TOP_HEIGHT + SHIRT_MIDDLE_HEIGHT + 20
        );
    }

    private void drawTShirt(float x, float y) {

        /* Top of shirt */
        noStroke();
        fill(65, 105, 255);
        rect(x + 10, y, SHIRT_TOP_WIDTH, SHIRT_TOP_HEIGHT);

        /* Middle of shirt */
        rect(
                x + SHIRT_TOP_WIDTH / 5.0f,
                y + SHIRT_TOP_HEIGHT,
                SHIRT_MIDDLE_WIDTH,
                SHIRT_MIDDLE_HEIGHT
        );

        /* Bottom of shirt */
        fill(139, 69, 19);
        rect(
                x + SHIRT_TOP_WIDTH / 5.0f,
                y + SHIRT_TOP_HEIGHT + SHIRT_MIDDLE_HEIGHT,
                SHIRT_BOTTOM_WIDTH,
                SHIRT_BOTTOM_HEIGHT
        );

        /* Shirt emblem (triangles in the middle) */
        final float FIRST_TRIANGLE_X1 = x + (SHIRT_MIDDLE_WIDTH / 1.5f) - 10;
        final float FIRST_TRIANGLE_Y1 = y + SHIRT_TOP_HEIGHT + (SHIRT_MIDDLE_HEIGHT / 1.5f);
        final float FIRST_TRIANGLE_WIDTH = 70;

        noStroke();
        fill(255, 255, 0);
        triangle(
                FIRST_TRIANGLE_X1,
                FIRST_TRIANGLE_Y1,
                FIRST_TRIANGLE_X1 + 35,
                FIRST_TRIANGLE_Y1 - 50,
                FIRST_TRIANGLE_X1 + FIRST_TRIANGLE_WIDTH,
                FIRST_TRIANGLE_Y1
        );

        final float SECOND_TRIANGLE_X1 = FIRST_TRIANGLE_X1 + FIRST_TRIANGLE_WIDTH / 4.0f;
        final float SECOND_TRIANGLE_Y1 = FIRST_TRIANGLE_Y1 - 25;

        fill(189, 183, 107);
        triangle(
                SECOND_TRIANGLE_X1,
                SECOND_TRIANGLE_Y1,
                SECOND_TRIANGLE_X1 + (FIRST_TRIANGLE_WIDTH / 4.0f),
                FIRST_TRIANGLE_Y1,
                SECOND_TRIANGLE_X1 + 35,
                SECOND_TRIANGLE_Y1
        );
    }

    private void drawHand(float x, float y) {
        noStroke();
        fill(255, 255, 255);
        rect(x, y, 20, 20, 5);
    }

    private void drawLeg(float x, float y) {
        noStroke();
        fill(255, 255, 255);
        rect(x, y, 45, 12, 5);
    }
