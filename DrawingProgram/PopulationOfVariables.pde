//Global Program
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;
float xCenter, yCenter;
String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";


float lineboxX, lineboxY, lineboxWidth, lineboxHeight;
float xlinetool, ylinetool, linetoolWidth, linetoolHeight;
int lineSize;
String lineswitchText = "Drawing mode";
color buttonfillline, buttontextfillline;
boolean lineDraw = false;
float eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight;
int eraserSize;
String eraserswitchText= "Eraser";
color buttonfilleraser, buttontextfilleraser;
boolean eraser = false, eraserdraw;

float shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight;
float colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight;
float colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight;
float musicboxX, musicboxY, musicboxWidth, musicboxHeight;
float templateboxX, templateboxY, templateboxWidth, templateboxHeight;

color purple = #9E05FF, resetWhite = #FFFFFF, red = #FF0000, blue = #5792F5, black = #000000, orange = #F59A39; //or another purple  color = #2c08ff
PFont closeFont, RestartFont, RestartFontHover, MinMaxFont, introFont, startFont, linebuttonFont, eraserbuttonFont;


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

String[] fontList = PFont.list(); //To list all fonts avaliable on OS

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
  
  
  
  
  
  drawingDiameter = width*1/100; //diameter of circle line tool
  
  
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
  
  
  
  //Population of line tool switch
  xlinetool = width*0;
  ylinetool = height*0;
  linetoolWidth = (xCenter - xCenter*1/2)/2;
  linetoolHeight = (height*6.5/10)/2;
  //Text
  linebuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  //End population of line tool switch
  
  
  //Population of eraser tool switch
  eraserboxX = width*0 + (xCenter - xCenter*1/2)/2;
  eraserboxY = height*0;
  eraserboxWidth = (xCenter - xCenter*1/2)/2;
  eraserboxHeight = (height*6.5/10)/2;
  //Text
  eraserbuttonFont = createFont("Arial Narrow", 45);
  //End Text 
  //End population of eraser tool
 
  
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
  
  
  //Population of Template Tool Box
  templateboxX = xCenter ;
  templateboxY = height*6.5/10;
  templateboxWidth = xCenter - xCenter*6/10;
  templateboxHeight = height; 
  //End Population of Template Tool Box
  
  
  //Population of Music Player Tool Box
  musicboxX = xCenter + xCenter*3/10;
  musicboxY = height*6.5/10;
  musicboxWidth = xCenter - xCenter*6/10;
  musicboxHeight = height; 
  //End Population of Music Player Tool Box
  
  
  
  
  
  
  
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
  rect(lineboxX, lineboxY, lineboxWidth, lineboxHeight); //the 'Line drawing tool' tool box top left with eraser switch
  rect(shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); 
  rect(colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight);
  rect(colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight);
  rect(musicboxX, musicboxY, musicboxWidth, musicboxHeight);
  rect(templateboxX, templateboxY, templateboxWidth, templateboxHeight);
  rect(xlinetool, ylinetool, linetoolWidth, linetoolHeight);//is the button to switch to the line tool
  rect(eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight);//this is the button to switch to the eraser tool
  
  
  
}
