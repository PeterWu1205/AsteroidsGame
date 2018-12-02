class Asteroid extends Floater 
{
	private int rotSpeed = (int)((Math.random()*15)-7);
	private int AstSize = 4;
	public Asteroid()
	{
		corners = 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] =-AstSize;
		yCorners[0] =-AstSize;
		xCorners[1] = AstSize;
		yCorners[1] =-AstSize;
		xCorners[2] = AstSize;
		yCorners[2] = AstSize;
		xCorners[3] =-AstSize;
		yCorners[3] = AstSize;
		myCenterX = (int)(Math.random()*601);
		myCenterY = (int)(Math.random()*601);
		myDirectionX = (int)(Math.random()*3);
		myDirectionY = (int)(Math.random()*3);
		myPointDirection = 0;
		myColor = 255;
	}
	public void move()
	{
		turn(rotSpeed);
		myCenterX += myDirectionX;    
   		myCenterY += myDirectionY;     
  
   	if(myCenterX >width)
  	{     
      	myCenterX = 0;    
    }    
   	else if (myCenterX<0)
    {     
      	myCenterX = width;    
   	}    
   	if(myCenterY >height)
   	{    
      	myCenterY = 0;    
   	} 
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
	}
	public void show()
	{
		super.show();
	}
	public void setX(int x) {myCenterX = x;}
  	public int getX() {return (int)myCenterX;}
  	public void setY(int y) {myCenterY = y;}  
  	public int getY() {return (int)myCenterY;}  
  	public void setDirectionX(double x)   {myDirectionX = x;}
  	public double getDirectionX()  { return myDirectionX;}
  	public void setDirectionY(double y)  {myDirectionY =y;}
  	public double getDirectionY()  {return myDirectionY;}
 	public void setPointDirection(int degrees)  {myPointDirection = degrees;}
  	public double getPointDirection() {return myPointDirection;}
}
