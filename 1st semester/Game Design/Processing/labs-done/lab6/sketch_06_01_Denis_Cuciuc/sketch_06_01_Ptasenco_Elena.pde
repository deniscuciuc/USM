/* Filling and printing array values */

int[] numbers;

void settings() {
  size(650, 450);
}

void setup() {
  noLoop();
  background(0);
  numbers = new int[9];
  for (int i = 0; i < numbers.length; i++) {
    int randomNumber = (int) random(10, 19);
    numbers[i] = randomNumber;
  }
}

void draw() {
  drawNumbersAndSum();
  numbers = sort(numbers);
  drawNumbers();
}

void drawNumbersAndSum() {
  String output = "";
  
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    output += numbers[i] + " ";
    sum += numbers[i];
  }
  output += " -> " + sum;
  
  fill(255);
  textSize(12);
  text(output, 5, 20);
  
  stroke(255);
  line(0, 25, width, 25);
}

void drawNumbers() {
  String output = "";
  
  for (int i = 0; i < numbers.length; i++) {
    output += numbers[i] + " ";
  }
  
  fill(255);
  textSize(12);
  text(output, 5, 40);
  
  stroke(255);
  line(0, 45, width, 45);
}
