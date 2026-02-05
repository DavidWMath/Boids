void IncreasingNumOfBoids(){
	//Looping Through All Boids And Adding Them (This is the NumOfBoids Slider)
	while (boids.size() < numOfBoids) {
	  boids.add(new Boid(
		new PVector(random(width), random(height)),
		PVector.random2D()
	  ));
	}	
}

void DecreasingNumOfBoids(){
	////Loopoing Through All Boids And Removing Them (This is the NumOfBoids Slider)
	while (boids.size() > numOfBoids) {
	  boids.remove(boids.size() - 1);
	}
}
