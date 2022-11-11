    /* Gradient */
    
    public void settings() {
        size(256 * 2, 50);
    }

    public void setup() {
        noLoop();
    }

    public void draw() {
        int endingColorPoint = 256;
        int x1 = 1, y1 = 0, x2 = 1, y2 = height;
        for (int i = 0; i < 256 * 2; i++) {
            if (i >= 256) {
                stroke(endingColorPoint);
                endingColorPoint--;
            } else {
                stroke(i);
            }

            line(x1 * i, y1, x2 * i, y2);
        }
    }
