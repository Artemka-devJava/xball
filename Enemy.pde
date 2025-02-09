
class Enemy {
    float  HIGHT;
    float WIDTH;
    float x;
    float y;
    
    
    Enemy(float x, float y, float HIGHT, float WIDTH) {
        
        this.x = x;
        this.y = y;
        this.HIGHT = HIGHT;
        this.WIDTH = WIDTH;
    }
    
    void drawItem() {
        rect(x, y, HIGHT, WIDTH);
        
        
    }
    }