


class Globo
{
  float x, y,vx,vy,ax,ay;
  color c;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   ax=random(-0.1,0.1);
   ay=random(-0.5,-0.2);
   c = color(random(0,255),100,100);
  }

  void update()
  {
    y+=vy;
    x+=vx;
    vx+=ax;
    vy+=ay;
  }

  void dibujate()
  {
      fill(c);
      rectMode(CENTER);
      rect(x,y,100,400);
      triangle(x,y+50,x-20,y+60,x+20,y+60);
  }
  
}

ArrayList<Globo> globos;
PImage cara;

void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();
  cara = loadImage("facemaria.jpg");
  
}

void draw()
{
  background(100,100,100);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
