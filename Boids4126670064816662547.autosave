int numOfBoids = 0;
float seperationCoef;
float alignCoef;
float cohesionCoef;	

float seperationRadius;
float cohesionRadius; 

float maxSpeed;
float maxForce;

Boid[] boids; //array of boids

PShape boidShape;

void setup(){
  size(1280, 720);
  frameRate(60);
  
  
	numOfBoids = 200;
	seperationCoef = 0.2;
	alignCoef = 0.5;
	cohesionCoef = 0.5;
	
	seperationRadius = 100;
	cohesionRadius = 100;
	
	maxSpeed = 3;
	maxForce = 0.1; //maximum magnitude that cna be applied to the boids1
	
	boids = new Boid[numOfBoids]; //declare it to this size
	
	for(int i = 0; i < boids.length; i++){
		boids[i] = new Boid(new PVector(random(0, width), random(0, height)), PVector.random2D()); //random2D declares a random unit vector
	}

  float shapeSize = 3;
  boidShape = createShape();
  boidShape.beginShape();
  boidShape.strokeWeight(1.5);
  boidShape.noFill();
  boidShape.stroke(255);
  boidShape.vertex(shapeSize * 4, 0);
  boidShape.vertex(-shapeSize, shapeSize * 2);
  boidShape.vertex(0, 0);
  boidShape.vertex(-shapeSize, -shapeSize * 2);
  boidShape.endShape(CLOSE);
	
}
