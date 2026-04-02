color black = #000000; 

float sliderY;

void setup() {
  size(600,600);
  strokeWeight(5);
  stroke(black);
  fill(black);
  sliderY = 150;
}

void draw() {
  background (255); 
  
  line(150,100,150,500);
  circle (150,sliderY,50); 
}

void mouseDragged() {
 controlSlider ();
}

void mouseReleased() {
  controlSlider();
}

void controlSlider () {
    if (mouseX > 125 && mouseX < 175 && mouseY > 100 && mouseY < 500) {
    sliderY= mouseY; 
  }
}

  
