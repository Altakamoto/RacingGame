Runner[] racer = new Runner[10];
int place = 1;
int finished = 0;
int[] places = new int[10];
Button start;
int placesFor = 0;
boolean started = false;
double speedSet = 1.50;
public void setup()
{
  size(400, 400);
  for(int i = 0; i < racer.length; i++)
  {
    racer[i] = new Runner(i * 40 + 10);
    racer[1] = new Player(50);
  }
  start = new Button("Start", 200, 300, 100, 50, 255, 255, 255);
}
public void draw()
{
  if(started == true) {
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
        text(i + 1, racer[places[i]].getX() + 10, racer[places[i]].getY() - 8);
      }
    }
    racer[1].setSpeed(speedSet);
  } else {
    background(255);
    fill(255);
    ellipse(200, 200, 320, 320);
    ellipse(200, 200, 300, 300);
    fill(144, 238, 144);
    rect(200, 200, 200, 300);
    textAlign(CENTER, CENTER);
    fill(0, 0, 255);
    textSize(26);
    text("RACING GAME", 200, 100);
    fill(0);
    textSize(14);
    text("Click start to begin", 200, 200);
    text("Created by Alex Takamoto", 200, 375);
    rectMode(CENTER);
    start.show();
      if(start.pressed() == true) {
        started = true;
      }
  }
}
public void mouseClicked()
{
  speedSet += .07;
}
  
