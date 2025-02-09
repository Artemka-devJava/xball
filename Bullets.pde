class Bullets {
    float bulletX;
    float bulletY;
    boolean flag;
    
    Bullets(float x, float y) {
        bulletX = x;
        bulletY = y;
    }
    
    void movedBoolet() {
        //if (keyPressed) {
        //if (key == '4') {
        bulletY -= 3;
        
    }
    
    //fTODO
    
    void objectDraw(float bulletX, float bulletY) {
        rect(bulletX,bulletY, 20, 20);
        fill(22, 2, 2);
    }
    
    void drawItem() {
        
        movedBoolet();
        objectDraw(bulletX, bulletY);
    } 
    
    
}
