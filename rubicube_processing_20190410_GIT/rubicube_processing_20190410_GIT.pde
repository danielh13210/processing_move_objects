/**
I built this rubik cube from nine small cubes.
**/
float a=0.0;
void setup(){
  size(700,700,P3D);
}
void draw(){
  translate(width,75);
  translate(-400,280);
   a += 0.005;
  if(a > TWO_PI) { 
    a = 0.0; 
  }
  rotateY(a);
  rotateX(a+0.025);
  box(75);
  translate(0,75);
  box(75);
  translate(-75,0);
  box(75);
  translate(0,-75);
  box(75);
  translate(150,0);
  box(75);
  translate(0,75);
  box(75);
  translate(0,75);
  box(75);
  translate(-75,0);
  box(75);
  translate(-75,0);
  box(75);
  translate(0,0,75);
  box(75);
  translate(0,0,75);
  box(75);
  translate(75,0,0);
  box(75);
  translate(0,0,-75);
  box(75);
  translate(75,0);
  box(75);
  translate(0,0,75);
  box(75);
  translate(0,-75,-75);
  box(75);
  translate(0,0,75);
  box(75);
  translate(-75,0,-75);
  box(75);
  translate(-75,0,0);
  box(75);
  translate(0,0,75);
  box(75);
  translate(75,0,0);
  box(75);
  translate(75,-75);
  box(75);
  translate(0,0,-75);
  box(75);
  translate(-75,0);
  box(75);
  translate(0,0,75);
  box(75);
  translate(-75,0,0);
  box(75);
  translate(0,0,-75);
  box(75);
}
