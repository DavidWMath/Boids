boolean FullScreenToggle = false;
int FullScreenBoxSize = 20;
int FullScreenBoxX = 10;
int FullScreenBoxY = 0;

public void FullScreen(){	
	if(FullScreenToggle){
		FullScreenBoxY = int(displayHeight - 130);
	}
	else{
		FullScreenBoxY = int(HeightOfScreenSlider.getValue()) - 30;
	}
	
    if (FullScreenToggle) {
        fill(255); // Checked
    } else {
        fill(100); // Unchecked
    }
    rect(FullScreenBoxX, FullScreenBoxY, FullScreenBoxSize, FullScreenBoxSize);

    text("Toggle Full Screen", FullScreenBoxX + 30, FullScreenBoxY + 15);
	
	if (FullScreenToggle) {
        surface.setSize(displayWidth, displayHeight - 70);
		screenWidth = displayWidth;
		screenHeight = displayHeight;	
		radiusLayer = createGraphics(screenWidth, screenHeight);
	}
	else{
		screenWidth = int(WidthOfScreenSlider.getValue());;
		screenHeight = int(HeightOfScreenSlider.getValue());;	
		surface.setSize(screenWidth, screenHeight);
		radiusLayer = createGraphics(screenWidth, screenHeight);

	}
	
}