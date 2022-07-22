import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;






void setup() {
  size(1750,900);//Landscape or Square or Portrait 
  
  
  populationOfVariables();
  
  
  
  
};



void draw() {
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter)
  if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); //Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen
  
  



};


void keyPressed() {
  
}; // will not be required as program going to be touch screen and mousePressed is harder - > rub this out


void mousePressed() {
  if(mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight)
  {if (draw == false) 
  {draw = true;
} else {draw = false;}
} 


};
//End MAIN Program
