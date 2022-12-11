    /* Mouse position */

    boolean isMouseOnTopLeftSector;
    boolean isMouseOnTopRightSector;
    boolean isMouseOnBottomLeftSector;
    boolean isMouseOnBottomRightSector;

    int circleSize = 40;
    
    void settings() {
        size(600, 600);
    }

    void draw() {
        float middleX = width / 2f;
        float middleY = height / 2f;

        isMouseOnTopLeftSector = mouseX <= middleX && mouseY < middleY;
        isMouseOnTopRightSector = mouseX >= middleX && mouseY < middleY;
        isMouseOnBottomLeftSector = mouseX <= middleX && mouseY > middleY;
        isMouseOnBottomRightSector = mouseX >= middleX && mouseY > middleY;

        if (isMouseOnTopLeftSector) fill(255, 99, 71);
        else if (isMouseOnTopRightSector) fill(34, 139, 34);
        else if (isMouseOnBottomLeftSector) fill(148, 0, 211);
        else if (isMouseOnBottomRightSector) fill(255, 255, 255);
        ellipse(mouseX, mouseY, circleSize, circleSize);
    }
