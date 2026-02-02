

void draw(){
	while (boids.size() < numOfBoids) {
	  boids.add(new Boid(
		new PVector(random(width), random(height)),
		PVector.random2D()
	  ));
	}

	while (boids.size() > numOfBoids) {
	  boids.remove(boids.size() - 1);
	}

	background(0);
	
	maxSpeed = maxBoidSpeedSlider.getValue();
	maxForce = maxBoidForceSlider.getValue();
	
	for(Boid b : boids) {
		b.update();
		b.display();
		
	
	}
}
	