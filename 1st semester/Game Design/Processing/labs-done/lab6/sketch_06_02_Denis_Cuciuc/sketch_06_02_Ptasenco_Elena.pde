/* Functions with arrays as parametres */

int[] evenNumbers = new int[10];
int[] randomNumbers = new int[20];

void settings() {
  size(600, 300);
}

void setup() {
  noLoop();
  background(0);
  fillArrayWithEvenNumbers();
  fillArrayWithRandomNumbers();
}

void draw() {
  printArray(evenNumbers, 5, 20);
  printArray(randomNumbers, 5, 40);
}

void printArray(int[] array, int x, int y) {
  String output = "";
  for (int i = 0; i < array.length; i++) {
    output += array[i] + " ";
  }
  
  fill(255);
  textSize(12);
  text(output, x, y);
}

void fillArrayWithEvenNumbers() {
  evenNumbers = new int[10];
  
  int index = 0;
  for (int i = 2; i <= 20; i++) {
    if (i % 2 == 0) {
      evenNumbers[index] = i;
      index++;
    }
  }
}

void fillArrayWithRandomNumbers() {
  randomNumbers = new int[20];
  for (int i = 0; i < randomNumbers.length; i++) {
    int randomNumber = (int) random(10, 19);
    randomNumbers[i] = randomNumber;
  }
}
