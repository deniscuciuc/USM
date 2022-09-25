package labs.lab3;

import processing.core.PApplet;
import processing.core.PImage;

public class Lab03_Tibo extends PApplet {

    private final int SKETCH_WIDTH = 120;
    private final int SKETCH_HEIGHT = 150;

    private PImage imgTibo;
    private int frameCounter = 0;
    private int rawCounter = 1;
    private final int NUMBER_OF_FRAMES = 25;
    private final int MAX_FRAMES_IN_RAW = 5;
    private final int MAX_ROWS = 5;


    public void settings() {
        size(SKETCH_WIDTH, SKETCH_HEIGHT);
    }

    public void setup() {
        imgTibo = loadImage("Tibo.png");
    }

    public void draw() {
        background(128, 128, 128);
        frameRate(5);

        frameCounter++;
        drawTiboAnimation();

        if (rawCounter > MAX_ROWS) rawCounter = 1;
        if (frameCounter >= MAX_FRAMES_IN_RAW) {
            rawCounter++;
            frameCounter = 0;
        }
    }

    private void drawTiboAnimation() {
        final int width = 130, height = 150;
        int x = 0, y = 15;

        switch (rawCounter) {
            case 1:
                break;
            case 2:
                y += height;
                break;
            case 3:
                y += height * 2;
                break;
            case 4:
                y += height * 3;
                break;
            case 5:
                y += height * 4;
                break;
        }

        switch (frameCounter) {
            case 1:
                break;
            case 2:
                x += width;
                break;
            case 3:
                x += width * 2;
                break;
            case 4:
                x += width * 3;
                break;
            case 5:
                x += width * 4;
                break;
        }
        image(imgTibo.get(x, y, width, height), 0, 0);
    }
}
