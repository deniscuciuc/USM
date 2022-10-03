package labs.lab3;

import processing.core.PApplet;
import processing.core.PImage;

public class Lab_03_Tarzan extends PApplet {

    private final int SKETCH_SIZE = 180;

    private PImage imgTarzan;
    private int frameCounter = 0;
    private final int NUMBER_OF_FRAMES = 8;


    public void settings() {
        size(SKETCH_SIZE, SKETCH_SIZE);
    }

    public void setup() {
        imgTarzan = loadImage("Tarzan.png");
    }

    public void draw() {
        background(128, 128, 128);
        frameRate(16);

        frameCounter++;
        drawTarzanAnimation(frameCounter);

        if (frameCounter > NUMBER_OF_FRAMES) frameCounter = 0;
    }

    private void drawTarzanAnimation(int currentFrame) {
        final int y = 1, width = 139, height = 149;
        int x = 15;

        switch (currentFrame) {
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
            case 6:
                x += width * 5;
                break;
            case 7:
                x += width * 6;
                break;
            case 8:
                x += width * 7;
                break;
        }
        image(imgTarzan.get(x, y, width, height), SKETCH_SIZE / 4.0f, SKETCH_SIZE / 6.0f);
    }

}
