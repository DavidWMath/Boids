class Boid{
	PVector position;
	PVector velocity; 
	PVector acceleration;
	
	public Boid(PVector position, PVector velocity){
		this.acceleration = new PVector();
		this.position = position;
		this.velocity = velocity;
	}
	
	void drawBoid(float x, float y, float heading){
		pushMatrix();
		translate(x,y);
		rotate(heading);
		shape(boidShape);
		popMatrix();
	}
	
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
	
	void seperation(){
		PVector target = new PVector();
		int totalBoidsInRadius = 0;
		for(Boid other : boids){ //for every boid in Boids arr
			float distanceBetweenBoids = dist(position.x, position.y, other.position.x, other.position.y);
			if(other != this && distanceBetweenBoids < seperationRadius){ //if I am not checking my own boid, and also the boid is within the seperationRadius of the boid
				PVector diff = PVector.sub(position, other.position); //get distance betwene them
				if (distanceBetweenBoids > 0 && distanceBetweenBoids < seperationRadius) {
					diff.div(distanceBetweenBoids * distanceBetweenBoids); //create an exponential "acceleration" to the boid
				}
				target.add(diff); //add that difference of acceleration to my target
				totalBoidsInRadius++;
			}
		}
		if(totalBoidsInRadius == 0){ //SO i dont continue with the following code if no boids exists within its radius
			return;
		}
		
		target.div(totalBoidsInRadius);
		target.setMag(maxSpeed);
		PVector force = PVector.sub(target, velocity);
		force.limit(maxForce);
		force.mult(seperationCoef);
		acceleration.add(force);
	}
	
	void cohesion() {
		PVector center = new PVector();
		int totalBoidsInRadius = 0;
		for(Boid other : boids){
			float distanceBetweenBoids = dist(position.x, position.y, other.position.x, other.position.y);
			if(other != this && distanceBetweenBoids < cohesionRadius){ //if I am not checking my own boid, and also the boid is within the seperationRadius of the boid
				center.add(other.position);
				totalBoidsInRadius++;
			}
		}
		if(totalBoidsInRadius == 0){
			return;
		}
		center.div(totalBoidsInRadius);
		PVector target = PVector.sub(center, position);
		target.setMag(maxSpeed);
		PVector force = PVector.sub(target, velocity);
		force.limit(maxForce);
		acceleration.add(force);
	}
	
	void wrap(){
		if(position.x < 0){position.x = width;}
		else if(position.x > width) { position.x = 0; }
		if(position.y < 0){position.y = height;}
		else if(position.y > height){position.y = 0;}
	}
	
	void update(){
		wrap();
		seperation();
		cohesion();
		velocity.add(acceleration);
		velocity.limit(maxSpeed);
		position.add(velocity);
	}
}
