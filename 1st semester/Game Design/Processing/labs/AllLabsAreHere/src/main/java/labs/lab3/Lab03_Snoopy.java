package labs.lab3;

import processing.core.PApplet;
import processing.core.PImage;

public class Lab03_Snoopy extends PApplet {

    private PImage image;
    private int threshold = 150;

    public void settings() {
        size(800, 600);
    }

    public void setup() {
        image = loadImage("snoopy-dance.png");
    }

    public void draw() {
        background(255);
        fill(0);

        image.resize(80, 60);
        image.loadPixels();

        drawImageInText();
    }

    private void drawImageInText() {
        for (int i = 0; i < image.pixels.length; i++) {
            int col = image.pixels[i];

            if (brightness(col) < threshold) {
                int x = i % image.width * 10;
                int y = i / image.width * 10 + 10;
                text("snoopy", x, y);
            }
        }
    }
}
