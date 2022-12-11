    PImage image;
    int threshold = 150;

    void settings() {
        size(800, 600);
    }

    void setup() {
      image = loadImage("snoopy-dance.png");
    }

    void draw() {
        background(255);
        fill(0);

        image.resize(80, 60);
        image.loadPixels();

         for (int i = 0; i < image.pixels.length; i++) {
            int col = image.pixels[i];

            if (brightness(col) < threshold) {
                int x = i % image.width * 10;
                int y = i / image.width * 10 + 10;
                text("snoopy", x, y);
            }
        }
    }
