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

// Stamp 
PImage lazyegg;
boolean lazyeggOn; // true or false

void setup() {
  size(800,600);
  background(255);
  strokeWeight(2);
  stroke(0); 
  SelectedColor = red; 
  sliderY=55;
  thickness = 0;
  //stamp
  lazyegg = loadImage( "lazy-egg.png");
  lazyeggOn = false;
}

void draw() {  
  fill(255);
  
  // toolbar 
  noStroke();
  strokeWeight(1);
  fill(100);
  rect(0,0,800,120);
  strokeWeight(2);

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
  fill(255);
  stroke(0);
  circle(300,sliderY,20);
  thickness = map(sliderY,10,100,0,10); 
  stroke(black);
  strokeWeight(thickness);  
  // indicator
  stroke(0);
  fill(SelectedColor);
  rect(230,25,30,70); 
  
   // stamp
  tactile(360,0,110,110);
  lazyeggOnOff();
  strokeWeight(1);
  rect(360,0,110,110);
  image(lazyegg, 360,0,110,110);
  
  
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

  if (lazyeggOn == false){
  // drawing lines
  strokeWeight(5);
  stroke(0);
if (mouseY>125){ //control the space to draw
stroke(SelectedColor);
strokeWeight (thickness);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
  } else { 
   // lazy egg drawing 
   image (lazyegg,mouseX, mouseY, 110,110);
  }
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
  
  // lazyegg button 
  if ( mouseX > 360 && mouseX < 470 && mouseY > 0 && mouseY <110){
    lazyeggOn = !lazyeggOn ; // ! = opposite 
  }
}
  //lazyegg button tactile 
void tactile(int x,int y, int w, int h){ 
  if (mouseX> x&& mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255,255,0);
  } else {
    fill(255);
  }
}

// lazyegg button 
void lazyeggOnOff (){
  if (lazyeggOn == true) {
    stroke (255,0,0);
    strokeWeight (5);
  } else {
    stroke (0);
    strokeWeight (1);
  }
}

// the slider
void controlSlider (){
  if (mouseX>290 && mouseX <310 && mouseY >10 && mouseY <100) {
    sliderY =mouseY;
  }
}
