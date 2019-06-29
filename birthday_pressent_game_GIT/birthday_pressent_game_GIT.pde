/**
This is a game. It contains three objects. You need to rearrange these objects into the right collumns 
to be able to see the present.
How to rearrange:
  To move the ellipse,you use the Right and Left arrows.
  To move the large square,you use CTRL(move to the left) and ALT(move to the right) buttons.
  To move the small rectengle,you use the Up(move to the Left) and Down(move to the right).
The ellipse must be at the first column, the large square must be at the third column, and the small rectengle must be at the second column.
**/
String birthday="Happy birthday";
//import processing.sound.*;
Conferti[] object = new Conferti[600];
PFont font;
int centerX;
int cr=50;
int x;
int xx=width/2;
//int diameter=60;
//SoundFile sound;

void setup() {
  size(600, 600);
  centerX=width/2;
  font=createFont("scp-italic.ttf", 37);
  println(font.list());
  for(int j=0;j<width;j++){
    object[j]=new Conferti( (int) random(width), (int) random(height));
  }
  //sound=new SoundFile(this, "happymarta.mp3");
}
void draw() {
  background(0);
  fill(0, 255, 0);
  background(255);
  line(150, 0, 150, height);
  line(300, 0, 300, height);
  line(450, 0, 450, height);
  if (keyPressed && (key==CODED)) {
    if (keyCode==LEFT) {
      centerX--;
    } else if (keyCode==RIGHT) {
      centerX++;
    } else if (keyCode==UP) {
      x--;
    } else if (keyCode==DOWN) {
      x++;
    } else if (keyCode==CONTROL) {
      xx--;
    } else if (keyCode==ALT) {
      xx++;
    }
  }
  textSize(42);
  ellipse(centerX, 50, 60, 60);
  fill(56, 70, 255);
  rect(x, height/2, 50, 50);
  fill(90, 90, 225, 192);
  rect(xx, height/4, 100, 100);
  if (centerX>0 && centerX<120 && x>150 && x<300 && xx>310 && xx<450) {
    text(birthday, 50, height/2);
    /*if(!sound.isPlaying()){
      sound.play();
    }**/
    for(int i=0;i<width;i++){
      object[i].setColor();
      object[i].display();
    }
  }
}
