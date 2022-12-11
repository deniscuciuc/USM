    /* Button */
    
    int[] rectFillRgb = {128, 128, 128};
    final int buttonWidth = 400;
    final int buttonHeight = 100;
    final int buttonXPos = width / 3;
    final int buttonYPos = height / 2;
    
    void settings() {
        size(600, 400);
    }

    void draw() {
        boolean mouseXIsOnButton = mouseX >= buttonXPos && mouseX <= buttonXPos + buttonWidth;
        boolean mouseYIsOnButton = mouseY >= buttonYPos && mouseY <= buttonYPos + buttonHeight;
        if (mousePressed && mouseXIsOnButton && mouseYIsOnButton) {
            rectFillRgb[0] = (int) random(0, 255);
            rectFillRgb[1] = (int) random(0, 255);
            rectFillRgb[2] = (int) random(0, 255);
        }
        fill(rectFillRgb[0], rectFillRgb[1], rectFillRgb[2]);
        rect(buttonXPos, buttonYPos, buttonWidth, buttonHeight);
    }
