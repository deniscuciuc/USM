package labs.lab4.pacman;

import processing.core.PApplet;

public class Game extends PApplet {

    private final Map map;
    private final Pacman pacman;

    public Game() {
        this.map = new Map();
        this.pacman = new Pacman();
    }

    @Override
    public void settings() {
        size(1400, 1000);
    }

    @Override
    public void draw() {
        drawPacman();
    }

    private void drawPacman() {
        fill(255, 255, 0);
        arc(
                pacman.getPositionX(),
                pacman.getPositionY(),
                pacman.getWidth(),
                pacman.getHeight(),
                radians(pacman.getRadian()),
                radians(pacman.getRadian() + 270),
                PIE
        );
    }

    @Override
    public void keyPressed() {

    }
}
