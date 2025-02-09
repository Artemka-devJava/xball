import ddf.minim.*;
GameItems player;
BackgroundImg backgroundImg;
Minim minim;
AudioPlayer playerMp3;
int statusGame = 0;
Menu menu;
//Enemy enemy1;
//fTODO
Enemy enemy2;
Enemy enemy3;
Enemy enemy4;
Enemy enemy5;
Enemy enemy6;
Enemy enemy72;
Enemy enemy82;
Enemy enemy92;
Enemy enemy102;
Enemy enemy112;
Bullets bullet;

void setup() {
    size(640, 480);
    frameRate(30);
    
    minim = new Minim(this);
    playerMp3 = minim.loadFile("Battletoads.mp3");
    
    player = new Player(270, 450, 100, 20);
    backgroundImg = new BackgroundImg();
    //fTODO
    //enemy1 = new Enemy(10, 20, 80, 20);
    enemy2 = new Enemy(100, 20, 80, 20);
    enemy3 = new Enemy(190, 20, 80, 20);
    enemy4 = new Enemy(280, 20, 80, 20);
    enemy5 = new Enemy(370, 20, 80, 20);
    enemy6 = new Enemy(460, 20, 80, 20);
    
    enemy72 = new Enemy(100, 50, 80, 20);
    enemy82 = new Enemy(190, 50, 80, 20);
    enemy92 = new Enemy(280, 50, 80, 20);
    enemy102 = new Enemy(370, 50, 80, 20);
    enemy112 = new Enemy(460, 50, 80, 20);
    
    
    player.uploadimage();
    backgroundImg.uploadimage();
    
    bullet = new Bullets(290, 450);
    
    
}

//_________________________________________________________________________
void draw() {
    
    
    
    switch(statusGame) {
        case 0:
            startGame();
            break;
        case 1:
            inGame();
            break;
        case 2:
            endGame();
            break;
    }
}
//_________________________________________________________________________
void startGame() {
    backgroundImg.drawBackgroundImgPrew();
    state();
    //print("Начальный экран");
}

void inGame() {
    
    backgroundImg.drawBackgroundImg();
    player.drawItem();
    playerMp3.play();
    bullet.drawItem();
    
    state();
    //print("Игра");
    
    
    
    //enemy1.drawItem();
    enemy2.drawItem();
    enemy3.drawItem();
    enemy4.drawItem();
    enemy5.drawItem();
    enemy6.drawItem();
    enemy72.drawItem();
    enemy82.drawItem();
    enemy92.drawItem();
    enemy102.drawItem();
    enemy112.drawItem();
    
}

void endGame() {
    backgroundImg.drawBackgroundImgPrew();
    //print("Возврат на начало");
    
    playerMp3.pause();
    state();
}


void state() {
    if (keyPressed && key == '1') {
        statusGame = 1;
    } else
        if (keyPressed && key == '2') {
            statusGame = 2;
        }
}
//_________________________________________________________________________
