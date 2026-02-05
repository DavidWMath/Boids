void draw(){
	background(0); //Set Back-Ground Colour
	CreateCheckBox();
	
	GetValuesOfSliders();
	IncreasingNumOfBoids();
	DecreasingNumOfBoids();
		
	//Each Frame, Update the Boids General Phyics, and Check If They Are On Screen (Wrapping)
	for(Boid b : boids) {
		b.update(); //General Physics Of Boid
		b.display(); //Wrapping	
	}
}

