


class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c = color(random(0,50),100,100);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill(c);
      ellipse(x,y,40,400);
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
  background(100,100,253);
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
