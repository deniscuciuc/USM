package labs.lab4;

import processing.core.PApplet;

public class Lab_04_MouseButtons extends PApplet {

    enum Color {WHITE, GREEN}

    int whiteX1, whiteY1, whiteX2 = 0, whiteY2 = 0, greenX1, greenY1, greenX2, greenY2;

    public void settings() {
        size(842, 480);
    }

    public void draw() {
        switch (mouseButton) {
            case LEFT:
                drawPoint(Color.WHITE, whiteX1, whiteY1, whiteX2, whiteY2);
                break;
            case RIGHT:
                drawPoint(Color.GREEN, greenX1, greenY1, greenX2, greenY2);
                break;
            case CENTER:
                exit();
        }
    }

    void drawPoint(Color color, int x1, int y1, int x2, int y2) {
        switch (color) {
            case WHITE:
                stroke(255);
                fill(255);
                break;
            case GREEN:
                stroke(0, 255, 0);
                fill(0, 255, 0);
                break;
        }

        x1 = mouseX;
        y1 = mouseY;

        if (x2 == 0) x2 = x1;
        if (y2 == 0) y2 = y1;

        ellipse(x2, y2, 10, 10);
        drawLine(color, x1, y1, x2, y2);
    }

    void drawLine(Color color, int x1, int y1, int x2, int y2) {
        line(x1, y1, x2, y2);

        switch (color) {
            case WHITE:
                whiteX2 = mouseX;
                whiteY2 = mouseY;
                break;
            case GREEN:
                greenX2 = mouseX;
                greenY2 = mouseY;
                break;
        }
    }
}
