
enum MenuPage {
  MAIN, PREPLAY, RECORDS, HELP, EXIT_GAME
}

private MenuPage currentMenuPage = MenuPage.MAIN;


void loadMenu() {
  switch(currentMenuPage) {
    case MAIN:
        drawMainPage();
        break;
    case PREPLAY:
        drawPreplayPage();
        break;
    case RECORDS:
        drawRecordsPage();
        break;
    case HELP:
        drawHelpPage();
        break;
    case EXIT_GAME:
        exitGame();
        break;
  }
}

void exitGame() {
  exit();
}
