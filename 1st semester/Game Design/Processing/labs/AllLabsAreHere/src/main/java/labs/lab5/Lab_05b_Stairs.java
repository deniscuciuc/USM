package labs.lab5;

import processing.core.PApplet;

public class Lab_05b_Stairs extends PApplet {

    enum Direction {RIGHT, LEFT}


    public void settings() {
        size(200, 200);
    }

    public void draw() {
        background(255);
        drawStairs(Direction.RIGHT, 10, 15);
        drawStairs(Direction.LEFT, 10, 60);
    }

    public void drawStairs(Direction stairsDirection, int stair, int gapX) {
        final int GAP_Y = 10;
        int stairWidth = 8, stairHeight = 5;


        for (int i = 1; i <= stair; i++) {
            int x1 = 0, x2 = 0, y1 = 0, x3 = 0, y3 = 0, x4 = 0, y4 = 0;

            switch (stairsDirection) {
                case RIGHT:
                    x1 = stairWidth * i + gapX;
                    x2 = x1 + stairWidth;
                    y1 = GAP_Y * i;
                    x3 = x2;
                    y3 = y1 + stairHeight * 2;
                    x4 = x2;
                    y4 = y1;
                    break;
                case LEFT:
                    x1 = 2 * stair + stairWidth * (stair - i) + GAP_Y * 2;
                    x2 = x1 - stairWidth;
                    y1 = GAP_Y * i;
                    x3 = x2;
                    y3 = y1 + stairHeight * 2;
                    x4 = x2;
                    y4 = y1;
                    break;
            }

            line(x1, y1, x2, y1);
            line(x3, y3, x4, y4);
        }
    }
}
