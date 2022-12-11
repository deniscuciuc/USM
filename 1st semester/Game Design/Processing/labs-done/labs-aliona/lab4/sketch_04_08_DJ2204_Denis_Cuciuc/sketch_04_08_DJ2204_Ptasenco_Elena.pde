    /* Guess number */
    
    int answer = (int) random(0, 9);
    String hit = "";
    String winText = "";
    int counter = 0;
    boolean gameWon = false;

    void settings() {
        size(900, 300);
    }

    void draw() {
        background(0, 0, 0);
        displayGameConditionText();
        text(hit, width / 2.4f, height / 2f);
        text(winText, width / 3.4f, height / 2.f);
    }

    void displayGameConditionText() {
        textSize(19);
        text("Guess a number from 0 to 9", width / 3f, 25);
    }

    void keyPressed() {
        if (gameWon) {
            restartGame();
        } else {
            int normalKeyCode = keyCode - 48;
            if (normalKeyCode > answer) {
                hit = "Try lower";
                counter++;
            } else if (normalKeyCode < answer) {
                hit = "Try higher";
                counter++;
            } else {
                winText = String.format("You guessed the number after %d tries \n\n     " +
                        "Click any key to restart game", counter);
                hit = "";
                gameWon = true;
            }
        }
    }

    void restartGame() {
        counter = 0;
        answer = (int) random(0, 9);
        winText = "";
        gameWon = false;
    }
