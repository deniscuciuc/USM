/* Array to string function */

int[] evenNumbers;
int[] randomNumbers;

void settings() {
  size(650, 700);
}

void setup() {
  noLoop();
  background(0);
  fillArrayWithRandomNumbers();
  fillArrayWithEvenNumbers();
}

void draw() {
  int x = 5;
  arrayToString(evenNumbers, " ", x, 20);
  arrayToString(randomNumbers, " x ", x, 40);
  arrayToString(evenNumbers, " - ", x, 60);
  
  text("Average of the even numbers : " + getAverage(evenNumbers), x, 100);
  text("Average of the random numbers : " + getAverage(randomNumbers), x, 120);
  
  text("Max of the even numbers : " + getMax(evenNumbers), x, 140);
  text("Max of the random numbers : " + getMax(randomNumbers), x, 160);
  
  text("Min of the even numbers : " + getMin(evenNumbers), x, 200);
  text("Min of the random numbers : " + getMin(randomNumbers), x, 220);
  
  int value = 4;
  text("Amount of even numbers equal to " + value + " = " + counfIfEqual(evenNumbers, 4), x, 260);
  text("Amount of random numbers equal to " + value + " = " + counfIfEqual(randomNumbers, 4), x, 280);
  
  text("Amount of even numbers larger then " + value + " = " + countIfLarger(evenNumbers, 4), x, 320);
  text("Amount of random numbers larger then " + value + " = " + countIfLarger(randomNumbers, 4), x, 340);
  
  text("Amount of even numbers smaller then " + value + " = " + countIfSmaller(evenNumbers, 4), x, 380);
  text("Amount of random numbers smaller then " + value + " = " + countIfSmaller(randomNumbers, 4), x, 400);
  
  text("Amount of even numbers equal to max : " + countIfEqualMax(evenNumbers), x, 440);
  text("Amount of random numbers equal to max : " + countIfEqualMax(randomNumbers), x, 460);
  
  
  text("Shuffled even numbers : ", x, 500);
  shuffle(evenNumbers);
  arrayToString(evenNumbers, " ", 140, 500);
  
  text("Shuffled random numbers : ", x, 540);
  shuffle(randomNumbers);
  arrayToString(randomNumbers, " ", 150, 540);
}

void arrayToString(int[] array, String separator, int x, int y) {
  String output = "";
  
  for (int i = 0; i < array.length; i++) {
    if (i == array.length - 1) output += array[i];
    else output += array[i] + separator;
  }
  
  fill(255);
  textSize(12);
  text(output, x, y);
}

void fillArrayWithRandomNumbers() {
  randomNumbers = new int[20];
  for (int i = 0; i < randomNumbers.length; i++) {
    int randomNumber = (int) random(-15, 15);
    randomNumbers[i] = randomNumber;
  }
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

/* Average function */

float getAverage(int[] array) {
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum / array.length;
}

/* Max element function */

int getMax(int[] array) {
  int max = 0;
  for (int i = 0; i < array.length; i++){
    if (array[i] > max){
      max = array[i];
    }
  }
  return max;
}

/* Min element function */

int getMin(int[] array) {
   int min = array[0];
   for (int i = 0; i < array.length; i++) {
     if (min > array[i]) {
       min = array[i];
     }
   }
    return min;
}

/* Count if equal function */

int counfIfEqual(int[] array, int value) {
  int counter = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] == value) {
      counter++;
    }
  }
  return counter;
}

/* Count if larger function */

int countIfLarger(int[] array, int value) {
  int counter = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] > value) {
      counter++;
    }
  }
  return counter;
}

/* Count if smaller function */

int countIfSmaller(int[] array, int value) {
  int counter = 0;
  for (int i = 0; i < array.length; i++) {
    if (array[i] < value) {
      counter++;
    }
  }
  return counter;
}

/* Count if equal max */

int countIfEqualMax(int[] array) {
  int counter = 0, max = getMax(array);
  for (int i = 0; i < array.length; i++) {
    if (array[i] == max) {
      counter++;
    }
  }
  return counter;
}

/* Shuffle elements */

void shuffle(int[] array) {
  for (int i = 0; i < array.length; i++) {
    int randomFirstIndex;
    int randomSecondIndex;
    do {
      randomFirstIndex = (int) random(0, array.length - 1);
      randomSecondIndex = (int) random(0, array.length - 1);
    } while (randomFirstIndex == randomSecondIndex);
    swapByIndecesAndArray(array, randomFirstIndex, randomSecondIndex);
  }
}

void swapByIndecesAndArray(int[] array, int firstIndex, int secondIndex) {
  int temp = array[firstIndex];
  array[firstIndex] = array[secondIndex];
  array[secondIndex] = temp;
}
