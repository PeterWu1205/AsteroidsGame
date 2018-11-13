Spaceship ship = new Spaceship();
private int turnR = 5;
private float accelR = 0.5;
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
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length ; i++)
  	{
  		stars[i].show();
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

