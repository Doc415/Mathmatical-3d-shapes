import peasy.*;
PeasyCam camera;
float x,y,z,alpha,theta,inc;
int br;

void setup(){
  size(1024,768,P3D);
  alpha=0;
  colorMode(HSB,360,360,360);
  background(0);
  camera = new PeasyCam(this, 100);
  camera.setMinimumDistance(-1555);
  camera.setMaximumDistance(500);
  x=0;
  y=0;
  z=0;


}


void draw(){
  background(0);
  for(int j=0;j<360;j++){
    theta=radians(j)+inc;
    float cost=cos(theta);
    float sint=sin(theta);
    int distance=150;
    for (int i=0;i<360;i++){
      stroke(i,360,j);
      x=distance*sin(alpha)*cost;
      y=distance*cos(alpha)*cost;
      z=distance*sint;
      point(x,y,z);
      alpha=radians(i)+inc;
    }
  }
  inc=inc+PI/10;
  println("finished");
  
}
  
  
