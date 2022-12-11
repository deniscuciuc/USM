/* Functions return */

int firstNumber = 5, secondNumber = 8, thirdNumber = 3;

void settings() {
  size(400, 150);
}

void setup() {
  noLoop();
}

void draw() {
  background(255);
  fill(0);
  textSize(15);
  text("The largest number of " + firstNumber + " and " + secondNumber + " is : " + getLargest(firstNumber, secondNumber), 10, 20);
  text("The smallest number of " + firstNumber + ", " + secondNumber + " and " + thirdNumber + " is : " + getSmallest(firstNumber, secondNumber, thirdNumber), 10, 40);
  
  int numberToGuess = 256;
  text("The number of guesses to guess the number " + numberToGuess + " is : " + guessNumber(numberToGuess), 10, 60);
}

void keyPressed() {
  if (key == 'g') {
    generateRandomNumbers();
    redraw();
  }
}

void generateRandomNumbers() {
  firstNumber = (int) random(0, 20);
  secondNumber = (int) random(0, 20);
  thirdNumber = (int) random(0, 20);
}

int getLargest(int a, int b) {
  if (a == b) return - 1;
  return a > b ? a : b;
}

int getSmallest(int a, int b, int c) {
  if (a < b) {
    
    if (a < c) 
      return a;
    else if (a == c) 
      return - 1;
    else 
      return c;
    
  } else {
    
    if (b < c)
      return b;
    else if (b == c)
      return -1;
    else
      return c;
      
  }
}

int guessNumber(int number) {
  int randomNumber, counter = 0;
  do {
    randomNumber = (int) random(0, 1_000);
    counter++;
  } while (randomNumber != number);
  return counter;
}
