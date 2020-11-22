class Button 
{
  protected String myName;
  protected int myX, myY, myW, myH, myColor;
  public Button(String name, int x, int y, int w, int h, int r, int g, int b)
  {
    myName = name;
    myX = x;
    myY = y;
    myW = w;
    myH = h;
    myColor = color(r, g, b);
  }
  public void show() 
  {
    fill(myColor);
    stroke(141);
    rectMode(CENTER);
    rect(myX, myY, myW, myH);
    textAlign(CENTER, CENTER);
    fill(0);
    text(myName, myX, myY);
  }
  public boolean pressed()
  {
    if(mousePressed) {
      if(abs(mouseX - myX) <= (myW / 2) && abs(mouseY - myY) <= (myH / 2)) {
        return true;
      }
    }
    return false;
  }    
}
