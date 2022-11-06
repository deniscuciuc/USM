package labs.lab4.pacman;

public class Pacman {

    private int hp;
    private int width = 75;
    private int height = 75;
    private int radian;
    private int speed;
    private int positionX;
    private int positionY;
    private boolean isAlive;

    public Pacman() {
        this.hp = 3;
        this.radian = 45;
        this.isAlive = true;
        this.positionX = 200;
        this.positionY = 500;
    }

    public int getHp() {
        return hp;
    }

    public void setHp(int hp) {
        this.hp = hp;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getRadian() {
        return radian;
    }

    public void setRadian(int radian) {
        this.radian = radian;
    }

    public int getPositionX() {
        return positionX;
    }

    public void setPositionX(int positionX) {
        this.positionX = positionX;
    }

    public int getPositionY() {
        return positionY;
    }

    public void setPositionY(int positionY) {
        this.positionY = positionY;
    }

    public boolean isAlive() {
        return isAlive;
    }

    public void setAlive(boolean alive) {
        isAlive = alive;
    }

    public void moveUp() {
        this.positionY -= 1;
    }

    public void moveDown() {
        this.positionX += 1;
    }

    public void moveLeft() {
        this.positionX += 1;
    }

    public void moveRight() {
        this.positionX -= 1;
    }

    public void hitPacman() {
        this.hp -= 1;
    }

    public void killPacman() {
        this.hp = 0;
        this.isAlive = false;
    }

    public void revivePacman() {
        this.hp = 3;
        this.isAlive = true;
    }
}
