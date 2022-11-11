    /* String functions */
    
    public void settings() {
        size(500, 400);
    }

    String typing = "";

    StringBuilder typingBuilder = new StringBuilder(typing);
    String capitals = "";
    char lastCharacter;
    char middleCharacter;
    boolean textMatch;

    String[] buttonsTitle = {"Clear", "Capitals", "Last Character", "Middle character", "Match?"};
    int buttonPosX = 120 + 150;
    int topGap = 100;
    int gapBetweenButtons = 30;
    int buttonHeight = 25;
    int buttonWidth = 125;

    public void draw() {
        drawInputField();
        drawButtons();
        drawResults();
    }

    public void keyPressed() {
        if (key != '\n') {
            typingBuilder.append(key);
        }
    }

    public void mousePressed() {
        boolean isPressedButtonX = mouseX >= buttonPosX && mouseX <= buttonPosX + buttonWidth;
        boolean isPressedClearButton = isPressedButtonX && mouseY >= topGap && mouseY <= topGap + buttonHeight;
        boolean isPressedCapitalsButton = isPressedButtonX
                && mouseY >= topGap + buttonHeight + gapBetweenButtons
                && mouseY <= topGap + buttonHeight * 2 + gapBetweenButtons;
        boolean isPressedLastCharacterButton = isPressedButtonX
                && mouseY >= topGap + buttonHeight * 3 + gapBetweenButtons
                && mouseY <= topGap + buttonHeight * 4 + gapBetweenButtons * 2;
        boolean isPressedMiddleCharacterButton = isPressedButtonX
                && mouseY >= topGap + buttonHeight * 4 + gapBetweenButtons
                && mouseY <= topGap + buttonHeight * 5 + gapBetweenButtons * 3;
        boolean isPressedMatchButton = isPressedButtonX
                && mouseY >= topGap + buttonHeight * 5 + gapBetweenButtons
                && mouseY <= topGap + buttonHeight * 6 + gapBetweenButtons * 4;

        if (isPressedClearButton)
            clearTextBox();
        else if (isPressedCapitalsButton)
            capitalField();
        else if (isPressedLastCharacterButton)
            getLastCharacter();
        else if (isPressedMiddleCharacterButton)
            getMiddleCharacter();
        else if (isPressedMatchButton)
            doesTextMatch("DAE");
    }

    void drawInputField() {
        int fieldPosX = 100;
        int fieldPosY = 100;

        fill(255, 255, 255);
        rect(fieldPosX, fieldPosY, 150, 25);

        fill(0, 0, 0);
        textSize(14);
        text(typingBuilder.toString(), 100 + 5, fieldPosY + 20, 50);
    }

    void drawResults() {
        fill(0);
        textSize(14);
        text(capitals, 100, 170);
        text(lastCharacter, 100, 220);
        text(middleCharacter, 100, 270);
    }

    void drawButtons() {
        for (int i = 0; i < buttonsTitle.length; i++) {
            int newButtonPosY = topGap + buttonHeight * i + gapBetweenButtons * i;

            fill(255);
            rect(buttonPosX, newButtonPosY, buttonWidth, buttonHeight);

            fill(0);
            textSize(14);
            text(buttonsTitle[i], buttonPosX + 5, newButtonPosY + 20, 50);
        }
    }

    void clearTextBox() {
        typingBuilder.delete(0, typingBuilder.capacity());
    }

    void capitalField() {
        capitals = typingBuilder.toString().toUpperCase();
    }

    void getLastCharacter() {
        lastCharacter = typingBuilder.charAt(typingBuilder.length() - 1);
    }

    void getMiddleCharacter() {
        middleCharacter = typingBuilder.charAt(typingBuilder.length() / 2);
    }

    void doesTextMatch(String text) {
        textMatch = typingBuilder.toString().contains(text);

        String matchResult = textMatch ? "Words match!" : "Words not match!";
        text(matchResult, 100, 320);
    }
