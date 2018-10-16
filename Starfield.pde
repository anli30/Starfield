Particle[] turtle;
void setup(){
  size(700,500); 
  turtle = new NormalParticle[100];
    for(int i = 0; i < turtle.length; i++){
  turtle[i] = new NormalParticle(); 
  }
}

void draw(){
  background(115,207,242);
  for(int i = 0; i < turtle.length; i++){
    turtle[i].show();
    turtle[i].move();
  }
}

class NormalParticle implements Particle{
 double x,y,angle,speed;
 int myColor;
 NormalParticle(){
   x = 350;
   y = 250;
   myColor = color(255, 255, 255); 
   angle = Math.random()*(Math.PI*2);
   speed = (Math.random()*5) + 1;
 }
 public void move(){ 
   if(x < 0 || x > 700){
      x = 350;
     y = 250;
   }else if(y < 0 || y > 500){
     x = 350;
     y = 250;
   }else{
     x = x + (Math.cos(angle)*speed);
     y = y + (Math.sin(angle)*speed); 
   }
 }
 public void show(){
  ellipse((float)x,(float)y,10,10);
 }
}

interface Particle{
  public void show();
  public void move();
}

class OddballParticle implements Particle{
  double myX,myY,angle,speed;
  int myColor;
  OddballParticle(){

  }
  public void show(){
   
  }
  public void move(){
    
  }
}

class JumboParticle extends NormalParticle{
  void public 
}