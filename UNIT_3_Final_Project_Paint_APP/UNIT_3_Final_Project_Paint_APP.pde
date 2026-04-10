// pallette of colors
color red =  #FF0303;
color orange = #FF7D03;
color yellow = #FFEB03; 
color green = #56FF03;
color blue = #0393FF;
color purple = #B22BFC;
color white = #FFFFFF;
color black = #050505; 
// variables for color selection 
color SelectedColor; 
float sliderY;
float thickness; 

void setup() {
  size(800,600);
  strokeWeight(3);
  stroke(black); 
  background(white);
  SelectedColor = red; 
  sliderY=55;
  thickness = 0; 
}

void draw() {  
  background(white);
  strokeWeight(2);
  line(0,120,800,120);
  
  // buttons 
  //red
  tactile (60,35,20);
  fill (red); 
  circle(60,35,40);
  
  // orange 
  tactile(60,85,20);
  fill (orange); 
  circle(60,85,40); 
  
  // yellow 
  tactile(120,35,20);
  fill (yellow); 
  circle(120,35,40);
  
  //green 
 tactile (120,85,20);
  fill (green); 
  circle(120,85,40);
  
  //blue 
  tactile(180,35,20);
  fill(blue);
  circle(180,35,40);
  
  //purple
  tactile(180,85,20);
  fill(purple);
  circle(180,85,40);
  
  // slider
  stroke(0);
  line (300,10,300,100);
  fill(black);
  stroke(0);
  circle(300,sliderY,20);
  thickness = map(sliderY,10,100,0,10); 
  stroke(black);
  strokeWeight(thickness);
 
  
  // indicator 
  fill(SelectedColor);
  rect(230,25,30,70); 
  
  
} // End of draw ===============

void tactile (int x, int y, int r) {
  if (dist(x,y, mouseX, mouseY) <r){
    stroke(white);
  }else {
    stroke(black);
  }
} // end tactile ==============

// the slider 
void mouseDragged () {
  controlSlider();
  
  
  // drawing lines
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mouseReleased() { 

  // red button 
  if (dist(60,35,mouseX, mouseY) < 20) {
    SelectedColor = red ; 
  } 
  //orange button
  if(dist(60,85,mouseX,mouseY)<20){
    SelectedColor=orange;
  }
   //yellow button
  if(dist(120,35,mouseX,mouseY)<20){
    SelectedColor=yellow;
  }
  // green button
  if (dist(120,85,mouseX,mouseY)<20){
    SelectedColor=green;
  }
  //blue botton 
  if (dist(180,35,mouseX, mouseY)<20){
    SelectedColor=blue;
  }
  //purple button 
  if (dist(180,85,mouseX,mouseY)<20){
    SelectedColor = purple;
  }
  // slider
  controlSlider();
}

// the slider
void controlSlider (){
  if (mouseX>290 && mouseX <310 && mouseY >10 && mouseY <100) {
    sliderY =mouseY;
  }
}
