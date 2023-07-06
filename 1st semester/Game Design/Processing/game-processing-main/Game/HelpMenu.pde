
void drawHelpPage() {
  final int buttonMiddleXPos = width / 2 - 100;
  textSize(26);
  text("HELP", buttonMiddleXPos + 30, 130);
  drawMenuNavigationButton(25, 25, "GO BACK", MenuPage.MAIN, 200, 70, color(0), color(255), 27, 30);
}
