Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;
int x, y;

void setup()
{
    size(400,435);
    ball1=new Ball(color(255,0,0),20,20,10,0,false);
    ball2=new Ball(color(0,255,0),20,20,0,10,false);
    ball3=new Ball(color(0,0,255),20,20,10,10,false);
    ball4=new Ball(color(255,0,255),20,380,10,-10,true);
    x=200;
    y=412;
}

void draw()
{
  background(255);
  fill(183,183,183);
  rect(0,410,400,25);
  fill(255);
  rect(x,y,20,20);
  ball1.move();
  ball1.display();
  ball2.move();
  ball2.display();
  ball3.move();
  ball3.display();
  ball4.move();
  ball4.display();
  
  if(mousePressed==true&&mouseX>x&&mouseX<x+20&&mouseY>y&&mouseY<y+20)
  {
    x=mouseX+10;
  }
}

class Ball
{
    color c;
    float xpos;
    float ypos;
    float xvel;
    float yvel;
    boolean control;

    Ball(color tempc, float tempxpos, float tempypos, float tempxvel, float tempyvel, boolean tempcontrol)
    {
       c=tempc;
       xpos=tempxpos;
       ypos=tempypos;
       xvel=tempxvel; 
       yvel=tempyvel;
       control=tempcontrol;
    }
    void move()
    {
      xpos+=xvel;
      ypos+=yvel;
      if(xpos<10||xpos>390)
        xvel*=-1;
      if(ypos<10||ypos>390)
        yvel*=-1;
      if(mousePressed==true&&control==true)
      {
        xpos=mouseX;
        ypos=mouseY;
        if(mouseX<200&&mouseY<200)
        {
          xvel=-10;
          yvel=-10;
        }
        if(mouseX>200&&mouseY<200)
        {
          xvel=10;
          yvel=-10; 
        }
        if(mouseX>200&&mouseY>200)
        {
          xvel=10;
          yvel=10;
        }
        if(mouseX<200&&mouseY>200)
        {
          xvel=-10;
          yvel=10; 
        }
      }
      if(control==true)
      {
        
      }
    }
    
    void display()
    {
      fill(c);
      ellipseMode(CENTER);
      ellipse(xpos,ypos,20,20);
    }
}
