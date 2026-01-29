int numOfBoids = 0;
float seperationCoef;
float alignCoef;
float cohesionCoef;

float maxSpeed;
float maxForce;

Boid[] boids; //array of boids

void setup(){
	numOfBoids = 200;
	seperationCoef = 0.2;
	alignCoef = 0.5;
	cohesionCoef = 0.5;
	
	maxSpeed = 5;
	maxForce = 5; //maximum magnitude that cna be applied to the boids1
	
	boids = new Boid[numOfBoids]; //declare it to this size
	
	for(int i = 0; i < boids.length; i++){
		boids[i] = new Boid(new PVector(random(0, width), random(0, height)), PVector.random2D()); //random2D declares a random unit vector
	}
	
}