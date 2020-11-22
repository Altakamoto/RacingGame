Runner[] racer = new Runner[10];
int place = 1;
int finished = 0;
int[] places = new int[10];
int placesFor = 0;
public void setup()
{
  size(400, 400);
  for(int i = 0; i < racer.length; i++)
  {
    racer[i] = new Runner(i * 40 + 10);
  }
}
public void draw()
{
  background(255);
  for(int i = 0; i < racer.length; i++)
  {
    racer[i].show();
    racer[i].move();
  }
  line(350, 0, 350, 400);
  for(int i = 0; i < racer.length; i++)
  {
    if(racer[i].getX() == 375) {
      places[placesFor] = i;
      placesFor++;
      racer[i].setX(380);
      finished++;
    }
  }
  fill(0);
  if(finished == 10) {
    for(int i = 0; i < places.length; i++) 
    {
      text(i + 1, racer[places[i]].getX(), racer[places[i]].getY() - 3);
    }
  }
}
