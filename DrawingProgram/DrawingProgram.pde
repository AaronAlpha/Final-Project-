import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variable





void setup() {
  size(1750, 900);//Landscape or Square or Portrait 

  //the following is an attempt to trying to increase the app screen to full screen or decrease the screen to the original/default screen size
  //if (MaxAlready == false) {
  //  size(1750, 900);
  //} else if (MaxAlready == true) {
  //  size(displayWidth, displayHeight);
  //}
  //if (MaxAlready == true) size(displayWidth, displayHeight);
  //if (MaxAlready == false) size(1750, 900);

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

  if (shouldRestart == true) rect(restartCanvasX, restartCanvasY, restartCanvasWidth, restartCanvasHeight); 
  shouldRestart = false; //Restart Button process

  //the following is an attempt to trying to increase the app screen to full screen or decrease the screen to the original/default screen size
  //if (MaxAlready == true) {
  //  MintoMaxButton() ;
  //} else if (MaxAlready == false) {
  //  MaxtoMinButton();
  //};

  restartButton();
  closeButton();

  if (starterBox == true) {
    rect(xStartBox, yStartBox, StartBoxWidth, StartBoxHeight);
  } else {
    
  }
  
  
  
  rect(IntroX, IntroY, IntroWidth, IntroHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  introSize = 40; //Changing number until it exists
  textFont(introFont, introSize); //used to affext the text
  fill(buttontextfillclose);
  text(introText, IntroX, IntroY, IntroWidth, IntroHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  
  
  
  
  
  if (mouseX >= xStart && mouseX <= xStart +  StartWidth && mouseY >= yStart && mouseY <= yStart + StartHeigt) {
    buttonfillStart = orange;
    buttonfilltextstart = resetWhite;
  } else {
    buttonfillStart = resetWhite;  
    buttonfilltextstart = orange;
  }
  
  rect(xStart, yStart, StartWidth, StartHeigt); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  startSize = 40; //Changing number until it exists
  textFont(startFont, startSize); //used to affext the text
  fill(buttontextfillclose);
  text(startText, xStart, yStart, StartWidth, StartHeigt); //'text()' function 'draws' the text 
  fill(resetWhite);
  
  
  
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

  //the following is an attempt to trying to increase the app screen to full screen or decrease the screen to the original/default screen size
  //if (mouseX >= xMinMaxButton && mouseX <= xMinMaxButton +  xMinMaxButtonWidth && mouseY >= yMinMaxButton && mouseY <= yMinMaxButton + xMinMaxButtonHeight) {
  //  if (appWidth != displayWidth && appHeight != displayHeight) { 
  //    if (MaxAlready == false) {
  //      MaxAlready = true;
  //    } else {
  //      MaxAlready = false;
  //    }
  //  }
  //}
  
  if (mouseX >= xCloseButton && mouseX <= xCloseButton +  CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) exit(); //this is for the starter button
  
}



//End MAIN Program
