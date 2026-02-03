

void draw(){
	background(0);
	
	while (boids.size() < numOfBoids) {
	  boids.add(new Boid(
		new PVector(random(width), random(height)),
		PVector.random2D()
	  ));
	}

	while (boids.size() > numOfBoids) {
	  boids.remove(boids.size() - 1);
	}
	
	maxSpeed = maxBoidSpeedSlider.getValue();
	maxForce = maxBoidForceSlider.getValue();
	
	for(Boid b : boids) {
		b.update();
		b.display();
		
	
	}
}


void screenWidth(int val) {
  screenWidth = val;
  surface.setSize(screenWidth, screenHeight);
}

void screenHeight(int val) {
  screenHeight = val;
  surface.setSize(screenWidth, screenHeight);
}
	