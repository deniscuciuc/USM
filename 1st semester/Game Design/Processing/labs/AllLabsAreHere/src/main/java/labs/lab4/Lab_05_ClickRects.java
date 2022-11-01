package labs.lab4;

import processing.core.PApplet;

public class Lab_05_ClickRects extends PApplet {

    private enum Scene {
        MENU, GAME, GAME_OVER
    }

    private enum Color {
        GREEN, RED
    }


    public void settings() {
        size(900, 300);
    }

    Scene currentScene = Scene.MENU;
    int hitsCounter = 0;
    int missedCounter = 0;
    int pauseCounter = 0;
    int[] targetFillRgb = {255, 255, 255};
    final int targetSize = 20;
    int targetXPos = (int) random(30, width - 30);
    int targetYPos = (int) random(30, height - 10);


    public void draw() {
        background(0, 0, 0);
        selectScene();
    }

    void selectScene() {
        switch (currentScene) {
            case MENU:
                openMenu();
                break;
            case GAME:
                startGame();
                break;
            case GAME_OVER:
                endGame();
                break;
        }
    }

    void openMenu() {
        displayWelcomeText();
    }

    void startGame() {
        displayScore();
        verifyIfNeedToChangePosition();
        drawTarget();
    }

    void endGame() {
        displayGameOverText();
    }

    void displayWelcomeText() {
        textSize(25);
        text("Click to start", width / 2.4f, height / 2f);
    }

    void displayScore() {
        String score = String.format("Hits : %d     Missed : %d", hitsCounter, missedCounter);
        textSize(21);
        text(score, width / 2.5f, 20);
    }

    void verifyIfNeedToChangePosition() {
        if (pauseCounter >= 120) {
            targetXPos = (int) random(30, width - 30);
            targetYPos = (int) random(30, height - 10);
            pauseCounter = 0;
        }
    }

    void drawTarget() {
        fill(targetFillRgb[0], targetFillRgb[1], targetFillRgb[2]);
        rect(targetXPos, targetYPos, targetSize, targetSize);
        pauseCounter++;
    }


    public void mousePressed() {
        if (currentScene == Scene.MENU) {
            currentScene = Scene.GAME;
        } else {
            boolean mouseXIsOnTarget = mouseX >= targetXPos && mouseX <= targetXPos + targetSize;
            boolean mouseYIsOnTarget = mouseY >= targetYPos && mouseY <= targetYPos + targetSize;
            boolean targetWasHit = mouseXIsOnTarget && mouseYIsOnTarget;
            if (targetWasHit) {
                hitsCounter++;
                changeTargetColor(Color.GREEN);
            } else {
                missedCounter++;
                changeTargetColor(Color.RED);
            }

            boolean missedHitsLimitReached = missedCounter >= 3;
            if (missedHitsLimitReached) {
                currentScene = Scene.GAME_OVER;
            }
        }
    }

    void changeTargetColor(Color color) {
        switch (color) {
            case GREEN:
                targetFillRgb[0] = 0;
                targetFillRgb[1] = 255;
                targetFillRgb[2] = 0;
                break;
            case RED:
                targetFillRgb[0] = 255;
                targetFillRgb[1] = 0;
                targetFillRgb[2] = 0;
                break;
        }
    }

    void displayGameOverText() {
        String score = String.format("Your score was: %d hit(s)", hitsCounter);
        textSize(50);
        text("Game Over", width / 2.7f, height / 2f);
        textSize(21);
        text(score, width / 2.6f, height / 3f);
    }
}
