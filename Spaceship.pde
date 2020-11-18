class Spaceship extends Floater {  
  public Spaceship() {
  corners = 3;  //the number of corners, a triangular floater has 3
  xCorners = new int[corners];  //array
  yCorners = new int[corners];   //array
  xCorners[0] = -8; 
  yCorners[0] = -8; 
  xCorners[1] = 16; 
  yCorners[1] = 0;
  xCorners[2] = -8; 
  yCorners[2] = 8; 
  myColor = 255;  //int
  myCenterX = 250; 
  myCenterY = 250; //holds center coordinates   
  myXspeed = 0;
  myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = 270; //holds current direction the ship is pointing in degrees
  }
  public void setXspeed(double x) {
    myXspeed = x;  
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setCenterX(double x) {
    myCenterX = x; 
  }
  public void setCenterY(double y) {
    myCenterY = y; 
  }
  public void setPointDirection(double x) {
    myPointDirection = x;
  }
}
