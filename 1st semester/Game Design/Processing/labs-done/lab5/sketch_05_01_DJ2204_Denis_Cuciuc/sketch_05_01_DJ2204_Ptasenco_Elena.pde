    /* Digit to image */

    PImage digits;
    PImage returnedDigit;
    final int inputRectPosX = 50;
    final int inputRectPosY = 50;
    final int inputRectWidth = 75;
    final int inputRectHeight = 20;
    int enteredDigit;
    
    void settings() {
        size(400, 400);
    }

    void setup() {
        digits = loadImage("Digits.png");
    }

    void draw() {
        background(255, 255, 255);
        String condition = "Press any numeric key and hit enter: ";
        fill(0, 0, 0);
        textSize(12);
        text(condition, inputRectPosX, 15);
        
        fill(255, 255, 255);
        rect(inputRectPosX, inputRectPosY, inputRectWidth, inputRectHeight);

        fill(0, 0, 0);
        text(enteredDigit, inputRectPosX + 5, inputRectPosY + 15);

        if (returnedDigit != null)
            drawEnteredDigit();
    }

    void keyPressed() {
        switch (key) {
            case ENTER:
                returnedDigit = getDigitFromImage();
                return;
            case BACKSPACE:
                returnedDigit = null;
                return;
        }

        int normalKeyCode = keyCode - 48;
        enteredDigit = normalKeyCode;
    }

    void drawEnteredDigit() {
        image(returnedDigit, inputRectPosX, inputRectPosY + 50);
    }

    PImage getDigitFromImage() {
        int digitWidth = 32;
        int start = enteredDigit * digitWidth;

        return digits.get(start, 0, digitWidth, digits.height);
    }
