Particle [] cloud = new Particle[500];
void setup()
{
  background(0);
  size(500,500);
  for(int i = 1; i < cloud.length; i++){
    cloud[i] = new Particle();
    cloud[0] = new OddballParticle();
  }
}
void draw()
{
  for(int i = 1; i < cloud.length; i++){
    cloud[i].move();
    cloud[i].show();
  }
   cloud[0].move();
   cloud[0].show();
}
class Particle
{
  int Color, Speed;
  double Angle, myX, myY;
  
  Particle()
  {
    Color = color(0,100,(int)(Math.random()*255));
    myX = myY = 250;
    Angle = Math.random()*2 * Math.PI;
    Speed = (int)(Math.random()*10);
  }
  
  void move()
  {
    myX = myX + Math.cos(Angle) * Speed;
    myY = myY + Math.sin(Angle) * Speed; 
  }
  
  void show(){
    fill(Color);
    ellipse((float)myX,(float)myY,10,10);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
    int Color, myx, myy, Angle, Speed;
    double multiplier;
    OddballParticle()
    {
    Color = color(0,0,(int)(Math.random()*255));
    myx = myy = 500;
    Angle = (int)(Math.random()*20 * Math.PI);
    Speed = (int)(Math.random()*10);
    }
   
   void move()
   {
    myx = myx + (int)(Math.random()*30)-20;
    myy = myy + (int)(Math.random()*20)-10; 
   }
   
   void show()
   {
    noStroke();
    fill(255,255,255);
    ellipse((float)myx,(float)myy,100,100);
    stroke(0);
   }
}


