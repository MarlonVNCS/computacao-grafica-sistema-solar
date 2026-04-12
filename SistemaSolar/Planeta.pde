class Planet {
  // Each planet object keeps track of its own angle of rotation.
  float theta;      // Rotation around sun
  float diameter;   // Size of planet
  float distance;   // Distance from sun
  float orbitspeed; // Orbit speed
 
  // Each Planet now has a Moon!
  Moon[] moons;
 
  
  Planet(float distance_, float diameter_, int numMoons) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01,0.03);
    
    // create the Moon 24 pixels from the planet with a diameter of 5
    moons = new Moon[numMoons];
    for(int i = 0; i < numMoons; i++) {
      float moonOrbitSpeed = random(-0.1,0.1); // cada lua tem uma orbitspeed diferente
      float moonDistance = 24+i*8; // cada lua tem uma distância diferente do planeta
      moons[i] = new Moon(moonDistance, 8, moonOrbitSpeed);
    }
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
    // Update the moon
    for(int i = 0; i < moons.length; i++) {
      moons[i].update();
    }
  }
  
  void display() {
    // Before rotation and translation, the state of the matrix is saved with pushMatrix().
    pushMatrix(); 
    // Rotate orbit
    rotate(theta); 
    // translate out distance
    translate(distance,0); 
    stroke(0);
    fill(175);
    ellipse(0,0,diameter,diameter);
    // The planet is drawn, now draw the moon

    for(int i = 0; i < moons.length; i++) {
      moons[i].display();
    }
    
    // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
    popMatrix(); 
  }
}