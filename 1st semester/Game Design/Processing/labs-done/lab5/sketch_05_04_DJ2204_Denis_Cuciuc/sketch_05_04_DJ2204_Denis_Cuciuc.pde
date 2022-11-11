    /* Text */
    
    int gapY = 15;

    public void settings() {
        size(300, 300);
    }

    public void draw() {
        drawEvenNumbersUsingForLoop(1, 30);
        drawEvenNumbersUsingWhileLoop(1, 30);
        drawEvenNumbersUsingDoWhileLoop(1, 30);
        reverseAndDrawEvenNumbers(1, 30);
    }

    void drawEvenNumbersUsingForLoop(int from, int to) {
        int counter = 0;
        int posX = 10;

        fill(0);
        for (int i = from; i <= to; i++) {
            if (i % 2 == 0) {
                counter++;
                text(i, posX, gapY * counter);
            }
        }
    }

    void drawEvenNumbersUsingWhileLoop(int from, int to) {
        int posX = 30;
        int counter = 0;

        while (from <= to) {
            if (from % 2 == 0) {
                counter++;
                text(from, posX, gapY * counter);
            }
            from++;
        }
    }

    void drawEvenNumbersUsingDoWhileLoop(int from, int to) {
        int posX = 60;
        int counter = 0;

        do {
            if (from % 2 == 0) {
                counter++;
                text(from, posX, gapY * counter);
            }
            from++;
        } while (from <= to);
    }

    void reverseAndDrawEvenNumbers(int from, int to) {
        int posX = 90;
        int counter = 0;

        for (int i = to; i > from; i--) {
            if (i % 2 == 0) {
                counter++;
                text(i, posX, gapY * counter);
            }
        }
    }
