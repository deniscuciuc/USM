/* Catch circles */

int misses = 0, hits = 0, alreadyPickedUp = 0;
int lastTime = 0;
int[] circlesRadius;
int randomRadius = 0;
int diameter = 0;
int randomPosX = 0;
int randomPosY = 0;

void settings() {
  size(700, 700, P3D);
}

void setup() {
  initCircleRadius();
}

void draw() {
  background(255);
  displayScore();
  drawMovingWithMouseCircles();
  generateCircle(2000);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    verifyIfCircleIsHit();
    verifyScore();
  }
}


void displayScore() {
  String score = String.format("Hits : %d  | Misses : %d  | Circles already picked up : %d", hits, misses, alreadyPickedUp);
  fill(0);
  textSize(14);
  text(score, 4, 20);
}

void drawMovingWithMouseCircles() {
  stroke(0);
  fill(255);
  for (int i = 0; i < circlesRadius.length; i++) {
    int diameter = circlesRadius[i] * 2;
    ellipse(mouseX, mouseY, diameter, diameter);
  }
}

void generateCircle(int pauseTime) {
    int gapX = 10, gapY = 50;
    int timeSinceLastCall = millis() - lastTime;
    
    if (timeSinceLastCall > pauseTime) {
      randomRadius = (int) random(10, 50);
      diameter = randomRadius * 2;
      randomPosX = (int) random(gapX + diameter, width - diameter - gapX);
      randomPosY = (int) random(gapY + diameter, height - diameter - gapY);
      timeSinceLastCall = millis() - lastTime;
      stroke(
        (int) random(0, 244),
        (int) random(0, 244),
        (int) random(0, 244)
      );
      fill(255);
      
      lastTime = millis();
    }
    ellipse(randomPosX, randomPosY, diameter, diameter);
}

void verifyIfCircleIsHit() {
  boolean circleWasHit = mouseX >= randomPosX - randomRadius
                         && mouseX <= randomPosX + randomRadius 
                         && mouseY >= randomPosY - randomRadius
                         && mouseY <= randomPosY + randomRadius;
  if (circleWasHit) {
    if (contains(randomRadius)) {
      alreadyPickedUp++;
    } else {
      addCircleRadius();
    }
    hideCircle();
    hits++;
  } else {
    misses++;
  }
}

void addCircleRadius() {
  circlesRadius = append(circlesRadius, randomRadius);
  sort(circlesRadius);
}

void hideCircle() {
   randomRadius = 0;
   diameter = 0;
}

void verifyScore() {
  if (hits >= 10) {
    winGame();
  } else if (misses >= 3) {
    loseGame("You missed 3 circles!");
  } else if (alreadyPickedUp >= 3) {
    loseGame("You have picked up 3 circles of the same size!");
  }
}

void winGame() {
  noLoop();
  background(0, 128, 0);
  
  fill(0);
  textSize(26);
  text("GAME WON!", width / 2 - 80, height / 2);
  
  textSize(19);
  text("You picked up " + hits + " circles!", width / 2 - 110, height / 2 + 30);
}

void loseGame(String cause) {
  noLoop();
  background(255, 0, 0);
  
  fill(0);
  textSize(26);
  text("GAME OVER!", width / 2 - 80, height / 2);
  
  textSize(19);
  text(cause, width / 2 - 90, height / 2 + 30);
}

boolean contains(int radius) {
  for (int i = 0; i < circlesRadius.length; i++) {
    if (circlesRadius[i] == radius) {
      return true;
    }
  }
  return false;
}

void initCircleRadius() {
  circlesRadius = new int[40];
  circlesRadius[0] = 10;
}
