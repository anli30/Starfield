Particle[] star;
void setup(){
  size(700,500); 
  star = new Particle[100];
    for(int i = 0; i < star.length; i++){
      star[i] = new NormalParticle();
    }
  star[98] = new JumboParticle();
  star[99] = new OddballParticle();
}

void draw(){
  background(0,0,0);
  for(int i = 0; i < star.length; i++){
    star[i].show();
    star[i].move();
  }
}

class NormalParticle implements Particle{
 double x,y,angle,speed;
 int myColor;
 NormalParticle(){
   x = 350;
   y = 250;
   myColor = color(135,193,145); 
   angle = Math.random()*(Math.PI*2);
   speed = (Math.random()*3) + 1;
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
  fill(myColor);
  ellipse((float)x,(float)y,10,10);
 }
}

interface Particle{
  public void show();
  public void move();
}

class OddballParticle implements Particle{
  double myX,myY,angle,speed;
  double direction;
  int myColor;
  OddballParticle(){
    myX = myY = 100;
    myColor = color(240,160,63);
    direction = 3;
  }
  public void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,50,50);
  }
  public void move(){
    myX = myX + direction;
    if(myX > 600 || myX < 100){
      direction = direction * -1;
    }
  }
}

class JumboParticle extends NormalParticle{
  float mySize;
  JumboParticle(){
    mySize = 40; 
  }
  public void show(){
    ellipse((float)x,(float)y,mySize,mySize);
  }
}
