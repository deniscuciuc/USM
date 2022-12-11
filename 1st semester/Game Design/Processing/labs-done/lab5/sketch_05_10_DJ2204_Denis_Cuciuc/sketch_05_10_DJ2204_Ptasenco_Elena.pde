/* Chess board */

final int NUMBER_OF_COLUMNS = 8;
final int NUMBER_OF_ROWS = 8;
final int NUMBER_OF_CELLS = NUMBER_OF_COLUMNS + NUMBER_OF_ROWS;
int cellSize;

void settings() {
  size(300, 300);
}

void setup() {
  cellSize = (width + height) / NUMBER_OF_CELLS;
}

void draw() {
  int cellPosX = 0;
  int cellPosY = 0;
  
  for (int i = 1; i <= NUMBER_OF_ROWS; i++) {
    for (int j = 1; j <= NUMBER_OF_COLUMNS; j++) {
      changeColorByCell(j, i);
      
      rect(cellPosX, cellPosY, cellSize, cellSize);
      cellPosX += cellSize;
    }
    cellPosX = 0;
    cellPosY += cellSize;
  }
}

void changeColorByCell(int cellPos, int rowNumber) {
  boolean isCellPosEven = cellPos % 2 == 0;
  boolean isRowNumberEven = rowNumber % 2 == 0;
  
  if (isRowNumberEven) {
    if (isCellPosEven) {
      stroke(0);
      fill(0);
    } else {
      stroke(255);
      fill(255);
    }
  } else {
    if (isCellPosEven) {
      stroke(255);
      fill(255);
    } else {
      stroke(0);
      fill(0);
    }
  }
}
