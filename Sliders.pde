//Creating All My Sliders
void CreateSliders(){
	cp5 = new ControlP5(this);
	//Height And Width Slider
	WidthOfScreenSlider = cp5.addSlider("screenWidth") //writes into variables with the same name
	  .setPosition(10, 230)
	  .setSize(120, 15)
	  .setRange(600, 1920)
	  .setValue(720);

	HeightOfScreenSlider = cp5.addSlider("screenHeight")
	  .setPosition(10, 250)
	  .setSize(120, 15)
	  .setRange(600, 1080)
	  .setValue(900);	

	//Radius Sliders
	seperationRadiusSlider = cp5.addSlider("seperationRadius")
	.setPosition(10, 50)
	.setSize(120, 15)
	.setRange(0, 300)
	.setValue(100);

	cohesionRadiusSlider = cp5.addSlider("cohesionRadius")
	.setPosition(10, 70)
	.setSize(120, 15)
	.setRange(0, 300)
	.setValue(100);
	
	alignmentRadiusSlider = cp5.addSlider("alignmentRadius")
	.setPosition(10, 90)
	.setSize(120, 15)
	.setRange(0, 300)
	.setValue(100);
	
	//Coefficient Sliders
	seperationCoefSlider = cp5.addSlider("seperationCoef")
	.setPosition(10, 110)
	.setSize(120, 15)
	.setRange(0, 2)
	.setValue(0.5);
	
	cohesionCoefSlider = cp5.addSlider("cohesionCoef")
	.setPosition(10, 130)
	.setSize(120, 15)
	.setRange(0, 2)
	.setValue(0.5);
	
	alignmentCoefSlider = cp5.addSlider("alignmentCoef")
	.setPosition(10, 150)
	.setSize(120, 15)
	.setRange(0, 1)
	.setValue(0.3);
	
	//General Boid Physics Sliders
	NumBoidsSlider = cp5.addSlider("numOfBoids")
	.setPosition(10, 170)
	.setSize(120, 15)
	.setRange(0, 500)
	.setValue(200);
	
	maxBoidSpeedSlider = cp5.addSlider("maxBoidSpeed")
	.setPosition(10, 190)
	.setSize(120, 15)
	.setRange(0, 5)
	.setValue(2);
	
	maxBoidForceSlider = cp5.addSlider("maxBoidForce")
	.setPosition(10, 210)
	.setSize(120, 15)
	.setRange(0, 1)
	.setValue(0.1);
}

void GetValuesOfSliders(){
	//General Boid Physics Sliders Getters
	numOfBoids = int(NumBoidsSlider.getValue());
	maxSpeed = maxBoidSpeedSlider.getValue();
	maxForce = maxBoidForceSlider.getValue();
	
	//Coefficient Sliders Getters
	seperationCoef = seperationCoefSlider.getValue();
	cohesionCoef = cohesionCoefSlider.getValue();
	alignmentCoef = alignmentCoefSlider.getValue();
	
	//Radius Sliders Getters
	seperationRadius = seperationRadiusSlider.getValue();
	cohesionRadius = cohesionRadiusSlider.getValue();
	alignmentRadius = alignmentRadiusSlider.getValue();	
}
