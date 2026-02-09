boolean radiiChanged = true;
int dynamicRadiusX = 0;
int dynamicX = 0;
int dynamicY = 0;

void mousePressed() {
	if (mouseX > CheckBoxSliderX && mouseX < CheckBoxSliderX + CheckBoxSliderSize &&
		mouseY > CheckBoxSliderY && mouseY < CheckBoxSliderY + CheckBoxSliderSize) {

		SliderCheckBoxisChecked = !SliderCheckBoxisChecked;
		updateSliderVisibility(); 
	}

	//Full Screen Slider
	if(FullScreenToggle){
		dynamicRadiusX = int(displayWidth - 30);
		dynamicX = int(displayWidth - 30); // match drawing X
		dynamicY = int(displayHeight - 130);
	}
	else{
		dynamicRadiusX = int(WidthOfScreenSlider.getValue()) - 30;
		dynamicX = int(WidthOfScreenSlider.getValue()) - 30; // match drawing X
		dynamicY = int(HeightOfScreenSlider.getValue()) - 30;
	}


	//Radius Box Check
    if (mouseX > dynamicRadiusX && mouseX < dynamicRadiusX + RadiusCheckBoxSize &&
        mouseY > RadiusCheckBoxY && mouseY < RadiusCheckBoxY + RadiusCheckBoxSize) {
        RadiusCheckBoxisChecked = !RadiusCheckBoxisChecked;
        
    }
	
	
	int dropBoxSize = 15;

	// Only toggle small radius checkboxes if the main radius checkbox is checked
	if (RadiusCheckBoxisChecked) {

		// Separation checkbox
		if (mouseX > dynamicX && mouseX < dynamicX + dropBoxSize &&
			mouseY > RadiusCheckBoxY + offsetY && mouseY < RadiusCheckBoxY + offsetY + dropBoxSize) {
		  SeperationRadiusChecked = !SeperationRadiusChecked;
		   radiiChanged = true; 
		}

		// Cohesion checkbox
		if (mouseX > dynamicX && mouseX < dynamicX + dropBoxSize &&
			mouseY > RadiusCheckBoxY + offsetY + spacing && mouseY < RadiusCheckBoxY + offsetY + spacing + dropBoxSize) {
		  CohesionRadiusChecked = !CohesionRadiusChecked;
		   radiiChanged = true; 
		}

		// Alignment checkbox
		if (mouseX > dynamicX && mouseX < dynamicX + dropBoxSize &&
			mouseY > RadiusCheckBoxY + offsetY + spacing*2 && mouseY < RadiusCheckBoxY + offsetY + spacing*2 + dropBoxSize) {
		  AlignmentRadiusChecked = !AlignmentRadiusChecked;
		   radiiChanged = true; 
		}
	}
	
	int FullScreenBoxX = 10;

	int fullScreenSize = 20;
	
	// Full Screen
		if (mouseX > FullScreenBoxX && mouseX < FullScreenBoxX + fullScreenSize &&
			mouseY >  dynamicY && mouseY < dynamicY + fullScreenSize) {
			FullScreenToggle = !FullScreenToggle;
		}

	
	
}
