/* Match Game */

final int MATCH_SIZE = 16;

class Match {
  int id;
  int x;
  int y;
  
  Match(int id, int x, int y) {
    this.id = id;
    this.x = x;
    this.y = y;
  }
  
  void drawMatch() {
    System.out.println("List : " + matches.toString());
    fill(255, 255, 0);
    rect(this.x + this.id * MATCH_SIZE, 60, 13, 60);
    fill(255,0,0);
    beginShape();
    vertex(10 + this.id * MATCH_SIZE, 60);
    bezierVertex(10 + this.id * MATCH_SIZE, 60, 7 + this.id * 16, 53, 10 + this.id * 16, 48);
    bezierVertex(10 + this.id * MATCH_SIZE, 48, 15 + this.id * 16, 40, 20 + this.id * 16,48);
    bezierVertex(20 + this.id * MATCH_SIZE, 48, 23 + this.id * 16, 53, 20 + this.id * 16, 60);
    endShape();
  }
  
  String toString() {
    return "Id : " + this.id;
  }
}

final int NUMBER_OF_MATCHES = 21;
ArrayList<Match> matches;


void settings() {
  size(600, 500);
}

void setup() {
  background(255);
  fillMatches();
}

void draw() {
  displayRules();
  drawMatches();
}

void keyPressed() {
  int pressedNumber = keyCode - 48;
  System.out.println(pressedNumber);
  
  if (pressedNumber >= 0 && pressedNumber <= 3) {
    removeMatches(pressedNumber);
    removeMatches((int) random(1, 3));
  }
}

void displayRules() {
  String instruction = "Push 1, 2 or 3 to take matches from the pile";
  noStroke();
  fill(0);
  textSize(19);
  text(instruction, 15, 20);
}

void drawMatches() {
  System.out.println("List : " + matches.toString());
  for (Match match : matches) {
    match.drawMatch();
  }
}

void removeMatches(int numberOf) {
  if (numberOf > matches.size()) numberOf = matches.size();
  for (int i = 0; i < numberOf; i++) {
    int randomMatch = (int) random(i, matches.size());
    matches.remove(randomMatch);
  }
}

void fillMatches() {
  final int POS_Y = 40;
  int posX = 9;
  
  matches = new ArrayList<>();
  for (int i = 0; i < NUMBER_OF_MATCHES; i++) {
    matches.add(new Match(i, posX, POS_Y));
  }
  System.out.println("List : " + matches.toString());
}
