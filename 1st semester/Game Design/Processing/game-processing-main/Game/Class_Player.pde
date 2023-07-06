public class Player {
  private int x;
  private int y;
  private String name;
  private int score;
  private int hp;
  private boolean isAlive;
  private PImage sprite;
  
  private final int SPEED = 15;
  
  public Player(String name) {
    this.name = name;
    this.isAlive = true;
    this.score = 0;
    this.hp = 5;
  }
  
  public Player(String name, PImage sprite) {
    this.name = name;
    this.sprite = sprite;
    this.isAlive = true;
    this.score = 0;
    this.hp = 5;
    this.x = width / 2 - sprite.width / 2;
    this.y = height - 200;
  }

  public int getX() {
    return this.x;
  }

  public int getY() {
    return this.y;
  }
  
  public String getName() {
    return this.name;
  }
  
  public int getScore() {
    return this.score;
  }
  
  public void setScore(int score) {
    this.score = score;
  }
  
  public int getHp() {
    return this.hp;
  }

  public PImage getSprite() {
    return this.sprite;
  }
  
  public void drawPlayer() {
    image(this.sprite, x, y);
  }
  
  public void moveDown() {
    this.y += SPEED;
  }
  
  public void moveUp() {
    this.y -= SPEED;
  }
  
  public void moveLeft() {
    this.x -= SPEED;
  }
  
  
  public void moveRight() {
    this.x += SPEED;
  }
  
  public void getHit() {
    hp -= 1;
  }
  
  public void attack() {
    blasters.add(new Blaster());
  }
  
  public void die() {
    this.isAlive = false;
  }
}
