    /* Concentric squares */
    
    final int MAX_SQUARES = 8;
    int squaresCounter = 0;

    void settings() {
        size(200, 200);
    }

    void draw() {
        rectMode(CENTER);
        while (squaresCounter <= MAX_SQUARES) {
            noFill();
            rect(100, 100, 15 * squaresCounter, 15 * squaresCounter);
            squaresCounter++;
        }
    }
