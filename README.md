# USM
USM. Labs, Projects, Books and homeworks

final int SKETCH_WIDTH = 300;
    final int SKETCH_HEIGHT = 300;
    
    final float BURGER_BACKGROUND_WIDTH = SKETCH_WIDTH / 2;
    final float BURGER_BACKGROUND_HEIGHT = SKETCH_HEIGHT / 2;
    
    public void settings() {
        size(SKETCH_WIDTH, SKETCH_HEIGHT);
        noSmooth();
    }

    public void setup() {
        background(0, 0, 0);
    }
    
    public void draw() {
        drawBurger();
    }
    
    private void drawBurger() {
        drawBurgerBackground(0, 0);
    }
    
    private void drawBurgerBackground(float x, float y) {
          noStroke();
          fill(255, 0, 0);
          rect(x, y, BURGER_BACKGROUND_WIDTH, BURGER_BACKGROUND_HEIGHT);
    }
    
    private void drawFries() {
          
    }
    
    private void drawFriesBackground(float x, float y) {
      noStroke();
    }
