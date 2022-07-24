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
    draw = true;
  } else {
    draw = false;
  }


  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter) //have to mae ellipse tool as well
  if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); //Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  if (shouldRestart == true) rect(restartCanvasX, restartCanvasY, restartCanvasWidth, restartCanvasHeight); shouldRestart = false; //Restart Button process


  MinMaxButton();
  restartButton();
  closeButton();
};





void keyPressed() {
}; // will not be required as program going to be touch screen and mousePressed is harder - > rub this out


void mousePressed() {
  if (mouseX >= xCloseButton && mouseX <= xCloseButton +  CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) exit();

  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
    if (shouldRestart == false) {
      shouldRestart = true;
    } else {
      shouldRestart = false;
    }
};

}



  //End MAIN Program
