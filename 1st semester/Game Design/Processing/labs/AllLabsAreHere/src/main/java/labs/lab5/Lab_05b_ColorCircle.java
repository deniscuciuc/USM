package labs.lab5;

import processing.core.PApplet;

public class Lab_05b_ColorCircle extends PApplet {

    int[] randomColorRGB = new int[3];
    final int LINE_WIDTH = 100;
    float middleX;
    float middleY;

    public void settings() {
        size(400, 400);
    }

    public void setup() {
        background(255);
        middleX = width / 2f;
        middleY = height / 2f;
    }

    public void draw() {
        drawLinesInCircle();
        drawCircle();
    }

    void drawCircle() {
        noFill();
        stroke(255);
        strokeWeight(20);
        ellipse(middleX, middleY, 200, 200);
    }

    void drawLinesInCircle() {
        for (int i = 36000; i >= 0; i--) {
            generateNewRandomColor();
            stroke(randomColorRGB[0], randomColorRGB[1], randomColorRGB[2]);

            final float ROTATE_LINE = i * PI / 180;
            line(middleX, middleY, middleX + LINE_WIDTH * sin(ROTATE_LINE), middleY + LINE_WIDTH * cos(ROTATE_LINE));

            if (i == 0) noLoop();
        }
    }

    void generateNewRandomColor() {
        randomColorRGB[0] = (int) random(0, 255);
        randomColorRGB[1] = (int) random(0, 255);
        randomColorRGB[2] = (int) random(0, 255);
    }
}
