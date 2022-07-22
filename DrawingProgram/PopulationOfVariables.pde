//Global Program
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;
float xClosButton, yCloseButton, CloseButtonWidth, CloseButtonHeight;
float xCenter, yCenter;
String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";
float lineboxX, lineboxY, lineboxWidth, lineboxHeight;
float shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight;
float colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight;
float colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight;
float eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight;


void populationOfVariables(){  
  
  
  xCenter = width/2;
  yCenter = height/2;
  
  int appWidth = width;
  int appHeight = height;
  
  
  //Display Checker
  if (width > displayWidth || height > displayHeight) {
    println("This display is too big for your display monitor");
    appWidth = displayWidth; //Note: displayWidth renders the current monitors width
    appHeight = displayHeight; //Note: displayHeight renders the current monitors height
  } else {
    println("CANVAS is good on your display.");
  };
  
  
  //Display orientation Checker
  String orientation = (appWidth >= appHeight) ? ls : p; 
  println(DO, orientation);
  
  
  //Display and CANVAS checker
  if (orientation  == ls) {
    println("Good to Go");
  } else {
    exit();
    println(instruct);
  };
  
  

  //Population of Virtual Piece of Paper
  drawingSurfaceX = xCenter - xCenter*1/2;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = xCenter + xCenter*1/2; 
  drawingSurfaceHeight = height*6.5/10;
  //End Population of Virtual Piece of Paper
  
  
  drawingDiameter = width*1/100; //diameter of circle line tool
  
  ////Population of Close Button
  //xClosButton = ;
  //yCloseButton = ;
  //CloseButtonWidth = ;
  //CloseButtonHeight = ; 
  ////End Population of Close Button
  
  
  //Population of Line Tool Box
  lineboxX = width * 0;
  lineboxY = height * 0;
  lineboxWidth = xCenter - xCenter*1/2;
  lineboxHeight = (height*6.5/10)/2;
  //End Population of Line Tool Box
  
  
  //Population of Shapes Tool Box
  shapesboxX = width * 0;
  shapesboxY = (height*6.5/10)/2;
  shapesboxWidth = xCenter - xCenter*1/2;
  shapesboxHeight = (height*6.5/10)/2;
  //End Population of Shapes Tool Box
  
  
  //Population of Color Tool Box
  colorpaletteboxX = width * 0;
  colorpaletteboxY = (height*6.5/10);
  colorpaletteboxWidth = xCenter - xCenter*1/2;
  colorpaletteboxHeight = height; //this box takes up the remaining space as there is a small gaping if it uses the uniformed height of ((height*6.5/10)/2)
  //End Population of Line Tool Box
  
  
  //Population of Color Fill Background Tool Box
  colorpalettefillerboxX = xCenter - xCenter*1/2;
  colorpalettefillerboxY = (height*6.5/10);
  colorpalettefillerboxWidth = xCenter - xCenter*1/2;
  colorpalettefillerboxHeight = height; //
  //End Population of Color Fill Background Tool Box
  
  
  //Population of Eraser Tool Box
  eraserboxX = xCenter - xCenter*1/2;
  eraserboxY = (height*6.5/10);
  eraserboxWidth = xCenter - xCenter*1/2;
  eraserboxHeight = height; 
  //End Population of Eraser Tool Box
  

  
  
  
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
  rect(lineboxX, lineboxY, lineboxWidth, lineboxHeight); //the 'Line drawing tool' tool box top left
  rect(shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); 
  rect(colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight);
  rect(colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight);
  rect(eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight);
  
  rect(xClosButton, yCloseButton, CloseButtonWidth, CloseButtonHeight); //is the closing button //needs hover over(color and text)
  
}
