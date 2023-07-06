color mainButtonsColor = color(102, 186, 186);
color mainTextColor = color(57, 89, 146);


void drawMainPage() {
  final int buttonMiddleXPos = width / 2 - 120;
  setMainMenuBackground();
  drawMenuNavigationButton(buttonMiddleXPos, 200, "PLAY", MenuPage.PREPLAY, 270, 70, mainButtonsColor, mainTextColor, 32, 80);
  drawMenuNavigationButton(buttonMiddleXPos, 300, "RECORDS", MenuPage.RECORDS, 270, 70, mainButtonsColor, mainTextColor, 32, 45);
  drawMenuNavigationButton(buttonMiddleXPos, 400, "HELP", MenuPage.HELP, 270, 70, mainButtonsColor, mainTextColor, 32, 80);
  drawMenuNavigationButton(buttonMiddleXPos, 500, "EXIT", MenuPage.EXIT_GAME, 270, 70, mainButtonsColor, mainTextColor, 32, 80);
}

void setMainMenuBackground() {
  PImage background = loadImage("mainMenuBackground.png");
  background(background);
}

void switchMenuPageByPressedButton(int x, int y, int buttonWidth, int buttonHeight, MenuPage goToPage) {
  if (buttonWasPressed(x, y, buttonWidth, buttonHeight)) {
      switch (goToPage) {
        case MAIN:
            currentMenuPage = MenuPage.MAIN;
            break;
        case PREPLAY:
            currentMenuPage = MenuPage.PREPLAY;
            break;
        case RECORDS:
            currentMenuPage = MenuPage.RECORDS;
            break;
        case HELP:
            currentMenuPage = MenuPage.HELP;
            break; 
        case EXIT_GAME:
            currentMenuPage = MenuPage.EXIT_GAME;
            break;
      }
  }
}
