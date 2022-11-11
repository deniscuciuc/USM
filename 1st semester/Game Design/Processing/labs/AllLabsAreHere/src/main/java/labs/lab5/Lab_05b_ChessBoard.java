package labs.lab5;

import processing.core.PApplet;

public class Lab_05b_ChessBoard extends PApplet {

    final int NUMBER_OF_COLUMNS = 8;
    final int NUMBER_OF_ROWS = 8;
    final int NUMBER_OF_CELLS = NUMBER_OF_COLUMNS + NUMBER_OF_ROWS;
    int cellSize;

    public void settings() {
        size(200, 200);
    }

    public void setup() {
        cellSize = (width + height) / NUMBER_OF_CELLS;
    }

    public void draw() {
        drawChessBoard();
    }

    void drawChessBoard() {
        int posX = 0;
        int posY = 0;

        for (int i = 1; i <= NUMBER_OF_COLUMNS; i++) {
            for (int j = 0; j < NUMBER_OF_ROWS; j++) {

                if (j == 0) {
                    if (i % 2 == 0) {
                        fill(255);
                        stroke(255);
                    } else {
                        fill(0);
                        stroke(0);
                    }
                } else if (j % 2 == 0) {
                    fill(255);
                    stroke(255);
                } else {
                    fill(0);
                    stroke(0);
                }

                rect(posX, posY, cellSize, cellSize);
                posX += cellSize;
            }
            posX = 0;
            posY += cellSize;
        }

    }
}

