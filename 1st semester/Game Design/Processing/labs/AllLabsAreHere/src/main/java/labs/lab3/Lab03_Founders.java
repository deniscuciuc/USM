package labs.lab3;

import processing.core.PApplet;
import processing.core.PImage;

public class Lab03_Founders extends PApplet {

    int SKETCH_WIDTH = 1000;
    int SKETCH_HEIGHT = 800;
    PImage image;
    float imageXPos = SKETCH_WIDTH / 8.0f;
    float imageYPos = SKETCH_HEIGHT / 3.0f;
    PImage selectedImage;
    int lastMouseXPosition;
    int lastMouseYPosition;
    int selectedRectSize = 150;
    float selectRectXPos = 250;
    float selectRectYPos = 300;

    public void settings() {
        size(1000, 800);
    }


    public void setup() {
        image = loadImage("Founders.jpg");
        image.filter(GRAY);
    }

    public void draw() {
        background(128, 128, 128);
        drawFounders();
        drawMovingByPressingMouseRectangle();
        drawResultOfSelectedRectangle();
    }

    private void drawFounders() {
        image(image, imageXPos, imageYPos);
    }

    private void drawMovingByPressingMouseRectangle() {
        if (mousePressed) {
            lastMouseXPosition = mouseX;
            lastMouseYPosition = mouseY;
        }

        selectRectXPos = lastMouseXPosition - (selectedRectSize / 2.0f);
        selectRectYPos = lastMouseYPosition - (selectedRectSize / 2.0f);

        noFill();
        strokeWeight(2);
        rect(selectRectXPos, selectRectYPos, selectedRectSize, selectedRectSize);
    }

    private void drawResultOfSelectedRectangle() {
        selectedImage = image.get((int) selectRectXPos - (int) imageXPos, (int) selectRectYPos - (int) imageYPos, selectedRectSize, selectedRectSize);
        selectedImage.resize(200, 200);
        image(selectedImage, 300, 25);
    }
}
