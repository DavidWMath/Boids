import controlP5.*;

//General Boid Variables
int numOfBoids = 0;

//Coefficients Variables
float seperationCoef; 
float alignmentCoef;
float cohesionCoef;	

//Radius's Variables
float seperationRadius;
float cohesionRadius; 
float alignmentRadius;

//General Boid Physics Variables
float maxSpeed;
float maxForce;

//Boid Array and Boid Shape
ArrayList<Boid> boids = new ArrayList<>();
PShape boidShape;

//Screen Height And Width Variables
int screenWidth = 900;
int screenHeight = 720;

//Slider Variables
ControlP5 cp5;

//Coefficient Sliders
Slider seperationCoefSlider;
Slider cohesionCoefSlider;
Slider alignmentCoefSlider;

//Radius Sliders
Slider seperationRadiusSlider;
Slider cohesionRadiusSlider;
Slider alignmentRadiusSlider;

//General Boid Physics
Slider NumBoidsSlider;
Slider maxBoidSpeedSlider;
Slider maxBoidForceSlider;

//Screen Sliders
Slider HeightOfScreenSlider;
Slider WidthOfScreenSlider;


//Settings Function
//I have to declare size here as it becomes a static variable in setup.

void settings(){
	size(screenWidth, screenHeight);
}


//Setup Function
void setup(){
	CreateSliders();
	frameRate(60);  
	CreateBoidsInArray();
	CreateBoidShape();	
	updateSliderVisibility();
	radiusLayer = createGraphics(screenWidth, screenHeight);
}

//Functions For The Screen Height And Width Sliders
void screenWidth(int val) { //Screen Height Slider
	screenWidth = val;
	surface.setSize(screenWidth, screenHeight);

	radiusLayer = createGraphics(screenWidth, screenHeight);
}

void screenHeight(int val) { //Screen Height Slider
	screenHeight = val;
	surface.setSize(screenWidth, screenHeight);
	radiusLayer = createGraphics(screenWidth, screenHeight);
}

//Functions To Create Boids and Their Shape
void CreateBoidsInArray(){
	//Filling the Boid array with Boids
	for (int i = 0; i < numOfBoids; i++) {
	  boids.add(new Boid(
		new PVector(random(width), random(height)),
		PVector.random2D()
	  ));
	}
}

void CreateBoidShape(){
	//Creating the Boid Shape
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