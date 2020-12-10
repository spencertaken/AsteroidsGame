class Bullet extends Floater {
  public Bullet(Spaceship bob) {
    myCenterX = bob.getSpaceshipCenterX(); 
    myCenterY = bob.getSpaceshipCenterY(); //holds center coordinates   
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed(); //holds the speed of travel in the x and y directions   
    myPointDirection = bob.getSpaceshipPointDirection(); //holds current direction the ship is pointing in degrees
  }
  public void show() {
    stroke(3, 57, 252);
    fill(3, 57, 252);
    ellipse((float)myCenterX,(float)myCenterY,5,5); 
  }
  public void destroy()
  {
    for (int i = 0; i < eggplant.size(); i++) {
      if (dist((float)myCenterX, (float)myCenterY, (float)eggplant.get(i).getAsteroidCenterX(), (float)eggplant.get(i).getAsteroidCenterY()) < 15)
        eggplant.remove(i); 
    }
  }
  public double getBulletCenterX() {
    return myCenterX; 
  }
  public double getBulletCenterY() {
    return myCenterY; 
  }
}
