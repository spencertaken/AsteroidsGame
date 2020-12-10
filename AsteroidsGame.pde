Spaceship bob = new Spaceship(); 
ArrayList <Asteroid> eggplant = new ArrayList <Asteroid>(); 
ArrayList <Bullet> pewpew = new ArrayList <Bullet>(); 
Star[] nightSky = new Star[200]; 
boolean isAccelerating = false; 
boolean isDecelerating = false; 
boolean isTurnClockwise = false; 
boolean isTurnCounterclockwise = false; 
boolean shootythingy = false; 
int j = 0; 
int healthlyness = 0; 
public void setup() {
  size(500, 500); 
  background(0); 
  for (int i=0; i<nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i=0; i<15; i++) {
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
  if (key == ' ') {
    shootythingy = true;
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
  if (key == ' ') {
    shootythingy = false;
  }
}
public void draw() {
  background(0);
  stroke(0); 
  fill(0); 
  ellipse(250,250,5,5); 
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
  if (shootythingy) {
    pewpew.add(new Bullet(bob));
    pewpew.get(j).accelerate(2);
  }
  for (int i = 0; i<eggplant.size(); i++) {
    if (dist((float)eggplant.get(i).getAsteroidCenterX(), (float)eggplant.get(i).getAsteroidCenterY(), (float)bob.getSpaceshipCenterX(), (float)bob.getSpaceshipCenterY()) < 15) {
      eggplant.remove(i);
      healthlyness++; 
    } 
    else {
      eggplant.get(i).move(); 
      eggplant.get(i).show();
    }
  }
  if (pewpew.size() > 1) {
    for (j = 0; j<pewpew.size(); j++) { 
      pewpew.get(j).move();
      pewpew.get(j).show();
      pewpew.get(j).destroy(); 
      if (pewpew.get(j).getBulletCenterX() > width-1 || pewpew.get(j).getBulletCenterX() < 0+1 || pewpew.get(j).getBulletCenterY() < 0+1 || pewpew.get(j).getBulletCenterY() > height-1) {
        pewpew.remove(j);
        j--;
      }
    }
  }
  if (healthlyness >= 3) {
    fill(0);
    rect(0,0,500,500);
    fill(255,0,0); 
    text("GAME OVER", 220, 250);
  }
  if (eggplant.size()-2 < 1) {
    fill(0,255,100); 
    text("YOU WON!!", 220, 250);
  }
}
