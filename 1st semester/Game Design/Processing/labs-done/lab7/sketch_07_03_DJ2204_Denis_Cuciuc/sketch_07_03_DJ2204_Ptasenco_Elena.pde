/* Money converter */

StringBuilder textBoxValue = new StringBuilder("");
int value;
float buttonsWidth = 100, buttonsHeight = 25, convertButtonPosX = 30 + buttonsWidth, convertButtonPosY = 40;
String answer = "";

void settings() {
  size(600, 300);
}

void draw() {
  background(255);
  displayInstruction();
  drawTextBox();
  drawConvertButton();
  drawAnswer();
}

void mousePressed() {
  if (mouseButton == LEFT && isPointInButton()) {
    if (textBoxValue.length() == 0) return;
    float convertedValueInDollar = value * 0.99;
    answer = String.format("The amount € %d in dollar is : $ %f", value, convertedValueInDollar);
  }
}

void keyPressed() {
  if (keyCode == BACKSPACE) {
    if (textBoxValue.length() == 0) return;
    
    textBoxValue.deleteCharAt(textBoxValue.length() - 1);
    return;
  }
  textBoxValue.append(key);
}

void displayInstruction() {
  String instruction = "Fill in an amount an hit the 'CONVERT' button";
  fill(0);
  textSize(13);
  text(instruction, 10, 20);
}

void drawTextBox() {
  stroke(0);
  noFill();
  rect(10, 40, buttonsWidth, buttonsHeight);
  
  fill(0);
  textSize(13);
  text(textBoxValue.toString(), 15, 60);
}

void drawConvertButton() {
  stroke(0);
  fill(255, 0, 0);
  rect(convertButtonPosX, convertButtonPosY, buttonsWidth, buttonsHeight);
  
  fill(255);
  textSize(14);
  text("CONVERT", 53 + buttonsWidth, 58);
}

void drawAnswer() {
  fill(255, 0, 0);
  textSize(14);
  text(answer, 10, 85);
}

boolean isPointInButton() {
  boolean isInX = mouseX >= convertButtonPosX && mouseX <= convertButtonPosX + buttonsWidth;
  boolean isInY = mouseY >= convertButtonPosY && mouseY <= convertButtonPosY + buttonsHeight;
  return isInX && isInY;
}

void convertFromStringToInt() {
  if (textBoxValue.toString() == "") return;
  value = Integer.parseInt(textBoxValue.toString());
}
