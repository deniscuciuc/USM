    /* Color circle */
    
    color randomColor;
    final int LINE_WIDTH = 100;
    float middleX;
    float middleY;

    void settings() {
        size(400, 400);
    }

    void setup() {
        background(255);
    }

    void draw() {
        middleX = width / 2f;
        middleY = height / 2f;
        
        for (int i = 36000; i >= 0; i--) {
            generateNewRandomColor();
            stroke(randomColor);

            final float ROTATE_LINE = i * PI / 180;
            line(middleX, middleY, middleX + LINE_WIDTH * sin(ROTATE_LINE), middleY + LINE_WIDTH * cos(ROTATE_LINE));

            if (i == 0) noLoop();
        }
        
        noFill();
        stroke(255);
        strokeWeight(20);
        ellipse(middleX, middleY, 200, 200);
    }

    void generateNewRandomColor() {
        int randomR = (int) random(0, 255);
        int randomG = (int) random(0, 255);
        int randomB = (int) random(0, 255);
        randomColor = color(randomR, randomG, randomB);
    }
