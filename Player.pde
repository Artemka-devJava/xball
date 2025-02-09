class Player implements GameItems {
    PImage img;
    float x;
    float y;
    int hight; //Высота
    int with;  //Ширина
    
    
    Player() {
        
    }
    
    Player(float tempX, float tempY, int hightX, int withY) {
        x = tempX;
        y = tempY;
        hight = hightX;
        with = withY;
    
        
    }
    
    
    void uploadimage() {
        img = loadImage("playerBackground.jpg");
    }
    
    void objectDraw() {
        rect(x, y, hight, with);
        fill(23, 23,23);
        image(img, x, y);
    }
    
    void movedLeft() {
        if (keyPressed) {
            if (key == 'q') {
                x -= 3;
                
            }
        }
    }
    void movedRight() {
        if (keyPressed) {
            if (key == 'w') {
                x += 3;
            }
        }
    }
    
    void drawItem() {
        movedLeft();
        movedRight();
        objectDraw();
    }
}
