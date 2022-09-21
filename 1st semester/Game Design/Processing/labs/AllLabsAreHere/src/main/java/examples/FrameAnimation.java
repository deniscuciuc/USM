package examples;

import processing.core.PApplet;

public class FrameAnimation extends PApplet {

    public void setup() {
        frameRate(4);
    }

    int pos = 0;
    int secondPos = 80;

    public void draw() {
        background(204);
        drawMovingLineDownWards();
        drawMovingLineUpWards();
    }

    private void drawMovingLineDownWards() {
        pos++;
        line(0, pos, 80, pos);
        if (pos > width) {
            pos = 0;
        }
    }

    private void drawMovingLineUpWards() {
        secondPos--;
        line(0, secondPos, 80, secondPos);
        if (secondPos > width) {
            secondPos = 0;
        }
    }
}
