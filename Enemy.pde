
class Enemy {
    float  HIGHT;
    float WIDTH;
    float x;
    float y;
    
    //fTODO
    Enemy(float x, float y, float HIGHT, float WIDTH) {
        
        this.x = x;
        this.y = y;
        this.HIGHT = HIGHT;
        this.WIDTH = WIDTH;
    }
    // TODO
    void drawItem() {
        rect(x, y, HIGHT, WIDTH);
        
        
    }
    }