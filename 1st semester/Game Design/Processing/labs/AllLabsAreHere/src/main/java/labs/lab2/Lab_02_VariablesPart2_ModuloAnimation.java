package labs.lab2;

import processing.core.PApplet;

public class Lab_02_VariablesPart2_ModuloAnimation extends PApplet {

    private int frameCounter;

    public void draw() {
        frameRate(1);

        if (frameCounter >= 5) {
            frameCounter = 0;
            println("Counter for frame ticks max value is 5! Now counter is " + frameCounter);
        }

        println("Frame tick: " + frameCounter);
        frameCounter++;
    }
}
