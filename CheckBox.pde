boolean isChecked = false;
int boxX = 10, boxY = 10, boxSize = 20;

void CreateCheckBox(){
//CheckBox Toggle
	if (isChecked) {
		fill(100); // Filled when checked Opacity Effect

	} else {
		fill(255); // White when unchecked
	}
	rect(boxX, boxY, boxSize, boxSize);
	
	if (isChecked) {
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
  text("Toggle Sliders", boxX + 40, boxY + 15);
}

//Mouse On Press 
void mousePressed() {
	// Check if mouse is within bounds
	if (mouseX > boxX && mouseX < boxX + boxSize && mouseY > boxY && mouseY < boxY + boxSize) { //If The Mouse Lines Up With The Box X/Y Coordinates
		isChecked = !isChecked; //Toggle state
	}
}