
void drawRadiiLayer() {
    radiusLayer.beginDraw();
    radiusLayer.clear();
    radiusLayer.noFill();
    radiusLayer.strokeWeight(1);

    int steps = 50; //fewer steps is less lag for circles

    for (int j = 0; j < boids.size(); j += 10) { 
		Boid b = boids.get(j);

        // Separation radius
        if (SeperationRadiusChecked) {
            radiusLayer.stroke(255,0,0);
            float r = seperationRadiusSlider.getValue();
            radiusLayer.beginShape();
            for (int i = 0; i < steps; i++) {
                float angle = TWO_PI / steps * i;
                float x = b.position.x + cos(angle) * r;
                float y = b.position.y + sin(angle) * r;
                radiusLayer.vertex(x, y);
            }
            radiusLayer.endShape(CLOSE);
        }

        // Cohesion radius
        if (CohesionRadiusChecked) {
            radiusLayer.stroke(0,255,0);
            float r = cohesionRadiusSlider.getValue();
            radiusLayer.beginShape();
            for (int i = 0; i < steps; i++) {
                float angle = TWO_PI / steps * i;
                float x = b.position.x + cos(angle) * r;
                float y = b.position.y + sin(angle) * r;
                radiusLayer.vertex(x, y);
            }
            radiusLayer.endShape(CLOSE);
        }

        // Alignment radius
        if (AlignmentRadiusChecked) {
            radiusLayer.stroke(0,0,255);
            float r = alignmentRadiusSlider.getValue();
            radiusLayer.beginShape();
            for (int i = 0; i < steps; i++) {
                float angle = TWO_PI / steps * i;
                float x = b.position.x + cos(angle) * r;
                float y = b.position.y + sin(angle) * r;
                radiusLayer.vertex(x, y);
            }
            radiusLayer.endShape(CLOSE);
        }

    }

    radiusLayer.endDraw();
}

void draw(){
	background(0); //Set Back-Ground Colour
	CreateCheckBoxSlider();
	CreateRadiusCheckBox();
	
	
	GetValuesOfSliders();
	IncreasingNumOfBoids();
	DecreasingNumOfBoids();
		
	//Each Frame, Update the Boids General Phyics, and Check If They Are On Screen (Wrapping)
	for(Boid b : boids) {
		b.update(); //General Physics Of Boid
		b.display(); //Wrapping	
	}
	
	drawRadiiLayer();      //Draw pre-rendered circles
    image(radiusLayer,0,0);

}

