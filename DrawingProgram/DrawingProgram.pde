import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Program
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;



void setup() {
  //Display Checker

  //Display orientation Checker

  //Display and CANVAS checker

  size(900,950);//Landscape or Square or Portrait 

  //Population
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4; 
  drawingSurfaceHeight = height*4/5;
  drawingDiameter = width*1/100;
  
  
  
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
};


void draw() {
  if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen
};


void keyPressed() {
  
}; // will not be required as program going to be touch screen and mousePressed is harder - > rub this out


void mousePressed() {
  if(mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight)
  {if (draw == false) {draw = true;
} else {draw = false;};
} 


};
//End MAIN Program
