class Runner
{
  protected int myX, myY, myColor, mySize;
  protected double mySpeed;
  public Runner(int y)
  {
    myX = 50;
    myY = y;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    mySize = 10;
    mySpeed = 0;
  }
  public void show()
  {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  public void move()
  {
    if(myX <= 350) 
      myX += (int)(Math.random() * 2);
     else if(myX >= 351 && myX <= 376)
       myX = 375;
  }
  public int getX()
  {
    return myX;
  }
  public int getY()
  {
    return myY;
  }
  public void setX(int x)
  {
    myX = x;
  }
  public void setSpeed(double speed)
  {
    mySpeed = speed;
  }
}
