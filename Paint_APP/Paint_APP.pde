// colourlover
// paint APP 
// mar 12
//pallette of colors 
color darkgrey = #6E5D5D;
color darkbrown =  #726060;
color brown = #826B6B;
color lightbrown = #AB8C8C;
color skincolor = #BD9999;
color white = #FFFFFF;
// variables for color selection 
color SelectedColor;  

void setup() {
  size (800,600);
  strokeWeight(3);
  stroke(darkgrey);
  SelectedColor = lightbrown;
} // setup end ========

void draw() {
  background (skincolor);
  
  //buttons 
  //darkbrown
  if (dist(200,450,mouseX, mouseY) < 50) {
  stroke(white); 
  } else{
  stroke(darkgrey);
  }
  fill(darkbrown);
  circle (200,450,100); 
  
  //brown
  if (dist(400,450,mouseX, mouseY) < 50) {
  stroke(white); 
  } else{
  stroke(darkgrey);
  }
  fill (brown);
  circle(400,450,100);
  
  //lightbrown
   if (dist(600,450,mouseX, mouseY) < 50) {
  stroke(white); 
  } else{
  stroke(darkgrey);
  }
  fill(lightbrown);
  circle(600,450,100);
  
  //indicator 
  stroke(darkgrey);
  fill(SelectedColor);
  rect(200,50,400,300); 
} // end of draw =====================


void mouseReleased() {
  // darkbrown button 
  if (dist(200,450,mouseX, mouseY) < 50) {
    SelectedColor = darkbrown ; 
  } 
  //browm button
  if(dist(400,450,mouseX,mouseY)<50){
    SelectedColor=brown;
  }
   //lightbrown button
  if(dist(600,450,mouseX,mouseY)<50){
    SelectedColor=lightbrown;
  }
} // end mouseReleased ==========
