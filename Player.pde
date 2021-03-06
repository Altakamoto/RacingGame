class Player extends Runner
{
  public Player(int y)
  {
    super(y);
    myX = 50;
    myY = y;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    mySize = 10;
    mySpeed = 1;
  }
  public void show()
  {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
    ellipse(myX, myY, mySize, mySize);
    fill(0);
    text("You", myX - 5, myY + 15);
  }
  public void move()
  {
    if(myX <= 350) 
      myX += (int)(Math.random() * mySpeed);
     else if(myX >= 351 && myX <= 376)
       myX = 375;
  }
}
