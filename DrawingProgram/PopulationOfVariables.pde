//Global Program
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;
float xCenter, yCenter;
String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";
color purple = #9E05FF, resetWhite = #FFFFFF, red = #FF0000, blue = #5792F5, black = #000000, orange = #F59A39, green =#39F56C, yellow = #EEF539; //or another purple  color = #2c08ff
color indigo = #4B00FF, pink = #E500FF; 

PFont closeFont, RestartFont, RestartFontHover, MinMaxFont, introFont, startFont, linebuttonFont, eraserbuttonFont, toolsFont, thinbuttonFont, thickbuttonFont, thickerbuttonFont;
PFont shapesbuttonFont, colorbuttonFont, colorfillerbuttonFont, circleFont, triangleFont, squareFont, rectangleFont, stampFont, DottedLineFont;
String[] fontList = PFont.list(); //To list all fonts avaliable on OS


float lineboxX, lineboxY, lineboxWidth, lineboxHeight;
float xlinetool, ylinetool, linetoolWidth, linetoolHeight;
int lineSize;
String lineswitchText = "Line mode";
color buttonfillline, buttontextfillline;
boolean lineDraw = false;

float xstamptool, ystamptool, stamptoolWidth, stamptoolHeight;
int stampSize;
String stampText = "Stamp mode";
color buttonfillstamp, buttontextfillstamp;
boolean stampDraw = false;

float xDottedLine, yDottedLine, DottedLineWidth, DottedLineHeight;
int DottedLineSize;
String DottedLineText = "Dotted Line";
color buttonfillDottedLine, buttontextfillDottedLine;
boolean DottedLineDraw = false, Dotted = false;

float eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight;
int eraserSize;
String eraserswitchText= "Eraser";
color buttonfilleraser, buttontextfilleraser;
boolean eraser = false;

float xTools, yTools, toolsWidth, toolsHeight;

float xThin, yThin, thinWidth, thinHeight;
color buttonfillthin, buttontextfillthin;
String thin = "Thin line";
int thinSize;
boolean thinBool;

float xThick, yThick, thickWidth, thickHeight;
color buttonfillthick, buttontextfillthick;
String thick = "Thick line";
int thickSize;
boolean thickBool;

float xThicker, yThicker, thickerWidth, thickerHeight;
color buttonfillthicker, buttontextfillthicker;
String thicker = "Thicker line";
int thickerSize;
boolean thickerBool;


float shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight;
String shapesButtonText = "Shapes";
int shapesSize;
boolean shapesOn;
float xShapeOptions, yShapeOptions, ShapeWidth, ShapeHeight;
PShape circleShape, triangleShape, squareShape, rectangleShape;

float xCircle, yCircle, CircleWidth, CircleHeight;
int circleSize;
String circleText = "Circle";
color buttonfillcircle, buttontextfillcircle;
boolean circle = false;

float xTriangle, yTriangle, TriangleWidth, TriangleHeight;
int triangleSize;
String triangleText = "Triangle";
color buttonfilltriangle, buttontextfilltriangle;
boolean triangle = false;

float xSquare, ySquare, SquareWidth, SquareHeight;
int squareSize;
String squareText = "Square";
color buttonfillsquare, buttontextfillsquare;
boolean square = false;

float xRectangle, yRectangle, RectangleWidth, RectangleHeight;
int rectangleSize;
String rectangleText = "Rectangle";
color buttonfillrectangle, buttontextfillrectangle;
boolean rectangle = false;

float xColor, yColor, ColorWidth, ColorHeight;
int colorSize;
color buttonfillcolor, buttontextfillcolor;
String colorText = "Color";

float xBackgroundFiller, yBackgroundFiller, BackgroundFillerWidth, BackgroundFillerHeight;
String backgroundFillerText = "Color filler for background";
int backgroundFillerSize;
color buttonfillBackgroundFiller, buttontextfillBackgroundFiller;

float xRed, yRed, RedWidth, RedHeight;
float xBlue, yBlue, BlueWidth, BlueHeight;
float xGreen, yGreen, GreenWidth, GreenHeight;
float xOrange, yOrange, OrangeWidth, OrangeHeight;
float xYellow, yYellow, YellowWidth, YelloHeight;
float xIndigo, yIndigo, IndigoWidth, IndigoHeight;
float xPink, yPink, PinkWidth, PinkHeight;
float xBlack, yBlack, BlackWidth, BlackHeight;
float xWhite, yWhite, WhiteWidth, WhiteHeight;

float xColorPallete, yColorPallete, ColorPalleteWidth, ColorPalleteHeight;
float xBackgroundColorPallete, yBackgroundColorPallete, BackgroundColorPalleteWidth, BackgroundColorPalleteHeight;

float xShapesColorPanel, yShapesColorPanel, ShapesColorPanelWidth, ShapesColorPanelHeight;



float templateboxX, templateboxY, templateboxWidth, templateboxHeight;

float musicboxX, musicboxY, musicboxWidth, musicboxHeight;



String closeTitle = "X", Minimise = "□",  Maximise= "□□", Restart = "Erase All";

float xCloseButton, yCloseButton, CloseButtonWidth, CloseButtonHeight;
int closeSize;
color buttonfillclose, buttontextfillclose;

float xRestartButton, yRestartButton, RestartButtonWidth, RestartButtonHeight;
int restartSize, restartSizeHover;
color buttonfillrestart, buttontextfillrestart;
boolean shouldRestart = false;
float restartCanvasX, restartCanvasY, restartCanvasWidth, restartCanvasHeight;
String restartHoverText = "This is to erase all of the drawing and to restart";
boolean continueRestartHoverOver = false;

float xMinMaxButton, yMinMaxButton, xMinMaxButtonWidth, xMinMaxButtonHeight;
int MinMaxSize;
color buttonfillMinMax, buttontextfillMinMax;
boolean MaxAlready = false; //means that its in Maximised mode already, if 'true' that means that the window is max


int appWidth = width;
int appHeight = height;


float xStartBox, yStartBox, StartBoxWidth, StartBoxHeight;
boolean starterBox = true;
float IntroX, IntroY, IntroWidth, IntroHeight;
String introText = "Welcome to the Drawing Program";
int introSize;
color buttonfillIntro = resetWhite, buttonfilltextintro = orange;
float xStart, yStart, StartWidth, StartHeigt;
int startSize;
String startText = "Press to Start the Program Here!";
color buttonfillStart, buttonfilltextstart;






void populationOfVariables() {   
  
  
  xCenter = width/2;
  yCenter = height/2;
  
  
  
  
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
  
  
  
  
  //Population Intro
  IntroX = xCenter - xCenter*1/2;
  IntroY = yCenter - yCenter*1/2; 
  IntroWidth = xCenter; 
  IntroHeight = yCenter-yCenter*1/4;
  //Text
  introFont = createFont("Arial Narrow", 45);
  //End Text
  //End Population Intro
  
  
  
  //Population Start
  xStart = xCenter - xCenter*1.25/5;
  yStart = yCenter + yCenter*2/5;
  StartWidth = IntroWidth*3/4 - IntroWidth*1/4;
  StartHeigt = IntroHeight/2;
  //Text
  startFont = createFont("Arial Narrow", 45);
  //End Text  
  //End Population start
  

  
  //Population of Starter box for program
   xStartBox = width*0;
   yStartBox = height*0;
   StartBoxWidth = width; 
   StartBoxHeight = height;
  
  //End Population of Starter box for program
  

  //Population of Virtual Piece of Paper
  drawingSurfaceX = xCenter - xCenter*1/2;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = xCenter + xCenter*1/2; 
  drawingSurfaceHeight = height*6.5/10;
  //End Population of Virtual Piece of Paper
  
  
  //Population of Restart Canvas box(that'll cover the canvas with a new virtual box everytime)
  restartCanvasX = xCenter - xCenter*1/2;
  restartCanvasY = height*0;
  restartCanvasWidth = xCenter + xCenter*1/2; 
  restartCanvasHeight = height*6.5/10;
  //End Population Restart Canvas box
  
  
  //Population of Restart Button
  xRestartButton = xCenter + xCenter*7.5/10;
  yRestartButton = height*6.5/10;
  RestartButtonWidth = width*1/10;
  RestartButtonHeight = height*1/10;
  //Text
  RestartFont = createFont("Arial Narrow", 45);
  RestartFontHover = createFont("Arial Narrow", 45);
  //End Text 
  //End Population of Restart Button
  
  
  //the following is an attempt to trying to increase the app screen to full screen or decrease the screen to the original/default screen size
  ////Population of Maximise/Minimise Button
  //xMinMaxButton = xCenter + xCenter*7.5/10;
  //yMinMaxButton = height*7.75/10;
  //xMinMaxButtonWidth = width*1/10;
  //xMinMaxButtonHeight = height*1/10; 
  ////Text
  //MinMaxFont = createFont("Arial Narrow", 55);
  ////End Text 
  ////End Population of Maximise/Minimise Button
  
  
  //Population of Close Button
  xCloseButton = xCenter + xCenter*7.5/10;
  yCloseButton = height*9/10;
  CloseButtonWidth = width*1/10;
  CloseButtonHeight = height*1/10; 
  //Text
  closeFont = createFont("Arial Narrow", 45);
  //End Text 
  //End Population of Close Button
  
  
  //Population of Line Tool Box
  lineboxX = width * 0;
  lineboxY = height * 0;
  lineboxWidth = xCenter - xCenter*1/2;
  lineboxHeight = (height*6.5/10)/2;
  //End Population of Line Tool Box
  
  //Population of line tool switch
  xlinetool = width*0;
  ylinetool = height*0;
  linetoolWidth = ((xCenter - xCenter*1/2)/2)/2;
  linetoolHeight = (height*6.5/10)/4;
  //Text
  linebuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  //End population of line tool switch
  
  
  //Population of stamp tool button
  xstamptool = ((xCenter - xCenter*1/2)/2)*1/2;
  ystamptool = height*0;
  stamptoolWidth  = ((xCenter - xCenter*1/2)/2)/2;
  stamptoolHeight = (height*6.5/10)/4;
  drawingDiameter = width*1/100; //diameter of circle/stamping line tool
  //Text
  stampFont = createFont("Arial Narrow", 45);
  //End Text 
  //End population of stamp tool button
  
  
  //Population of dotted line
  xDottedLine = ((xCenter - xCenter*1/2)/2)/2 + ((xCenter - xCenter*1/2)/2)/2; 
  yDottedLine = height*0;
  DottedLineWidth = ((xCenter - xCenter*1/2)/2)/2;
  DottedLineHeight = (height*6.5/10)/4;
  //Text
  DottedLineFont = createFont("Arial Narrow", 45);
  //End Text
  //End Population of dotted line
  
  
  //Population of eraser tool switch
  eraserboxX = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/2;
  eraserboxY = height*0;
  eraserboxWidth = ((xCenter - xCenter*1/2)/2)/2;
  eraserboxHeight = (height*6.5/10)/4;
  //Text
  eraserbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  //End population of eraser tool
  
  
  //Population of tools for tools box(drawing mode and eraser)
  xTools = width*0;
  yTools = (height*6.5/10)/4;
  toolsWidth = xCenter - xCenter*1/2;
  toolsHeight = (height*6.5/10)/4;
  //End Population of tools for tools box(drawing mode and eraser)
  
  //Population for different size drawing tool
  xThin = width*0;
  yThin = (height*6.5/10)/4;
  thinWidth = ((xCenter - xCenter*1/2)/2)*2/3;
  thinHeight = (height*6.5/10)/4;
  //Text
  thinbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  
  xThick = ((xCenter - xCenter*1/2)/2)*2/3;
  yThick = (height*6.5/10)/4;
  thickWidth = ((xCenter - xCenter*1/2)/2)*2/3;
  thickHeight = (height*6.5/10)/4; 
  //Text
  thickbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  
  xThicker = ((xCenter - xCenter*1/2)/2)*1.3333333;
  yThicker = (height*6.5/10)/4;
  thickerWidth = ((xCenter - xCenter*1/2)/2)*2/3;
  thickerHeight = (height*6.5/10)/4;
  //Text
  thickerbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  //End Population for different size drawing tool
  
  
  
  
  //Population Shapes and Color Panel
  xShapesColorPanel = width*0;
  yShapesColorPanel = (height*6.5/10)/2;
  ShapesColorPanelWidth = xCenter - xCenter*1/2; 
  ShapesColorPanelHeight =  height - (height*6.5/10)/2;
  
  //Population of Shapes Button Box
  shapesboxX = width * 0;
  shapesboxY = (height*6.5/10)/2;
  shapesboxWidth = (xCenter - xCenter*1/2)/2;
  shapesboxHeight = (height - (height*6.5/10)/2)*1/3;
  //Text
  shapesbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  
  //shapes tool box
  xShapeOptions = (xCenter - xCenter*1/2)/2;
  yShapeOptions = (height*6.5/10)/2;
  ShapeWidth = (xCenter - xCenter*1/2)/2;
  ShapeHeight = (height - (height*6.5/10)/2)*1/3;
  
  //circle box
  xCircle = (xCenter - xCenter*1/2)/2;
  yCircle = (height*6.5/10)/2;
  CircleWidth = ((xCenter - xCenter*1/2)/2)/2;
  CircleHeight = ((height - (height*6.5/10)/2)*1/3)/2;
  //Text
  circleFont = createFont("Arial Narrow", 45);
  //End Text 
  //shape
  circleShape = createShape(ELLIPSE, drawingSurfaceX+drawingSurfaceX*1/4, drawingSurfaceY - drawingSurfaceY*1/2, xCenter, yCenter); //error
  //
  //end 
  
  //triangle box
  xTriangle = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)/2;
  yTriangle = (height*6.5/10)/2;
  TriangleWidth = ((xCenter - xCenter*1/2)/2)/2;
  TriangleHeight = ((height - (height*6.5/10)/2)*1/3)/2;
  //Text
  triangleFont = createFont("Arial Narrow", 45);
  //End Text 
  //end
  
  //square box
  xSquare = (xCenter - xCenter*1/2)/2;
  ySquare = (height*6.5/10)/2 + (height*6.5/10)/5.77;
  SquareWidth = ((xCenter - xCenter*1/2)/2)/2;
  SquareHeight = ((height - (height*6.5/10)/2)*1/3)/2;
  //Text
  squareFont = createFont("Arial Narrow", 45);
  //End Text   
  //end
  
  //rectangle box
  xRectangle = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)/2;
  yRectangle = (height*6.5/10)/2 + (height*6.5/10)/5.77;
  RectangleWidth = ((xCenter - xCenter*1/2)/2)/2;
  RectangleHeight = ((height - (height*6.5/10)/2)*1/3)/2;
  //Text
  rectangleFont = createFont("Arial Narrow", 45);
  //End Text 
  //end
  //End Population of Shapes Tool Box
  
  
  
  //Population of Color Tool Box
  xColor = width*0;
  yColor = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3;
  ColorWidth = (xCenter - xCenter*1/2)/2;
  ColorHeight =  (height - (height*6.5/10)/2)*1/3;
  //Text
  colorbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  //End Population of Line Tool Box
  
  
  //Population of Color Fill Background Tool Box
  xBackgroundFiller = width*0;
  yBackgroundFiller = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + (height - (height*6.5/10)/2)*1/3;
  BackgroundFillerWidth = (xCenter - xCenter*1/2)/2;
  BackgroundFillerHeight = (height - (height*6.5/10)/2)*1/3; 
  //Text
  colorfillerbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  //End Population of Color Fill Background Tool Box
  
  
  //Population Color Pallete
  xColorPallete = (xCenter - xCenter*1/2)/2; 
  yColorPallete = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3;
  ColorPalleteWidth = (xCenter - xCenter*1/2)/2;
  ColorPalleteHeight = (height - (height*6.5/10)/2)*1/3;
  //End
  
  //Population Background Color Pallete
  xBackgroundColorPallete = (xCenter - xCenter*1/2)/2; 
  yBackgroundColorPallete = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + (height - (height*6.5/10)/2)*1/3;
  BackgroundColorPalleteWidth = (xCenter - xCenter*1/2)/2;
  BackgroundColorPalleteHeight = (height - (height*6.5/10)/2)*1/3;
  //End
  
  
  //Population for all Color Pallete Colors
  //xRed = ;
  //yRed = ;
  //RedWidth = ;
  //RedHeight = ;
  
  //xBlue = ;
  //yBlue = ;
  //BlueWidth = ;
  //BlueHeight = ;
  
  //xGreen = ;
  //yGreen = ;
  //GreenWidth = ; 
  //GreenHeight = ;
  
  //xOrange = ;
  //yOrange = ;
  //OrangeWidth = ;
  //OrangeHeight = ;
  
  //xYellow = ; 
  //yYellow = ;
  //YellowWidth = ;
  //YelloHeight = ;
  
  //xIndigo = ;
  //yIndigo  = ;
  //IndigoWidth = ;
  //IndigoHeight = ;
  
  //xPink = ;
  //yPink  = ;
  //PinkWidth = ;
  //PinkHeight = ;
  
  //xBlack = ;
  //yBlack = ;
  //BlackWidth = ;
  //BlackHeight = ;
  
  //xWhite = ;
  //yWhite = ;
  //WhiteWidth = ;
  //WhiteHeight = ;
  //End population of all Color Pallete Colors
  
  
  
  //End population

  
  
  //Population of Template Tool Box
  templateboxX = xCenter - xCenter*1/2;
  templateboxY = height*6.5/10;
  templateboxWidth = xCenter - xCenter*2/10;
  templateboxHeight = (height*7/10)/2; 
  //End Population of Template Tool Box
  
  
  //Population of Music Player Tool Box
  musicboxX = xCenter + xCenter*3/10;
  musicboxY = height*6.5/10;
  musicboxWidth = xCenter - xCenter*6/10;
  musicboxHeight = (height*7/10)/2; 
  //End Population of Music Player Tool Box
  
  
  
  
  

  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
  rect(lineboxX, lineboxY, lineboxWidth, lineboxHeight); //the 'Line drawing tool' tool box top left with eraser switch and a stamping tool with different thickness sizes
  rect(musicboxX, musicboxY, musicboxWidth, musicboxHeight);
  rect(templateboxX, templateboxY, templateboxWidth, templateboxHeight);
  //rect(xlinetool, ylinetool, linetoolWidth, linetoolHeight);//is the button to switch to the line tool
  //rect(eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight);//this is the button to switch to the eraser tool
  rect(xTools, yTools, toolsWidth, toolsHeight);
  //rect(xThin, yThin, thinWidth, thinHeight);
  //rect(xThick, yThick, thickWidth, thickHeight);
  //rect(xThicker, yThicker, thickerWidth, thickerHeight);
  rect(xShapesColorPanel, yShapesColorPanel, ShapesColorPanelWidth, ShapesColorPanelHeight); 
  rect(xShapeOptions, yShapeOptions, ShapeWidth, ShapeHeight);
  //rect(xCircle, yCircle, CircleWidth, CircleHeight);
  //rect(xTriangle, yTriangle, TriangleWidth, TriangleHeight);
  //rect(xSquare, ySquare, SquareWidth, SquareHeight);
  //rect(xRectangle, yRectangle, RectangleWidth, RectangleHeight);
  //rect(xstamptool, ystamptool, stamptoolWidth, stamptoolHeight);
  rect(xDottedLine, yDottedLine, DottedLineWidth, DottedLineHeight);
  
  rect(xColorPallete, yColorPallete, ColorPalleteWidth, ColorPalleteHeight);
  rect(xBackgroundColorPallete, yBackgroundColorPallete, BackgroundColorPalleteWidth, BackgroundColorPalleteHeight);
  rect(xRed, yRed, RedWidth, RedHeight);
  rect(xBlue, yBlue, BlueWidth, BlueHeight);
  rect(xGreen, yGreen, GreenWidth, GreenHeight);
  rect(xOrange, yOrange, OrangeWidth, OrangeHeight);
  rect(xYellow, yYellow, YellowWidth, YelloHeight);
  rect(xIndigo, yIndigo, IndigoWidth, IndigoHeight);
  rect(xPink, yPink, PinkWidth, PinkHeight);
  rect(xBlack, yBlack, BlackWidth, BlackHeight);
  rect(xWhite, yWhite, WhiteWidth, WhiteHeight);
  

  
  
  
}
