    private final int SKETCH_WIDTH = 470;
    private final int SKETCH_HEIGHT = 480;
    private PImage daeLogo;
    private PImage textFromDaeLogo;

    public void settings() {
        size(SKETCH_WIDTH, SKETCH_HEIGHT);
    }

    public void setup() {
        daeLogo = loadImage("DAE.png");
        textFromDaeLogo = daeLogo.get(7, 38, 200 - 7, 52 - 38);
    }

    public void draw() {
        background(128, 128, 128);

        drawLogos();
        drawTextFromLogo();
    }

    private void drawLogos() {
        int numberOfImages = 6;
        int topGap = 10, leftGap = 10;

        for (int i = 0; i <= numberOfImages; i++) {
            if (i <= 0) image(daeLogo, topGap, leftGap);
            else image(daeLogo, leftGap, (daeLogo.height * i) + topGap);
            topGap += 20;
        }
    }

    private void drawTextFromLogo() {
        int numberOfImages = 18;
        int topGap = 10, leftGap = 30;

        for (int i = 0; i <= numberOfImages; i++) {
            if (i <= 0) image(textFromDaeLogo, daeLogo.width + leftGap, topGap);
            else image(textFromDaeLogo, daeLogo.width + leftGap, (textFromDaeLogo.height * i) + topGap);
            topGap += 10;
        }
    }
