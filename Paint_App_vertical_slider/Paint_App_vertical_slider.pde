color black = #000000; 
//
float sliderY;
float circleX; 

void setup() {
  size(600,600);
  strokeWeight(5);
  stroke(black);
  fill(black);
  sliderY = 150; 
  circleX=0;
}

void draw() {
  background (255); 
  circleX= map(sliderY,100,500,0,300);
  line(150,100,150,500);
  circle (150,sliderY,50); 
  noFill();
  circle(400,300,circleX);
  fill(black);
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

  
