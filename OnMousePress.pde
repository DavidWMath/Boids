void mousePressed() {
  if (mouseX > CheckBoxSliderX && mouseX < CheckBoxSliderX + CheckBoxSliderSize &&
      mouseY > CheckBoxSliderY && mouseY < CheckBoxSliderY + CheckBoxSliderSize) {

    SliderCheckBoxisChecked = !SliderCheckBoxisChecked;
    updateSliderVisibility(); 
  }

  if (mouseX > RadiusCheckBoxX && mouseX < RadiusCheckBoxX + RadiusCheckBoxSize &&
      mouseY > RadiusCheckBoxY && mouseY < RadiusCheckBoxY + RadiusCheckBoxSize) {

    RadiusCheckBoxisChecked = !RadiusCheckBoxisChecked;
  }
}
