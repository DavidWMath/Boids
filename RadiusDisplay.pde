int RadiusCheckBoxY = 10;
int RadiusCheckBoxSize = 20;
boolean RadiusCheckBoxisChecked = false;


public void CreateRadiusCheckBox() {
    int RadiusCheckBoxX = int(WidthOfScreenSlider.getValue()) - 30; //-30 to offset from right edge

    if (RadiusCheckBoxisChecked) {
        fill(255); // Checked
    } else {
        fill(100); // Unchecked
    }
    rect(RadiusCheckBoxX, RadiusCheckBoxY, RadiusCheckBoxSize, RadiusCheckBoxSize);

    text("Toggle Radius", RadiusCheckBoxX - 80, RadiusCheckBoxY + 15);
	
	//If ticked, draw the three checkboxes
	if (RadiusCheckBoxisChecked) {
        drawRadiusDropDown();
		fill(100);
	}
	
}
