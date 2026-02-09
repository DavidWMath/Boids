boolean SliderCheckBoxisChecked = false;
int CheckBoxSliderX = 10, CheckBoxSliderY = 10, CheckBoxSliderSize = 20;

void CreateCheckBoxSlider(){
//CheckBox Toggle
	if (!SliderCheckBoxisChecked) {
		fill(100); //Filled when checked Opacity Effect

	} else {
		fill(255); //White when unchecked
	}
	rect(CheckBoxSliderX, CheckBoxSliderY, CheckBoxSliderSize, CheckBoxSliderSize);
	
	text("Toggle Sliders", CheckBoxSliderX + 30, CheckBoxSliderY + 15);
}
