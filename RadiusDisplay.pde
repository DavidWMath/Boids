boolean RadiusCheckBoxisChecked = false;
int RadiusCheckBoxX = 100, RadiusCheckBoxY = 10, RadiusCheckBoxSize = 20;

void CreateRadiusCheckBox(){
//CheckBox Toggle
	if (RadiusCheckBoxisChecked) {
		fill(100); // Filled when checked Opacity Effect

	} else {
		fill(255); // White when unchecked
	}
	rect(screenWidth - 30, RadiusCheckBoxY, RadiusCheckBoxSize, RadiusCheckBoxSize);
	
	if (RadiusCheckBoxisChecked) {
		WidthOfScreenSlider.setPosition(10, -100);
		HeightOfScreenSlider.setPosition(10, -100);
		seperationRadiusSlider.setPosition(10, -100);
		cohesionRadiusSlider.setPosition(10, -100);
		alignmentRadiusSlider.setPosition(10, -100);
		seperationCoefSlider.setPosition(10, -100);
		cohesionCoefSlider.setPosition(10, -100);
		alignmentCoefSlider.setPosition(10, -100);
		NumBoidsSlider.setPosition(10, -100);
		maxBoidSpeedSlider.setPosition(10, -100);
		maxBoidForceSlider.setPosition(10, -100);
	}
	else{
		WidthOfScreenSlider.setPosition(10, 230);
		HeightOfScreenSlider.setPosition(10, 250);
		seperationRadiusSlider.setPosition(10, 50);
		cohesionRadiusSlider.setPosition(10, 70);
		alignmentRadiusSlider.setPosition(10, 90);
		seperationCoefSlider.setPosition(10, 110);
		cohesionCoefSlider.setPosition(10, 130);
		alignmentCoefSlider.setPosition(10, 150);
		NumBoidsSlider.setPosition(10, 170);
		maxBoidSpeedSlider.setPosition(10, 190);
		maxBoidForceSlider.setPosition(10, 210);
	}
  text("Toggle Radius'", screenWidth - 115, RadiusCheckBoxY + 15);
}

