class Boid{
	//Declaring Boid Variables for Tracking Boid Movement
	PVector position;
	PVector velocity; 
	PVector acceleration;
	
	//Setting the Positions and Velocity Variables
	public Boid(PVector position, PVector velocity){
		this.acceleration = new PVector();
		this.position = position;
		this.velocity = velocity;
	}
	
	//Creating the Boids
	void drawBoid(float x, float y, float heading){
		pushMatrix();
		translate(x,y);
		rotate(heading);
		shape(boidShape);
		popMatrix();
	}
	
	//Drawing the Boids on SCreen
	void display() {
		drawBoid(position.x, position.y, velocity.heading());
		if(position.x < 50){
			drawBoid(position.x + width, position.y, velocity.heading());
		}
		if(position.x > width - 50){
			drawBoid(position.x - width, position.y, velocity.heading());
		}
		if(position.y < 50){
			drawBoid(position.x, position.y + height, velocity.heading());
		}
		if(position.y > height - 50){
			drawBoid(position.x, position.y - height, velocity.heading());
		}
	}
	
	//Seperation Rule
	void seperation(){
		PVector target = new PVector();
		int totalBoidsInRadius = 0;
		
		
		for(Boid other : boids){ //Looping through all Boids
			float distanceBetweenBoids = dist(position.x, position.y, other.position.x, other.position.y); //Get the Distance Between Boid and Other Boid
			if(other != this && distanceBetweenBoids < seperationRadius){ //if I am not checking my own boid, and also the boid is within the seperationRadius of the Boid
				PVector diff = PVector.sub(position, other.position); //get distance between them
				if (distanceBetweenBoids > 0 && distanceBetweenBoids < seperationRadius) { //If the Boids aren't on top of eachother, (Ensures no Mass Acceleration)
					diff.div(distanceBetweenBoids * distanceBetweenBoids); //Get the general difference in distance between all Boids
				}
				target.add(diff); //add that difference of acceleration to my target
				totalBoidsInRadius++; //Increase the amount of Boids in Seperation Radius
			}
		}
		if(totalBoidsInRadius == 0){ //So i dont continue with the following code if no boids exists within its radius
			return;
		}
		
		//Updating the Physics to the Boid
		target.div(totalBoidsInRadius);
		target.normalize();
		target.mult(maxSpeed);
		PVector force = PVector.sub(target, velocity);
		force.limit(maxForce);
		force.mult(seperationCoef);
		acceleration.add(force);
	}
	
	//Cohesion Rule
	void cohesion() {
		PVector center = new PVector();
		int totalBoidsInRadius = 0;
		for(Boid other : boids){
			float distanceBetweenBoids = dist(position.x, position.y, other.position.x, other.position.y);
			if(other != this && distanceBetweenBoids < cohesionRadius){ 
				center.add(other.position);
				totalBoidsInRadius++;
			}
		}
		if(totalBoidsInRadius == 0){
			return;
		}
		center.div(totalBoidsInRadius);
		PVector target = PVector.sub(center, position);
		target.normalize();
		target.mult(maxSpeed);
		PVector force = PVector.sub(target, velocity);
		force.limit(maxForce);
		force.mult(cohesionCoef);
		acceleration.add(force);
	}
	
	void alignment(){
		PVector target = new PVector();
		int totalBoidsInRadius = 0;
		for(Boid other : boids){
			float distanceBetweenBoids = dist(position.x, position.y, other.position.x, other.position.y);
			if(other != this && distanceBetweenBoids < alignmentRadius){ 
				target.add(other.velocity);
				totalBoidsInRadius++;
			}
		}
		if(totalBoidsInRadius == 0){
			return;
		}
		target.div(totalBoidsInRadius);
		target.normalize();
		target.mult(maxSpeed);
		PVector force = PVector.sub(target,  velocity);
		force.limit(maxForce);
		force.mult(alignmentCoef);
		acceleration.add(force);
		
	}
	
	
	//Wrapping Function To Make Sure Boids Stay On Screen
	void wrap(){ //0,0 Is Top Left 
		if(position.x < 0){position.x = width;} //If Too Far Left
		else if(position.x > width) { position.x = 0; } //If Too Far Right
		if(position.y <= 0){position.y = height;} //If Too High
		else if(position.y >= height){position.y = 0;} //If Too Low
	}
	
	//Update Function That Is Called By All Three Rules THta updates the Boids General Physics.
	void update(){
		acceleration.set(0, 0);
		alignment();
		cohesion();
		seperation();
		velocity.add(acceleration);
		velocity.limit(maxSpeed);
		position.add(velocity);
		wrap();
	}
}