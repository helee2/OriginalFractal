public void setup()
{
  size(800,800);
  rectMode(CENTER);
}

public void draw()
{
  ellipserepeat(400,400,1000);
  rectrepeatX(400,0,50,50);
  rectrepeatY(0,400,50,50);
}

public void ellipserepeat(float x, float y, float w)
{
  if (w < 10)
  {
    ellipse(x,y,w,w);
    fill((float)(Math.random() * 255),(float)(Math.random() * 255),(float)(Math.random() * 255),100);
  }
  else
  {
    ellipse(x,y,w,w);
    ellipserepeat(x,y,w/1.25);
  }
}

public void rectrepeatX(float x, float y, float w, float z)
{
  if (x > 800 || y > 800)
  {
    rect(x,y,w,z);
  }
  else
  {
    rect(x,y,w,z);
    rectrepeatX(x,y+z,w,z);
  }
}
public void rectrepeatY(float x, float y, float w, float z)
{
  if (x > 800 || y > 800)
  {
    rect(x,y,w,z);
  }
  else
  {
    rect(x,y,w,z);
    rectrepeatY(x+w,y,w,z);
  }
}
