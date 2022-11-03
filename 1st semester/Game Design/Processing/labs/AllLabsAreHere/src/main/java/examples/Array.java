package examples;

import processing.core.PApplet;

public class Array extends PApplet {

    public void settings() {
        size(640, 360);
    }

    int value = 0;

    public void draw() {
        fill(value);
        rect(25, 25, 50, 50);
    }

    public void keyPressed() {
        if (value == 0) {
            value = 255;
        } else {
            value = 0;
        }
    }
}
