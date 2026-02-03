

void draw(){
	background(0);
	
	fill(96, 96, 96); // Set fill color to Red (RGB)
	rect(0, height - 180, width, height); //width, height
	
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
	
