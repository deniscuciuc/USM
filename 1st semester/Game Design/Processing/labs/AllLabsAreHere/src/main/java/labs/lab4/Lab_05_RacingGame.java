package labs.lab4;

import processing.core.PApplet;

public class Lab_05_RacingGame extends PApplet {

    enum Color {YELLOW, BLUE}

    int firstCarPosition, secondCarPosition;
    int counter = 3;
    int firstCarSpeed = (int) random(2, 6);
    int secondCarSpeed = (int) random(2, 6);


    public void settings() {
        size(700, 200);
    }

    public void draw() {
        background(0);
        frameRate(1);
        keyPressed();
        drawRoad();
        drawCar(Color.YELLOW, secondCarPosition, 50, 20);
        drawCar(Color.BLUE, firstCarPosition, 150, 20);
        drawNumberOfCar();
        textAndBalance();

        frameRate(60);
        verifyWhoWins();
    }

    public void keyPressed() {
        if (keyCode == LEFT)
            firstCarPosition -= firstCarSpeed;
        if ((key == 'a') || (key == 'q'))
            secondCarPosition -= secondCarSpeed;
        if (keyCode == RIGHT)
            firstCarPosition += firstCarSpeed;
        if (key == 'd')
            secondCarPosition += secondCarSpeed;
    }

    void drawRoad() {
        stroke(255, 191, 0);
        line(0, height / 2f - 10, width, height / 2f - 10);
        stroke(30, 144, 255);
        line(0, height - 10, width, height - 10);
    }

    void drawCar(Color color, int carPositionX, int carPositionY, int wheelSize) {
        switch (color) {
            case YELLOW:
                fill(255, 255, 100);
                break;
            case BLUE:
                fill(100, 150, 255);
                break;
        }
        noStroke();
        beginShape();
        vertex(carPositionX + 10, carPositionY);
        vertex(carPositionX + 50, carPositionY);
        vertex(carPositionX + 90, carPositionY + 30);
        vertex(carPositionX + 10, carPositionY + 30);
        endShape();
        ellipse(carPositionX + 20, carPositionY + 30, wheelSize, wheelSize);
        ellipse(carPositionX + 60, carPositionY + 30, wheelSize, wheelSize);
    }

    void drawNumberOfCar() {
        fill(0);
        textSize(16);
        text("1", firstCarPosition + 20, 170);
        text("2", secondCarPosition + 20, 70);
    }

    void textAndBalance() {
        if (counter >= 0) {
            fill(255);
            textSize(20);
            if (counter > 0) {
                text(str(counter), width / 2f - 5, 20);
            } else {
                fill(255);
                text("GO!!", width / 2f - 7, 20);
            }
        }

        if (counter >= 1) counter--;

        if (firstCarSpeed == secondCarSpeed) {
            if (secondCarSpeed == 2)
                secondCarSpeed = (int) random(3, 6);

            firstCarSpeed = (int) random(2, secondCarSpeed - 1);
        }
    }

    void verifyWhoWins() {
        if (secondCarPosition + 90 > width) {
            fill(255);
            text("The yellow car wins!", width / 2f, height / 2f + 10);
            noLoop();
        }

        if (firstCarPosition + 90 > width) {
            fill(255);
            text("The blue car wins!", width / 2f, height / 2f + 10);
            noLoop();
        }
    }
}
