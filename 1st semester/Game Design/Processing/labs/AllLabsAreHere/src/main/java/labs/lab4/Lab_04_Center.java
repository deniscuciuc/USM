package labs.lab4;

import processing.core.PApplet;

public class Lab_04_Center extends PApplet {

    public void settings() {
        size(400, 400);
        noSmooth();
    }

    float movingLineYPos = 0;

    public void draw() {
        background(204);
        drawMovingLine();
        drawShape();
    }

    void drawMovingLine() {
        line(0, movingLineYPos, width, movingLineYPos);

        movingLineYPos++;

        if (movingLineYPos >= height) {
            movingLineYPos = 0;
        }
    }

    void drawShape() {
        final float shapeSize = 100;
        final float shapeXPos = width / 2f;
        final float shapeYPos = height / 2f;
        final float middleY = height / 2f;

        fill(255, 0, 0);
        strokeWeight(2);
        stroke(0, 0, 0);

        if (movingLineYPos <= middleY) ellipse(shapeXPos, shapeYPos, shapeSize, shapeSize);
        else rect(shapeXPos - shapeSize / 2f, shapeYPos - shapeSize / 2f, shapeSize, shapeSize);
    }
}
