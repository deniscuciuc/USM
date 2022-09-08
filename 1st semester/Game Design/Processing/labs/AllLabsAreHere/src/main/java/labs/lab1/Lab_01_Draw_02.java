package labs.lab1;


import processing.core.PApplet;

/**
 * Lab_01_Draw_02
 * ==============  Task  ==============
 * Create Skeleton
 *
 * @author dcuciuc
 */
public class Lab_01_Draw_02 extends PApplet {
    final int SKETCH_WIDTH = 500;
    final int SKETCH_HEIGHT = 600;

    public void settings() {
        size(SKETCH_WIDTH, SKETCH_HEIGHT);
        noSmooth();
    }

    public void setup() {
        background(0, 0, 0);
    }

    public void draw() {

    }

    private void drawHat(float x, float y) {
        beginShape();
        endShape();
    }

    private void drawHead(float x, float y) {
        rect(x, y, SKETCH_WIDTH / 3.0f, SKETCH_HEIGHT / 3.0f);
    }

    private void drawBody(float x, float y) {

    }
}
