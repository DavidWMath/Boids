boolean SeperationRadiusChecked = false;
boolean CohesionRadiusChecked = false;
boolean AlignmentRadiusChecked = false;
int offsetY = 30;
int spacing = 25;

public void drawRadiusDropDown(){
	int AllRadiusCheckBoxX = int(WidthOfScreenSlider.getValue()) - 30; //get right most edge
	drawCheckbox(AllRadiusCheckBoxX, RadiusCheckBoxY + offsetY, 15, SeperationRadiusChecked, "Separation");
	drawCheckbox(AllRadiusCheckBoxX, RadiusCheckBoxY + offsetY + spacing, 15, CohesionRadiusChecked, "Cohesion");
	drawCheckbox(AllRadiusCheckBoxX, RadiusCheckBoxY + offsetY + spacing*2, 15, AlignmentRadiusChecked, "Alignment");
	
}

public void drawCheckbox(int x, int y, int size, boolean checked, String label) {
	//Box its in scope
	if (checked) fill(255);
	else fill(100);
	rect(x, y, size, size);

	//Text
	if (checked) fill(255);
	else fill(100);
	text(label, x - 60, y + 12);
  
}


