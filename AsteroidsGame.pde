Spaceship ship = new Spaceship();
private int turnR = 5;
private float accelR = 0.5;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] stars;
public void setup() 
{
  size(600,600);
  ship.setX(100);
  ship.setY(100);
  stars = new Star[200];
  for (int i = 0; i < stars.length ; i++)
  {
  	stars[i] = new Star();
  }
  for (int i = 0; i < 20 ; i++)
  {
    rocks.add(i, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length ; i++)
  	{
  		stars[i].show();
  	}
  for (int i = 0; i < rocks.size() ; i++)
    {
      rocks.get(i).show();
      rocks.get(i).move();
      float d = dist(ship.getX(), ship.getY(), rocks.get(i).getX(), rocks.get(i).getY());
      if( d < 10)
      {
        rocks.remove(i);
      }
    }
  	ship.show();
  	ship.move();
}
public void keyPressed()
  {
  	if (key == 'a')
  	{
  		ship.turn(-turnR);
  	} 
  	if (key == 'd')
  	{
  		ship.turn(turnR);
  	} 
  	if (key == 'w')
  	{
  		ship.accelerate(accelR);
  	} 
  	if (key == 's')
  	{
  		ship.accelerate(-accelR);
  	} 
  	if (key == 'f')
  	{
  		ship.setDirectionX(0);
  		ship.setDirectionY(0);
  	 	ship.setX((int)(Math.random()*599));
  		ship.setY((int)(Math.random()*599));
  	}
  }

