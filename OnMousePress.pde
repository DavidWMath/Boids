boolean radiiChanged = true;

void mousePressed() {
	if (mouseX > CheckBoxSliderX && mouseX < CheckBoxSliderX + CheckBoxSliderSize &&
		mouseY > CheckBoxSliderY && mouseY < CheckBoxSliderY + CheckBoxSliderSize) {

		SliderCheckBoxisChecked = !SliderCheckBoxisChecked;
		updateSliderVisibility(); 
	}

    int dynamicRadiusX = int(WidthOfScreenSlider.getValue()) - 30;

    if (mouseX > dynamicRadiusX && mouseX < dynamicRadiusX + RadiusCheckBoxSize &&
        mouseY > RadiusCheckBoxY && mouseY < RadiusCheckBoxY + RadiusCheckBoxSize) {

        RadiusCheckBoxisChecked = !RadiusCheckBoxisChecked;
        
    }
	
	  int dynamicX = int(WidthOfScreenSlider.getValue()) - 30; // match drawing X
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

	
	
}
