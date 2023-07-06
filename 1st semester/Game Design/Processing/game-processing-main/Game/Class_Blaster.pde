public class Blaster {
    private int x;
    private int y;
    private PImage sprite;

    private final int SPEED = 14;

    public Blaster() {
        this.x = player.getX() + player.getSprite().width / 2;
        this.y = player.getY();
        this.sprite = loadImage("blast.png");
    }


    public void drawBlaster() {
        image(sprite, x, y);
        this.y -= SPEED;
    }

    public boolean isAwayFromWindow() {
        return this.y - 15 <= 0;
    }
}
