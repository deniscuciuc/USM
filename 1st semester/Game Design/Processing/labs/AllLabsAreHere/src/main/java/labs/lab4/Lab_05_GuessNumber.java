package labs.lab4;

import processing.core.PApplet;

public class Lab_05_GuessNumber extends PApplet {

    public void settings() {
        size(900, 300);
    }

    int answer = (int) random(0, 9);
    String hit = "";
    String winText = "";
    int counter = 0;

    public void draw() {
        background(0, 0, 0);
        displayGameConditionText();
        displayHit();
        displayWinText();
        System.out.println("Answer: " + answer);
        System.out.println("Key pressed: " + key);
    }

    void displayGameConditionText() {
        textSize(19);
        text("Guess a number from 0 to 9", width / 3f, 25);
    }

    public void keyPressed() {
        if (key > answer) {
            hit = "Try lower";
            counter++;
        } else if (key < answer) {
            hit = "Try higher";
            counter++;
        } else {
            winText = String.format("You guessed the number after %d tries", counter);
        }
    }

    void displayHit() {
        text(hit, width / 2.4f, height / 2f);
    }

    void displayWinText() {
        text(winText, width / 2.4f, height / 2.f);
    }
}
