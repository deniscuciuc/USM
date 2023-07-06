color goBackRecordsButtonColor = color(169, 129, 200);

void drawRecordsPage() {
  setRecordsBackground();

  final int buttonMiddleXPos = width / 2 - 100;
  fill(255);
  textSize(26);
  drawMenuNavigationButton(25, 25, "GO BACK", MenuPage.MAIN, 200, 70, goBackRecordsButtonColor, color(255), 30, 10);
  displayTop10Players();
}

void displayTop10Players() {
  ArrayList<Player> players = loadPlayersRecords();

  int x = 420;
  int y = 275;

  textSize(27);
  fill(255);
  for (int i = 0, n = players.size(); i < n; i++) {
    Player player = players.get(i);

    if (i >= 10) continue;

    text(player.getName(), x, y + i * 20);
    text(player.getScore(), x + 515, y + i * 20);
    y += 27;
  }
}

void setRecordsBackground() {
  PImage bg = loadImage("backgroundRecords.jpg");
  background(bg);
}
