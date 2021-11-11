Bacteria [] kaito;
void setup()   
{     
  size(1000, 1000);
  frameRate(10);
  kaito = new Bacteria[25];
  for (int i = 0; i < 25; i++) {
    kaito[i] = new Bacteria(500,500);
  }
}   
void draw()   
{    
  background(212, 170, 57);
  for (int i = 0; i < 25; i++) {
    kaito[i].move();
    kaito[i].show();
  }
}

class Bacteria    
{     
  int myX, myY, bColor;
  Bacteria(int x, int y)
  {
    myX = x;
    myY = y;
    myX = myY = 500;
    bColor = color(38, 204, 27);
  }

  void move()
  {
    myX = myX + (int)(Math.random()*24)-12;
    myY = myY + (int)(Math.random()*24)-12;
  }
  void show()
  {
    fill(bColor);
    ellipse(myX, myY, 50, 50);
  }
}
