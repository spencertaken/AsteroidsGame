class Asteroid extends Floater {
  protected double rotSpeed; 
  public Asteroid() {
    rotSpeed = (Math.random()*17)-8; 
    corners = 11;  //the number of corners, a triangular floater has 3
    xCorners = new int[corners];  //array
    yCorners = new int[corners];   //array
    xCorners[0] = 0; 
    yCorners[0] = -12; 
    xCorners[1] = 7; 
    yCorners[1] = -9;
    xCorners[2] = 7; 
    yCorners[2] = -5; 
    xCorners[3] = 12; 
    yCorners[3] = -2; 
    xCorners[4] = 9; 
    yCorners[4] = 8;
    xCorners[5] = -1; 
    yCorners[5] = 7;
    xCorners[6] = -8; 
    yCorners[6] = 7;
    xCorners[7] = -5; 
    yCorners[7] = 1;
    xCorners[8] = -11; 
    yCorners[8] = -2;
    xCorners[9] = -11; 
    yCorners[9] = -6;
    xCorners[9] = 6; 
    yCorners[9] = -12;
    myColor = 100;  //int
    myCenterX = Math.random()*width; 
    myCenterY = Math.random()*height; //holds center coordinates   
    myXspeed = Math.random()*4-2;
    myYspeed = Math.random()*4-2; //holds the speed of travel in the x and y directions   
    myPointDirection = 270; //holds current direction the ship is pointing in degrees
  }
  public void move() {
    turn(rotSpeed);
    super.move(); 
  }
  public double getAsteroidCenterX() {
    return myCenterX; 
  }
  public double getAsteroidCenterY() {
    return myCenterY; 
  }
}
