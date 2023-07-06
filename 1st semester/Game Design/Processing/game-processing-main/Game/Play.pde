ArrayList<DroppingItem> droppingItems = new ArrayList<>();
ArrayList<Blaster> blasters = new ArrayList<>();
Player player;

PImage cometTexture;

int droppingItemsCurrentSpeed = 4;
int maxDroppingItems = 4;
int droppingItemsCurrentHp = 1;

void createPlayer(String playerName) {
  player = new Player(playerName, loadImage("rocket.png"));
}

void playGame() {
  drawMap();
  drawUI();
  if (droppingItems.size() > 0) drawDroppingItems();
  if (blasters.size() > 0) drawBlasters();
  player.drawPlayer();
  generateDroppingItems();
  changeCurrentLevelByTime();
}

void generateDroppingItems() {
  if (droppingItems.size() < maxDroppingItems) {
    selectRandomCometTexture();
    droppingItems.add(new DroppingItem(droppingItemsCurrentSpeed, droppingItemsCurrentHp, cometTexture));
  }
}

void selectRandomCometTexture() {
  int randomCometNumber = (int) random(1, 3);
  
  switch (randomCometNumber) {
    case 1:
        cometTexture = loadImage("cometRed.png");
        break;
    case 2:
        cometTexture = loadImage("cometBlue.png");
        break;    
  }
}

void changeCurrentLevelByTime() {
  if (currentSecond >= 60) {
    droppingItemsCurrentSpeed = 6;
  } else if (currentSecond >= 120) {
    droppingItemsCurrentHp = 2;
  } else if (currentSecond >= 180) {
    maxDroppingItems = 6;
  } else if (currentSecond >= 240) {
    maxDroppingItems = 4;
    droppingItemsCurrentHp = 1;
  }
}

void drawDroppingItems() {
  for (int i = 0; i < droppingItems.size(); i++) {
    droppingItems.get(i).drawMovingDroppingItem();

    if (droppingItems.get(i).isAwayFromWindow()) {
      droppingItems.remove(i);
    }

    if (droppingItems.get(i).playerWasHit(player)) {
      player.getHit();
      droppingItems.remove(i);
    }
  }
}

void drawBlasters() {
  for (int i = 0; i < blasters.size(); i++) {
    blasters.get(i).drawBlaster();

    if (blasters.get(i).isAwayFromWindow()) {
      blasters.remove(i);
    }
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    player.moveLeft();
  } else if (keyCode == RIGHT) {
    player.moveRight();
  }

  if (keyCode == UP) {
    player.moveUp();
  } else if (keyCode == DOWN) {
    player.moveDown();
  }

  if (keyCode == TAB) {
    player.attack();
  }

  if (keyCode == DELETE) {
    player.getHit();
  }
}
