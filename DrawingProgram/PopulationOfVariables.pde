//Global Program
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;
float xCloseButton, yCloseButton, CloseButtonWidth, CloseButtonHeight;
float xCenter, yCenter;
String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";
float lineboxX, lineboxY, lineboxWidth, lineboxHeight;
float shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight;
float colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight;
float colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight;
float eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight;
float templateboxX, templateboxY, templateboxWidth, templateboxHeight;

String closeTitle = "X";
PFont closeFont;
color purple = #9E05FF, resetWhite = #FFFFFF, red = #FF0000; //or another purple  color = #2c08ff
//the 'resetDefaultInk' is not NightMode friendly as its just white 
int closeSize;
color buttonfillclose, buttontextfill;





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
  
  
  
  
  
  //Text stuff:
  String[] fontList = PFont.list(); //To list all fonts avaliable on OS
  printArray(fontList); //is another line of code for print statements
  closeFont = createFont("ArialNarrow", 55);
  
  
  
  

  //Population of Virtual Piece of Paper
  drawingSurfaceX = xCenter - xCenter*1/2;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = xCenter + xCenter*1/2; 
  drawingSurfaceHeight = height*6.5/10;
  //End Population of Virtual Piece of Paper
  
  
  drawingDiameter = width*1/100; //diameter of circle line tool
  
  
  //Population of Close Button
  xCloseButton = xCenter + xCenter*7.5/10;
  yCloseButton = height*6.5/10;
  CloseButtonWidth = width*1/10;
  CloseButtonHeight = height*1/10; 
  //End Population of Close Button
  
  ////Population of Maximise/Minimise Button
  //xCloseButton = xCenter + xCenter*7.5/10;
  //yCloseButton = height*6.5/10;
  //CloseButtonWidth = width*1/10;
  //CloseButtonHeight = height*1/10; 
  ////End Population of Maximise/Minimise Button
  
  ////Population of Close Button
  //xCloseButton = xCenter + xCenter*7.5/10;
  //yCloseButton = height*6.5/10;
  //CloseButtonWidth = width*1/10;
  //CloseButtonHeight = height*1/10; 
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
  colorpaletteboxY = height*6.5/10;
  colorpaletteboxWidth = xCenter - xCenter*1/2;
  colorpaletteboxHeight = height; //this box takes up the remaining space as there is a small gaping if it uses the uniformed height of ((height*6.5/10)/2)
  //End Population of Line Tool Box
  
  
  //Population of Color Fill Background Tool Box
  colorpalettefillerboxX = xCenter - xCenter*1/2;
  colorpalettefillerboxY = height*6.5/10;
  colorpalettefillerboxWidth = xCenter - xCenter*1/2;
  colorpalettefillerboxHeight = height; //
  //End Population of Color Fill Background Tool Box
  
  
  //Population of Eraser Tool Box
  eraserboxX = xCenter ;
  eraserboxY = height*6.5/10;
  eraserboxWidth = xCenter - xCenter*7/10;
  eraserboxHeight = height; 
  //End Population of Eraser Tool Box
  
  //Population of Template Tool Box
  templateboxX = xCenter + xCenter*3/10;
  templateboxY = height*6.5/10;
  templateboxWidth = xCenter - xCenter*6/10;
  templateboxHeight = height; 
  //End Population of Template Tool Box
  

  
  
  
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
  rect(lineboxX, lineboxY, lineboxWidth, lineboxHeight); //the 'Line drawing tool' tool box top left
  rect(shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); 
  rect(colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight);
  rect(colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight);
  rect(eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight);
  rect(templateboxX, templateboxY, templateboxWidth, templateboxHeight);
  
  
  
}
