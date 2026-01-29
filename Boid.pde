class Boid{
	PVector position;
	PVector velocity; 
	PVector acceleration;
	
	public Boid(PVector position, PVector velocity){
		acceleration = new PVector();
		position = position;
		velocity = velocity;
	}
	
	void drawBoid(float x; float y, float heading){
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
	
	void update(){
		position.add(velocity);
		velocity.add(acceleration);
	}
}