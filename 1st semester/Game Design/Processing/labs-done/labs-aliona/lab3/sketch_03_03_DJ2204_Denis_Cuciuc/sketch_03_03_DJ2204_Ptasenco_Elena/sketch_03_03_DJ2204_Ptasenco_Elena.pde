    PImage image;
    PImage selectedImage;
    int lastMouseXPosition;
    int lastMouseYPosition;
    int selectedRectSize = 150;
    float selectRectXPos = 250;
    float selectRectYPos = 300;

    public void settings() {
        size(1000, 800);
    }


    void setup() {
        image = loadImage("DoYouKnowThem.jpg");
        image.filter(GRAY);
    }

    void draw() {
        background(128, 128, 128);
        image(image, width / 8, height / 3);

        if (mousePressed) {
            lastMouseXPosition = mouseX;
            lastMouseYPosition = mouseY;
        }

        selectRectXPos = lastMouseXPosition - (selectedRectSize / 2.0f);
        selectRectYPos = lastMouseYPosition - (selectedRectSize / 2.0f);

        noFill();
        strokeWeight(2);
        rect(selectRectXPos, selectRectYPos, selectedRectSize, selectedRectSize);

        
        selectedImage = image.get((int) selectRectXPos - (int) width / 8, (int) selectRectYPos - (int) height / 3, selectedRectSize, selectedRectSize);
        selectedImage.resize(200, 200);
        image(selectedImage, 300, 25);
    }
