enum Scene {
  MENU, GAME
}

public Scene currentScene = Scene.MENU;

/*
   Проверям с помощью переменной currentScene на какой сцене находимся и вызываем нужную нам функцию
*/
void selectScene() {
  switch(currentScene) {
    case MENU:
        loadMenu();
        break;
    case GAME:
        playGame();
        break;
  }
}
