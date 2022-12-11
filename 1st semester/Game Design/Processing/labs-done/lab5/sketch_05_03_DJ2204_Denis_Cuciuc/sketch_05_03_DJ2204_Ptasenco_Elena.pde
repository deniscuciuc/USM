    /* Typing Master */
    
    char letter;
    color randomColorRGB;
    boolean isGameOver = false;
    int hits = 0;
    int misses = 0;

    void settings() {
        size(500, 300);
    }

    void setup() {
        generateNewValueAndColor();
    }

    void draw() {
        if (misses >= 3) {
            endGame();
        } else {
            drawLetterInCircle();
        }

        drawScoreBar();
    }

    void drawLetterInCircle() {
        fill(randomColorRGB);
        ellipse(width / 2f, height / 2f, 40, 40);

        fill(0);
        textSize(14);
        text(
                letter,
                width / 2f - 3,
                height / 2f + 5
        );
    }

    public void keyPressed() {
        if (key == letter) {
            hits++;
        } else {
            misses++;
        }
        letter = (char) random(97, 123);
    }

    void drawScoreBar() {
        fill(255);
        rect(0, height - 50, width, 50);

        String score = String.format("HITS : %d  /  MISSES : %d", hits, misses);
        fill(0);
        textSize(21);
        text(score, 150, height - 20);
    }

    void endGame() {
        background(220, 20, 60);
        fill(0);
        textSize(28);
        text("GAME OVER", width / 3f, height / 2f);
    }

    void generateNewValueAndColor() {
        randomColorRGB = color(random(0,255),random(0,255),random(0,255));
        letter = (char) random(97, 123);
    }
