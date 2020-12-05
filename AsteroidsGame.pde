Spaceship bob = new Spaceship(); 
ArrayList <Asteroid> eggplant = new ArrayList <Asteroid>(); 
Star[] nightSky = new Star[200]; 
boolean isAccelerating = false; 
boolean isDecelerating = false; 
boolean isTurnClockwise = false; 
boolean isTurnCounterclockwise = false; 
public void setup() {
  size(500, 500); 
  background(0); 
  for (int i=0; i<nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i=0; i<15; i++){
    eggplant.add(new Asteroid()); 
  }
}
public void keyPressed() {
  if (key == 'q') {
    bob.setXspeed(0); 
    bob.setYspeed(0); 
    bob.setCenterX((int)(Math.random()*501)); 
    bob.setCenterY((int)(Math.random()*501)); 
    bob.setPointDirection((int)(Math.random()*361));
  }
  if (keyCode == SHIFT) {
    bob.setXspeed(0); 
    bob.setYspeed(0);
  }
  if (key == 'w') {
    isAccelerating = true;
  }
  if (key == 's') {
    isDecelerating = true;
  }
  if (key == 'd') {
    isTurnClockwise = true;
  }
  if (key == 'a') {
    isTurnCounterclockwise = true;
  }
}
public void keyReleased() {
  if (key == 'w') {
    isAccelerating = false;
  }
  if (key == 's') {
    isDecelerating = false;
  }
  if (key == 'd') {
    isTurnClockwise = false;
  }
  if (key == 'a') {
    isTurnCounterclockwise = false;
  }
}
public void draw() {
  background(0);
  for (int i=0; i<nightSky.length; i++) {
    nightSky[i].show();
  }
  bob.move(); 
  bob.show();
  if (isAccelerating) {
    bob.accelerate(0.1);
  }
  if (isDecelerating) {
    bob.accelerate(-0.1);
  }
  if (isTurnClockwise) {
    bob.turn(6);
  }
  if (isTurnCounterclockwise) {
    bob.turn(-6);
  }
  for (int i = 0; i<eggplant.size(); i++){
    if (dist((float)eggplant.get(i).getAsteroidCenterX(),(float)eggplant.get(i).getAsteroidCenterY(), (float)bob.getSpaceshipCenterX(), (float)bob.getSpaceshipCenterY()) < 15) {
      eggplant.remove(i); 
    }
    else {
    eggplant.get(i).move(); 
    eggplant.get(i).show();
    }
  }
}
