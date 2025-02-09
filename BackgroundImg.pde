class BackgroundImg {
  PImage img, img2;
  void uploadimage() {
    img = loadImage("background.jpg");
    img2 = loadImage("background0.jpg");
  }
  void drawBackgroundImg() {
    image(img, 0, 0);
  }
// TODO
  void drawBackgroundImgPrew() {
//fTODO
    image(img2, 0, 0);
    textSize(30);
    fill(0, 408, 612);
    text("Для продолжения нажмите клавишу  '1'", 40, 240);
  }
}
