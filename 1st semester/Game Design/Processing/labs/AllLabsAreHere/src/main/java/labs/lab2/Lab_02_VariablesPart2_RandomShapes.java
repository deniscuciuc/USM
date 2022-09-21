package labs.lab2;

import processing.core.PApplet;

public class Lab_02_VariablesPart2_RandomShapes extends PApplet {

    private final int SKETCH_SIZE = 842;

    private int[] randomColorRGB = new int[3];
    private int randomXRectPos;
    private int randomYRectPos ;
    private float randomRectWidth;
    private float randomRectHeight;


    public void settings() {
        size(SKETCH_SIZE, SKETCH_SIZE);
    }

    public void draw() {
        frameRate(10);

        randomColorRGB[0] = (int) random(0, 255);
        randomColorRGB[1] = (int) random(0, 255);
        randomColorRGB[2] = (int) random(0, 255);
        randomXRectPos = (int) random(10, SKETCH_SIZE);
        randomYRectPos = (int) random(10, SKETCH_SIZE);
        randomRectWidth = random(1, SKETCH_SIZE);
        randomRectHeight = random(1, SKETCH_SIZE);

        drawRandomRect();
    }

    private void drawRandomRect() {
        fill(randomColorRGB[0], randomColorRGB[1], randomColorRGB[2]);
        rect(randomXRectPos, randomYRectPos, randomRectWidth, randomRectHeight);
    }
}
