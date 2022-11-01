private int frameCounter;

    public void draw() {
        frameRate(1);

        if (frameCounter >= 5) {
            frameCounter = 0;
            println("Counter for frame ticks max value is 5! \nReseting variable... ");
        }

        println("Frame tick: " + frameCounter);
        frameCounter++;
    }
