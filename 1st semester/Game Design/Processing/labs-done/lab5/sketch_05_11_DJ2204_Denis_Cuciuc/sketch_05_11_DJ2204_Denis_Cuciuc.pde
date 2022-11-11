/* Play field */

final int POINT_SIZE = 10;
final int SELECTED_POINT_SIZE = POINT_SIZE;
final int GAP_BETWEEN = POINT_SIZE + 5;
int numberOfPoints;
Point[] points;

class Point {
  int x;
  int y;
  int size;
  boolean isSelected;
  
  Point(int x, int y) {
    this.x = x;
    this.y = y;
    this.size = POINT_SIZE;
    this.isSelected = false;
  }
  
  void select() {
    this.isSelected = true;
    this.size = SELECTED_POINT_SIZE;
  }
  
  void deselect() {
    this.isSelected = false;
    this.size = POINT_SIZE;
  }
  
  void fillColor() {
    if (!this.isSelected) fill(0);
    else fill(255, 0, 0);
  }
}

void settings() {
  size(300, 300);
}

void setup() {
  background(255);
  numberOfPoints = ((width + height) / POINT_SIZE) * 3;
  fillPointsList();
}

void draw() {
  drawPoints();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    selectPoint();
  }
}

void drawPoints() {
  noStroke();
  for (Point point : points) {
    point.fillColor();
    ellipse(point.x, point.y, point.size, point.size);
  }
}

void selectPoint() {
  for (Point point : points) {
    if (isPointSelected(point.x, point.y)) {
      deselectPreviousPointIfExists();
      point.select();
      break;
    }
  }
}

void deselectPreviousPointIfExists() {
  for (Point point : points) {
    if (point.isSelected) {
      point.deselect();
    }
  }
}

boolean isPointSelected(int pointX, int pointY) {
  boolean isPressedX = mouseX >= pointX - POINT_SIZE / 2 && mouseX <= pointX + POINT_SIZE / 2;
  boolean isPressedY = mouseY >= pointY - POINT_SIZE / 2 && mouseY <= pointY + POINT_SIZE / 2;
  return isPressedX && isPressedY;
}

void fillPointsList() {
  int pointPosX = 5;
  int pointPosY = 5;
  
  points = new Point[numberOfPoints];
  for (int i = 0; i < numberOfPoints; i++) {
    if (pointPosX + POINT_SIZE >= width) {
      pointPosX = 5;
      pointPosY += POINT_SIZE + GAP_BETWEEN;
      i -= 1;
      continue;
    }
    
    points[i] = new Point(pointPosX, pointPosY);
    pointPosX += POINT_SIZE + GAP_BETWEEN;
  }
}
