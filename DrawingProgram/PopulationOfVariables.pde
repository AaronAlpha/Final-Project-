//Global Program
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;
float xClosButton, yCloseButton, CloseButtonWidth, CloseButtonHeight;
float xCenter, yCenter;
String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";
float lineboxX, lineboxY, lineboxWidth, lineboxHeight;


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
  drawingSurfaceHeight = height*3/5;
  //End Population of Virtual Piece of Paper
  
  
  drawingDiameter = width*1/100; //diameter of circle line tool
  
  ////Population of Close Button
  //xClosButton = ;
  //yCloseButton = ;
  //CloseButtonWidth = ;
  //CloseButtonHeight = ; 
  
  
  
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
  rect(lineboxX, lineboxY, lineboxWidth, lineboxHeight);
  
  rect(xClosButton, yCloseButton, CloseButtonWidth, CloseButtonHeight); //is the closing button //needs hover over(color and text)
  
}
