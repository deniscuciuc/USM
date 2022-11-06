package labs.lab4;

import processing.core.PApplet;

public class Lab_04_BouncingCircle extends PApplet {

    int size = 50;
    int positionX = 0;
    int positionY = 0;
    int displacementX = 2;
    int displacementY = 2;
    int radius = 30;

    public void settings() {
        size(842, 480);
    }


    public void draw() {
        background(0, 0, 0);
        drawBouncingCircle();
    }

    void drawBouncingCircle() {
        ellipse(positionX, positionY, size, size);
    }
}
