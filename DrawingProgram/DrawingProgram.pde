import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;






void setup() {
  size(1750, 900);//Landscape or Square or Portrait 

  populationOfVariables();

  printArray(fontList); //is another line of code for print statements
};








void draw() {

  if (mousePressed == true) {
    if (mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight)
  {
    if (draw == false) 
    {
      draw = true;
    } else {
      draw = false;
    }
  } ;
  } else {
    draw = false;
  }
  
  
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter) //have to mae ellipse tool as well
  if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); //Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  //Close button
  //Hover-over for Close Button
  if (mouseX >= xCloseButton && mouseX <= xCloseButton +  CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) {
    buttonfillclose = red;
    buttontextfillclose = resetWhite;
  } else {
    buttonfillclose = resetWhite;  
    buttontextfillclose = red;
  }
  //End Hover over  for Close Button

  fill(buttonfillclose);
  rect(xCloseButton, yCloseButton, CloseButtonWidth, CloseButtonHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  closeSize = 50; //Changing number until it exists
  textFont(closeFont, closeSize); //used to affext the text
  fill(buttontextfillclose);
  text(closeTitle, xCloseButton, yCloseButton, CloseButtonWidth, CloseButtonHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Close button






  //Close button
  //Hover-over for Close Button
  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
    buttonfillrestart = purple;
    buttontextfillrestart = resetWhite;
  } else {
    buttonfillrestart = resetWhite;  
    buttontextfillrestart = purple;
  }
  //End Hover over  for Close Button

  fill(buttonfillrestart);
  rect(xRestartButton, yRestartButton, RestartButtonWidth, RestartButtonHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  restartSize = 50; //Changing number until it exists
  textFont(closeFont, closeSize); //used to affext the text
  fill(buttontextfillrestart);
  text(Restart, xRestartButton, yRestartButton, RestartButtonWidth, RestartButtonHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Close button
};


void keyPressed() {
}; // will not be required as program going to be touch screen and mousePressed is harder - > rub this out


void mousePressed() {
  
  


  if (mouseX >= xCloseButton && mouseX <= xCloseButton +  CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) exit();

  //if (mouseX >= xCloseButton && mouseX <= xCloseButton +  CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) exit();
};






//End MAIN Program
