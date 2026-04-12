// An array of 4 planet objects
Planet[] planets = new Planet[3];

void setup() {
  size(480, 270);

  // The planet objects are initialized using the counter variable
  for (int i = 0; i < planets.length; i++ ) {
    int moons = (i == 0) ? 2 : 1; // 1 planeta tem 2 luas, os outros 1 lua

    planets[i] = new Planet(60 + i*36, 24, moons);
  }
}

void draw() {
  background(255);

  // Drawing the Sun
  pushMatrix();
  translate(width/2, height/2);
  stroke(0);
  fill(255);
  ellipse(0, 0, 64, 64);

  // Drawing all Planets
  for (int i = 0; i < planets.length; i++ ) {
    planets[i].update();
    planets[i].display();
  }
  popMatrix();
}
