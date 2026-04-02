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
  tactile(70,420,200,100);
  fill(darkbrown);
  rect (70,420,200,100); 
  
  //brown
  tactile (300,420,200,100);
  fill (brown);
  rect(300,420,200,100);
  
  //lightbrown
  tactile (530,420,200,100);
  fill(lightbrown);
  rect(530,420,200,100);
  
  //indicator 
  stroke(darkgrey);
  fill(SelectedColor);
  rect(200,50,400,300);  
    
} // end of draw =====================

 void tactile (int x, int y, int w, int h){
 if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
  stroke(white); 
  } else{
  stroke(darkgrey);
  }
} // end tactile ========


void mouseReleased() {
  // darkbrown button 
  if (mouseX>70 && mouseX<270 && mouseY>420 && mouseY<520) {
    SelectedColor = darkbrown ; 
  } 
  //browm button
  if (mouseX > 300 && mouseX < 500 && mouseY > 420 && mouseY < 520){
    SelectedColor=brown;
  }
   //lightbrown button
  if(mouseX > 200 && mouseX < 600 && mouseY > 50 && mouseY < 350){
    SelectedColor=lightbrown;
  }
} // end mouseReleased ==========
