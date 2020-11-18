class Star { //note that this class does NOT extend Floater
  private int myX, myY, bigness; 
  public Star() {
    myX = (int)(Math.random()*500); 
    myY = (int)(Math.random()*500);
    bigness = (int)(Math.random()*5);
  }
  public void show() {
    fill(250, 218, 37); 
    stroke(250, 218, 37);
    ellipse(myX,myY,bigness,bigness); 
  }
}
