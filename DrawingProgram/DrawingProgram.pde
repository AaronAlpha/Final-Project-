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
  if (circle == true) shape(circleShape, drawingSurfaceX + drawingSurfaceX*1/4, drawingSurfaceY - drawingSurfaceY*1/2);

  printArray(fontList); //is another line of code for print statements
}







void draw() {

  lineButton();
  stampButton();
  dottedLine();
  eraserButton();
  thin();
  thick();
  thicker();
  shapes();
  shapesShapes();
  colorButton();
  backgroundColorFill();




  //start Line tool
  if (lineDraw == true) { 
    stampDraw = false;
    DottedLineDraw = false; 
    eraser = false;
    if (mousePressed == true) {
      draw = true;
    } else {
      draw = false;
    }

    if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(1); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);

    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(5); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);

    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(8); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);

    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) 
      line(mouseX, mouseY, pmouseX, pmouseY);
  } else {
  }//end line tool




  //start Stamp tool
  if (stampDraw == true) {  
    lineDraw = false;
    DottedLineDraw = false;
    eraser = false;
    if (mousePressed == true) {
      draw = true;
    } else {
      draw = false;
    }

    if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(1); 
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //have to make ellipse tool as well  
      strokeWeight(1);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen
    if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(5); 
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      strokeWeight(1);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen
    if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(8); 
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      strokeWeight(1);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen


    if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) 
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  } else {
  }//end stamp tool
  
  
  
  ////start Dotted Line tool
  //if (DottedLineDraw == true) { 
  //  stampDraw = false;
  //  lineDraw = false;
  //  if (mousePressed == true) {
  //    draw = true;
  //  } else {
  //    draw = false;
  //  }

  //  if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
  //    strokeWeight(1); 
  //    line(mouseX, mouseY, pmouseX, pmouseY); 
  //    strokeWeight(1);

  //  } else {
  //  }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  //  if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
  //    strokeWeight(5); 
  //    line(mouseX, mouseY, pmouseX, pmouseY); 
  //    strokeWeight(1);

  //  } else {
  //  }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  //  if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
  //    strokeWeight(8); 
  //    line(mouseX, mouseY, pmouseX, pmouseY); 
  //    strokeWeight(1);
  //  } else {
  //  }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  //  if (draw == true && Dotted == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight)
  //    line(mouseX, mouseY, pmouseX, pmouseY);
      
  //    }

      
  //} else {
  //}//end dotted line tool
  
  
  //Start Eraser button logic
  if (eraser == true) { 
    stampDraw = false;
    DottedLineDraw = false;  
    lineDraw = false;
    if (mousePressed == true) {
      draw = true;
    } else {
      draw = false;
    }

    if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(1); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);

    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(5); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);

    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      strokeWeight(8); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);

    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) 
      line(mouseX, mouseY, pmouseX, pmouseY);
  } else {
  }//end eraser tool








  //user tools
  if (shouldRestart == true) rect(restartCanvasX, restartCanvasY, restartCanvasWidth, restartCanvasHeight); 
  shouldRestart = false; //Restart Button process

  restartButton();
  closeButton();


  //the following is an attempt to trying to increase the app screen to full screen or decrease the screen to the original/default screen size
  //if (MaxAlready == true) {
  //  MintoMaxButton() ;
  //} else if (MaxAlready == false) {
  //  MaxtoMinButton();
  //};
  //end user tools





  //starter box code used to introduce code to user
  //if (starterBox == false) {
  //  populationOfVariables();
  //  ;
  //} else {
  //fill(buttonfillIntro);
  //rect(IntroX, IntroY, IntroWidth, IntroHeight); //is the closing button //needs hover over(color and text)
  //textAlign(CENTER, CENTER);
  //introSize = 40; //Changing number until it exists
  //textFont(introFont, introSize); //used to affext the text
  //fill(buttonfilltextintro);
  //text(introText, IntroX, IntroY, IntroWidth, IntroHeight); //'text()' function 'draws' the text 
  //fill(resetWhite);

  //if (mouseX >= xStart && mouseX <= xStart +  StartWidth && mouseY >= yStart && mouseY <= yStart + StartHeigt) {
  //  buttonfillStart = orange;
  //  buttonfilltextstart = resetWhite;
  //} else {
  //  buttonfillStart = resetWhite;  
  //  buttonfilltextstart = orange;
  //}

  //fill(buttonfillStart);
  //rect(xStart, yStart, StartWidth, StartHeigt); //is the closing button //needs hover over(color and text)
  //textAlign(CENTER, CENTER);
  //startSize = 40; //Changing number until it exists
  //textFont(startFont, startSize); //used to affext the text
  //fill(buttonfilltextstart);
  //text(startText, xStart, yStart, StartWidth, StartHeigt); //'text()' function 'draws' the text 
  //fill(resetWhite);

  //rect(xStartBox, yStartBox, StartBoxWidth, StartBoxHeight);
  //}
}




void keyPressed() {
} // will not be required as program going to be touch screen and mousePressed is harder - > rub this out






void mousePressed() {
  Dotted = false;


  //switch to toggle close button ON(to end program)
  if (mouseX >= xCloseButton && mouseX <= xCloseButton +  CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) exit();
  //end

  //control flow/switch to toggle Restart button ON or OFF
  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
    if (shouldRestart == false) {
      shouldRestart = true;
    } else {
      shouldRestart = false;
    }
  }
  //end
  
  
  //Dotted line
  //if (Dotted == false) Dotted = true;


  ////switch to toggle line mode ON or OFF
  //if (mouseX >= xlinetool && mouseX <= xlinetool +  linetoolWidth && mouseY >= ylinetool && mouseY <= ylinetool + linetoolHeight) {
  //  if (lineDraw == false) {
  //    lineDraw = true;
  //  } else {
  //    lineDraw = false;
  //  }
  //}//end



  ////switch to toggle stamp mode ON or OFF
  //if (mouseX >= xstamptool && mouseX <= xstamptool +  stamptoolWidth && mouseY >= ystamptool && mouseY <= ystamptool + stamptoolHeight) {
  //  if (stampDraw == false) {
  //    stampDraw = true;
  //  } else {
  //    stampDraw = false;
  //  }
  //}//end




  


  ////control flow/switch to open a shapes tab to put shapes in canvas
  //if (mouseX >= shapesboxX && mouseX <= shapesboxX + shapesboxWidth && mouseY >= shapesboxY && mouseY <= shapesboxY + shapesboxHeight) {
  //  if (shapesOn == false) {
  //    shapesOn = true;
  //  } else {
  //    shapesOn = false;
  //  }
  //} 
  ////end  -> not needed anymore 



  //brush-type control flow
  //if (mouseX >= xThin && mouseX <= xThin +  thinWidth && mouseY >= yThin && mouseY <= yThin + thinHeight) {
  //  if (thinBool == false) {
  //    thinBool = true;
  //  } else {
  //    thinBool = false;
  //  }
  //} else if (mouseX >= xThick && mouseX <= xThick +  thickWidth && mouseY >= yThick && mouseY <= yThick + thickHeight) {
  //  if (thickBool == false) {
  //    thickBool = true;
  //  } else {
  //    thickBool = false;
  //  }
  //} else if (mouseX >= xThicker && mouseX <= xThicker +  thickerWidth && mouseY >= yThicker && mouseY <= yThicker + thickerHeight) {
  //  if (thickerBool == false) {
  //    thickerBool = true;
  //  } else {
  //    thickerBool = false;
  //  }
  //}

//  if (mouseX >= xThin && mouseX <= xThin +  thinWidth && mouseY >= yThin && mouseY <= yThin + thinHeight) thinBool = true;
//  if (mouseX >= xThick && mouseX <= xThick +  thickWidth && mouseY >= yThick && mouseY <= yThick + thickHeight) thickBool = true;
//  if (mouseX >= xThicker && mouseX <= xThicker +  thickerWidth && mouseY >= yThicker && mouseY <= yThicker + thickerHeight) thickerBool = true;
  //end brush type control flow





  //shapes control flow
  //circle
  if (mouseX >= xCircle && mouseX <= xCircle +  CircleWidth && mouseY >= yCircle && mouseY <= yCircle + CircleHeight) {
    if (circle == false) {
      circle = true;
    } else {
      circle = false;
    }
  }
  //end

  //triangle
  if (mouseX >= xTriangle && mouseX <= xTriangle +  TriangleWidth && mouseY >= yTriangle && mouseY <= yTriangle + TriangleHeight) {
    if (triangle == false) {
      triangle = true;
    } else {
      triangle = false;
    }
  }
  //end

  //square
  if (mouseX >= xSquare && mouseX <= xSquare +  SquareWidth && mouseY >= ySquare && mouseY <= ySquare + SquareHeight) {
    if (square == false) {
      square = true;
    } else {
      square = false;
    }
  }
  //end

  //rectangle
  if (mouseX >= xRectangle && mouseX <= xRectangle +  RectangleWidth && mouseY >= yRectangle && mouseY <= yRectangle + RectangleHeight) {
    if (rectangle == false) {
      rectangle = true;
    } else {
      rectangle = false;
    }
  }
  //end








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

  //if (mouseX >= xStart && mouseX <= xStart +  StartWidth && mouseY >= yStart && mouseY <= yStart + StartHeigt) {
  //  if (starterBox == true) {
  //  starterBox = false;
  //  } else {
  //starterBox = false;
  //  }
  //}
}//this is for the starter button


void mouseClicked() {
  
  
  //switch to toggle line mode ON or OFF
  if (mouseX >= xlinetool && mouseX <= xlinetool +  linetoolWidth && mouseY >= ylinetool && mouseY <= ylinetool + linetoolHeight) {
    if (lineDraw == false) {
      lineDraw = true;
      stampDraw = false;
      DottedLineDraw = false;
      eraser = false;
    } else {
      lineDraw = false;
    }
  }//end


  //switch to toggle stamp mode ON or OFF
  if (mouseX >= xstamptool && mouseX <= xstamptool +  stamptoolWidth && mouseY >= ystamptool && mouseY <= ystamptool + stamptoolHeight) {
    if (stampDraw == false) {
      stampDraw = true;
      lineDraw = false;
      DottedLineDraw = false;
      eraser = false;
    } else {
      stampDraw = false;
    }
  }//end
  
  
  //switch to toggle stamp mode ON or OFF
  if (mouseX >= xDottedLine && mouseX <= xDottedLine +  DottedLineWidth && mouseY >= yDottedLine && mouseY <= yDottedLine + DottedLineHeight) {
    if (DottedLineDraw == false) {
      DottedLineDraw = true;
      lineDraw = false;
      stampDraw = false;
      eraser = false;
    } else {
      DottedLineDraw = false;
    }
  }//end
  
  
  //switch to toggle eraser ON or OFF
  if (mouseX >= eraserboxX && mouseX <= eraserboxX +  eraserboxWidth && mouseY >= eraserboxY && mouseY <= eraserboxY + eraserboxHeight) {
    if (eraser == false) {
      eraser = true;
      stampDraw = false;
      lineDraw = false;
      DottedLineDraw = false;
    } else {
      eraser = false;
    }
  }
  //end
  
  
  
  
  
  if (mouseX >= xThin && mouseX <= xThin +  thinWidth && mouseY >= yThin && mouseY <= yThin + thinHeight) {
  if (thinBool == false) {
    thinBool = true;
    thickBool = false;
    thickerBool = false;
  } else {
    thinBool = false;
  }
} else if (mouseX >= xThick && mouseX <= xThick +  thickWidth && mouseY >= yThick && mouseY <= yThick + thickHeight) {
  if (thickBool == false) {
    thickBool = true;
    thinBool = false;
    thickerBool = false;
  } else {
    thickBool = false;
  }
} else if (mouseX >= xThicker && mouseX <= xThicker +  thickerWidth && mouseY >= yThicker && mouseY <= yThicker + thickerHeight) {
  if (thickerBool == false) {
    thickerBool = true;
    thinBool = false;
    thickBool = false;
  } else {
    thickerBool = false;
  }
}
}


//End MAIN Program
