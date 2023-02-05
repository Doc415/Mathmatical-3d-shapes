float x,y,z,r;
float inc;
import peasy.*;
PeasyCam camera;
int scale;
void setup(){
  size(1024,768,P3D);
    background(0);
     camera = new PeasyCam(this,100);
  camera.setMinimumDistance(-1555);
  camera.setMaximumDistance(1500);
  scale=100;
  r=4;
  colorMode(HSB);
  
  inc=PI/30;
  
}


void draw(){
  background(0);

  translate (width/2,height/2);
for(int u=0;u<360;u++){
  float ur=radians(u)+inc;
  for(int v=-10;v<11;v++){
    
    float vr=map(v,-10,10,-1,1);
     
    x= scale * (r + vr * cos(ur/2)) * cos(ur);
    y= scale * (r + vr * cos(ur/2)) * sin(ur);
    z=scale*(vr*sin(ur/2));
    stroke(u,220,220);
    point (x,y,z);

}
}
 inc=inc+PI/10;
}
