    /* Concentric squares */
    
    final int MAX_SQUARES = 8;
    int squaresCounter = 0;

    public void settings() {
        size(200, 200);
    }

    public void draw() {
        rectMode(CENTER);
        while (squaresCounter <= MAX_SQUARES) {
            drawSquare(100, 100, 15 * squaresCounter);
            squaresCounter++;
        }
    }

    void drawSquare(int x1, int y1, int size) {
        noFill();
        rect(x1, y1, size, size);
    }
