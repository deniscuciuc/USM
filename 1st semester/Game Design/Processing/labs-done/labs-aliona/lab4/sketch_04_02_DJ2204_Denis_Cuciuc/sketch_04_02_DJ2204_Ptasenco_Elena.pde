    /* Bouncing Circle */

    int size = 50;
    int positionX = width / 2;
    int positionY = height / 2;
    int displacementX = 2;
    int displacementY = 2;
    int radius = 30;

     void settings() {
        size(842, 480);
      }

    void draw() {
        background(255);
        ellipse(positionX, positionY, size, size);
        boolean topWall = positionY - radius <= 0;
        boolean bottomWall = positionY + radius >= height;
        boolean rightWall = positionX + radius >= width;
        boolean leftWall = positionX - radius <= 0;
        boolean doesTouchWall = topWall || bottomWall || rightWall || leftWall;

        if (doesTouchWall)
            changeToRandomColor();

        if (leftWall || rightWall)
            displacementX *= -1;
        if (topWall || bottomWall)
            displacementY *= -1;

        positionX += displacementX;
        positionY += displacementY;
    }

    void changeToRandomColor() {
        fill(
                random(0, 255),
                random(0, 255),
                random(0, 255)
        );
    }
