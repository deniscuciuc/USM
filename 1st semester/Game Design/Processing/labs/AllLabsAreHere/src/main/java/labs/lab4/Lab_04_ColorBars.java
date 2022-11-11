package labs.lab4;

import processing.core.PApplet;

public class Lab_04_ColorBars extends PApplet {

    public void settings() {
        size(800, 500);
    }

    int squareSize = 40;
    int sectorSize;

    public void draw() {
        drawSquare();
    }

    void drawSquare() {
        selectSquareColorBySector();
        noStroke();
        rect(mouseX, mouseY, squareSize, squareSize);
    }

    void selectSquareColorBySector() {
        sectorSize = width / 8;
        boolean isOnFirstSector = mouseX < sectorSize;
        boolean isOnSecondSector = mouseX > sectorSize && mouseX < 2 * sectorSize;
        boolean isOnThirdSector = mouseX > 2 * sectorSize && mouseX < 3 * sectorSize;
        boolean isOnFourthSector = mouseX > 3 * sectorSize && mouseX < 4 * sectorSize;
        boolean isOnFifthSector = mouseX > 4 * sectorSize && mouseX < 5 * sectorSize;
        boolean isOnSixthSector = mouseX > 5 * sectorSize && mouseX < 6 * sectorSize;
        boolean isOnSeventhSector = mouseX > 6 * sectorSize && mouseX < width - sectorSize;
        boolean isOnEightSector = mouseX > width - sectorSize && mouseX < width;

        if (isOnFirstSector)
            fill(255, 255, 255);
        else if (isOnSecondSector)
            fill(255, 255, 0);
        else if (isOnThirdSector)
            fill(0, 255, 255);
        else if (isOnFourthSector)
            fill(0, 128, 0);
        else if (isOnFifthSector)
            fill(255,0,255);
        else if (isOnSixthSector)
            fill(255, 0, 0);
        else if (isOnSeventhSector)
            fill(0, 0, 255);
        else if (isOnEightSector)
            fill(0, 0, 0);
    }
}
