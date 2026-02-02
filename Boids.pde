import controlP5.*;

int numOfBoids = 0;
float seperationCoef;
float alignmentCoef;
float cohesionCoef;	

float seperationRadius;
float cohesionRadius; 
float alignmentRadius;

ArrayList<Boid> boids = new ArrayList<>();

PShape boidShape;

//My Variables for Sliders

ControlP5 cp5;

Slider seperationRadiusSlider;
Slider cohesionRadiusSlider;
Slider alignmentRadiusSlider;

Slider seperationCoefSlider;
Slider cohesionCoefSlider;
Slider alignmentCoefSlider;

Slider NumBoidsSlider;
Slider maxBoidSpeedSlider;
Slider maxBoidForceSlider;



void setup(){
	size(1280, 720);
	frameRate(60);	
	
  
	cp5 = new ControlP5(this);

	seperationRadiusSlider = cp5.addSlider("seperationRadius")
	.setPosition(10, 10)
	.setSize(120, 15)
	.setRange(0, 300)
	.setValue(100);

	cohesionRadiusSlider = cp5.addSlider("cohesionRadius")
	.setPosition(10, 30)
	.setSize(120, 15)
	.setRange(0, 300)
	.setValue(100);
	
	alignmentRadiusSlider = cp5.addSlider("alignmentRadius")
	.setPosition(10, 50)
	.setSize(120, 15)
	.setRange(0, 300)
	.setValue(100);
	
	seperationCoefSlider = cp5.addSlider("seperationCoef")
	.setPosition(10, 70)
	.setSize(120, 15)
	.setRange(0, 2)
	.setValue(0.5);
	
	cohesionCoefSlider = cp5.addSlider("cohesionCoef")
	.setPosition(10, 90)
	.setSize(120, 15)
	.setRange(0, 2)
	.setValue(0.5);
	
	alignmentCoefSlider = cp5.addSlider("alignmentCoef")
	.setPosition(10, 110)
	.setSize(120, 15)
	.setRange(0, 1)
	.setValue(0.3);
	
	NumBoidsSlider = cp5.addSlider("numOfBoids")
	.setPosition(10, 130)
	.setSize(120, 15)
	.setRange(0, 500)
	.setValue(200);
	
	maxBoidSpeedSlider = cp5.addSlider("maxBoidSpeed")
	.setPosition(10, 150)
	.setSize(120, 15)
	.setRange(0, 5)
	.setValue(2);
	
	maxBoidForceSlider = cp5.addSlider("maxBoidForce")
	.setPosition(10, 170)
	.setSize(120, 15)
	.setRange(0, 1)
	.setValue(0.5);
  
  
	numOfBoids = int(NumBoidsSlider.getValue());
	
	maxSpeed = maxBoidSpeedSlider.getValue();
	maxForce = maxBoidForceSlider.getValue();
	
	seperationCoef = seperationCoefSlider.getValue();
	cohesionCoef = cohesionCoefSlider.getValue();
	alignmentCoef = alignmentCoefSlider.getValue();
		
	seperationRadius = seperationRadiusSlider.getValue();
	cohesionRadius = cohesionRadiusSlider.getValue();
	alignmentRadius = alignmentRadiusSlider.getValue();	
	
	maxForce = 0.1; //maximum magnitude that cna be applied to the boids1
	
	for (int i = 0; i < numOfBoids; i++) {
	  boids.add(new Boid(
		new PVector(random(width), random(height)),
		PVector.random2D()
	  ));
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
