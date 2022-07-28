//Global Program
Minim minim;
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;
float xCenter, yCenter;
String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";
color purple = #9E05FF, resetWhite = #FFFFFF, red = #FF0000, blue = #0822FF, black = #000000, orange = #F59A39, green =#39F56C, yellow = #EEF539; //or another purple  color = #2c08ff
color indigo = #9F08FF, pink = #FF08CA; 
color lightred = #FF8383, lightblue = #4D60FF, lightgreen = #74FF98, lightorange = #FFAE62, lightyellow = #F9FF64, lightindigo = #CA7FFC, lightpink = #FC8FE5, lightblack = #484646, lightwhite = #E3DCDC;
color backgroundColor, drawingColor = black;

String[] fontList = PFont.list(); //To list all fonts avaliable on OS
PFont closeFont, RestartFont, RestartFontHover, MinMaxFont, introFont, startFont, linebuttonFont, eraserbuttonFont, toolsFont, thinbuttonFont, thickbuttonFont, thickerbuttonFont;
PFont shapesbuttonFont, colorbuttonFont, colorfillerbuttonFont, circleFont, triangleFont, squareFont, rectangleFont, stampFont, DottedLineFont;
PFont redFont, blueFont, greenFont, orangeFont, yellowFont, indigoFont, pinkFont, blackFont, whiteFont, paintFont, templateFont, mtitleFont;
PFont SongNameFont, PrevFont, NextFont, muteFont, unmuteFont, loopFont;

  

PImage flowerPic, carPic, lovelySightPic;


AudioPlayer lineSE, stampSE, paintSE, eraserSE;

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

float xPaintBrush, yPaintBrush, PaintBrushWidth, PaintBrushHeight;
int paintSize;
String paintText = "Marker";
color buttonfillpaint, buttontextfillpaint;
boolean paintDraw = false;

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
AudioPlayer CircleSE, TriangleSE, SquareSE, RectangleSE;

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
AudioPlayer redSE, blueSE, greenSE, orangeSE, yellowSE, pinkSE, indigoSE, blackSE, whiteSE;

float xBackgroundFiller, yBackgroundFiller, BackgroundFillerWidth, BackgroundFillerHeight;
String backgroundFillerText = "Color filler for background";
int backgroundFillerSize;
color buttonfillBackgroundFiller, buttontextfillBackgroundFiller;
AudioPlayer redbackgroundSE, bluebackgroundSE, greenbackgroundSE, orangebackgroundSE, yellowbackgroundSE, pinkbackgroundSE, indigobackgroundSE, blackbackgroundSE, whitebackgroundSE;

float xColorPallete, yColorPallete, ColorPalleteWidth, ColorPalleteHeight;
float xRed, yRed, RedWidth, RedHeight;
color buttonfillred, buttontextfillred;
int redSize;
String redTitle = "R";
boolean redBool = false;

float xBlue, yBlue, BlueWidth, BlueHeight;
color buttonfillblue, buttontextfillblue;
int blueSize;
String blueTitle = "B";
boolean blueBool = false;

float xGreen, yGreen, GreenWidth, GreenHeight;
color buttonfillgreen, buttontextfillgreen;
int greenSize;
String greenTitle = "G";
boolean greenBool = false;

float xOrange, yOrange, OrangeWidth, OrangeHeight;
color buttonfillorange, buttontextfillorange;
int orangeSize;
String orangeTitle = "O";
boolean orangeBool = false;

float xYellow, yYellow, YellowWidth, YelloHeight;
color buttonfillyellow, buttontextfillyellow;
int yellowSize;
String yellowTitle = "Y";
boolean yellowBool = false;

float xIndigo, yIndigo, IndigoWidth, IndigoHeight;
color buttonfillindigo, buttontextfillindigo;
int indigoSize;
String indigoTitle = "I";
boolean indigoBool = false;

float xPink, yPink, PinkWidth, PinkHeight;
color buttonfillpink, buttontextfillpink;
int pinkSize;
String pinkTitle = "P";
boolean pinkBool = false;

float xBlack, yBlack, BlackWidth, BlackHeight;
color buttonfillblack, buttontextfillblack;
int blackSize;
String blackTitle = "B";
boolean blackBool = false;

float xWhite, yWhite, WhiteWidth, WhiteHeight;
color buttonfillwhite, buttontextfillwhite;
int whiteSize;
String whiteTitle = "W"; 
boolean whiteBool = false;


float xBackgroundColorPallete, yBackgroundColorPallete, BackgroundColorPalleteWidth, BackgroundColorPalleteHeight;
float xRedBackground, yRedBackground, RedBackgroundWidth, RedBackgroundHeight;
boolean redBackground = false;

float xBlueBackground, yBlueBackground, BlueBackgroundWidth, BlueBackgroundHeight;
boolean blueBackground = false;

float xGreenBackground, yGreenBackground, GreenBackgroundWidth, GreenBackgroundHeight;
boolean greenBackground = false;

float xOrangeBackground, yOrangeBackground, OrangeBackgroundWidth, OrangeBackgroundHeight;
boolean orangeBackground = false;

float xYellowBackground, yYellowBackground, YellowBackgroundWidth, YellowBackgroundHeight;
boolean yellowBackground = false;

float xIndigoBackground, yIndigoBackground, IndigoBackgroundWidth, IndigoBackgroundHeight;
boolean indigoBackground = false;

float xPinkBackground, yPinkBackground, PinkBackgroundWidth, PinkBackgroundHeight;
boolean pinkBackground = false;

float xBlackBackground, yBlackBackground, BlackBackgroundWidth, BlackBackgroundHeight;
boolean blackBackground = false;

float xWhiteBackground, yWhiteBackground, WhiteBackgroundWidth, WhiteBackgroundHeight;
boolean whiteBackground = false;





float xShapesColorPanel, yShapesColorPanel, ShapesColorPanelWidth, ShapesColorPanelHeight;


AudioPlayer flowerSE, carSE, sightSE;
float templateboxX, templateboxY, templateboxWidth, templateboxHeight;
float xtemplateTitle, ytemplateTitle, templateTitleWidth, templateTitleHeight;
int templateSize;
String templateText = "Templates";
int largerDimensionflower, smallerDimensionflower, largerDimensioncar, smallerDimensioncar, largerDimensionlovelySight, smallerDimensionlovelySight;
boolean flowerWidthlarger = false, flowerHeightlarger = false, carWidthlarger = false, carHeightlarger = false, lovelySightWidthlarger = false, lovelySightHeightlarger = false;
float flowerWidthRatio = 0.0, flowerHeightRatio = 0.0, carWidthRatio = 0.0, carHeightRatio  = 0.0, lovelySightWidthRatio = 0.0, lovelySightHeightRatio = 0.0;
float xFlower, yFlower, FlowerWidth, FlowerHeight;
color buttonfillflower;
boolean flower = false;
float xCar, yCar, CarWidth, CarHeight;
color buttonfillcar;
boolean car = false;
float xLovelySight, yLovelySight, LovelySightWidth, LovelySightHeight;
color buttonfillsight;
boolean sight = false;
float adjustedFlowerWidth, adjustedFlowerHeight, adjustedCarWidth, adjustedCarHeight, adjustedLovelySightWidth, adjustedLovelySightHeight;




AudioPlayer Immortalsong;
AudioMetaData ImmortalsongMetaData;
float musicboxX, musicboxY, musicboxWidth, musicboxHeight;
float xMusicTitle, yMusicTitle, MusicTitleWidth, MusicTitleHeight;
int mtitleSize;
color buttonfillmusictitle;
String mtitleText = "Music Player";

float xPlayPause, yPlayPause, PlayPauseWidth, PlayPauseHeight;
color buttonfillPlay, buttonfilltinyPlay, buttonfilltinyPause;
boolean Play_Pause = false;

float xFForward, yFForward, FForwardWidth, FForwardHeight;
color buttonfillFForward, buttonfilltinyFF;
//int fforwardSize;

float xRForward, yRForward, RForwardWidth, RForwardHeight;
color buttonfillRForward, buttonfilltinyRF;
//int rforwardSize;

float xMuteUnmute, yMuteUnmute, MuteUnmuteWidth, MuteUnmuteHeight;
color buttonfillMuteUnmute, buttontextfillMuteUnmute;
int muteunmuteSize;
String muteText = "Mute", unmuteText = "Unmute";
boolean Mute_Unmute = false;

float xPSong, yPSong, PSongWidth, PSongHeight;
color buttonfillPSong, buttontextfillPSong;
int psongSize;
String psongText = "Previous";

float xNSong, yNSong, NSongWidth, NSongHeight;
color buttonfillNSong, buttontextfillNSong;
int nsongSize;
String nsongText = "Next";

float xSongTitle, ySongTitle, SongTitleWidth, SongTitleHeight;
int songtitleSize;
String songTitle; 

float xLoop, yLoop, LoopWidth, LoopHeight;
color buttonfillLoop, buttontextfillLoop;
int loopSize;
String loopText = "Loop";

float xStop, yStop, StopWidth, StopHeight;
color buttonfillStop, buttonfilltinyStop;
//int stopSize;
//String stopText = "Stop"; //n ot need, will use square pic




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
String introText = "Welcome to the Drawing Program! :)";
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
  
  
  //smaller Diameter
    
  
  
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
  xStart = xCenter - xCenter*1/2;
  yStart = height*6.5/10;
  StartWidth = xCenter - xCenter*2/10;
  StartHeigt = (height*7/10)/2;
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
  
  
  minim = new Minim(this);
  
  
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
  
  
  
  minim = new Minim(this);
  lineSE = minim.loadFile("Daytime Forrest Bonfire.mp3");
  stampSE = minim.loadFile("Daytime Forrest Bonfire.mp3"); 
  paintSE = minim.loadFile("Daytime Forrest Bonfire.mp3");
  eraserSE = minim.loadFile("Daytime Forrest Bonfire.mp3");
  
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
  
  //Population of paint brush
  xPaintBrush = ((xCenter - xCenter*1/2)/2)/2 + ((xCenter - xCenter*1/2)/2)/2;
  yPaintBrush = height*0;//((height*6.5/10)/4)/2; 
  PaintBrushWidth = ((xCenter - xCenter*1/2)/2)/2; 
  PaintBrushHeight = (height*6.5/10)/4;
  paintFont = createFont("Arial Narrow", 45);
  //end
    
  
  ////Population of dotted line
  //xDottedLine = ((xCenter - xCenter*1/2)/2)/2 + ((xCenter - xCenter*1/2)/2)/2; 
  //yDottedLine = height*0;
  //DottedLineWidth = ((xCenter - xCenter*1/2)/2)/2;
  //DottedLineHeight = ((height*6.5/10)/4)/2;
  ////Text
  //DottedLineFont = createFont("Arial Narrow", 45);
  ////End Text
  ////End Population of dotted line
  

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
  //sound effect
  minim = new Minim(this);
  CircleSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Car_Door_Closing.mp3"); 
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
  //sound effect
  minim = new Minim(this);
  TriangleSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Car_Door_Closing.mp3");
  //
  //end
  
  //square box
  xSquare = (xCenter - xCenter*1/2)/2;
  ySquare = (height*6.5/10)/2 + (height*6.5/10)/5.77;
  SquareWidth = ((xCenter - xCenter*1/2)/2)/2;
  SquareHeight = ((height - (height*6.5/10)/2)*1/3)/2;
  //Text
  squareFont = createFont("Arial Narrow", 45);
  //End Text   
  //sound effect
  minim = new Minim(this);
  SquareSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Car_Door_Closing.mp3");
  //
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
  //sound effect
  minim = new Minim(this);
  RectangleSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Car_Door_Closing.mp3");
  //
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
  minim = new Minim(this);
  redSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  blueSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  greenSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  orangeSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  yellowSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  pinkSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  indigoSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  blackSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  whiteSE = minim.loadFile("Music Program_FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3");
  
  
  xRed = (xCenter - xCenter*1/2)/2;
  yRed = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3;
  RedWidth = ((xCenter - xCenter*1/2)/2)/3;
  RedHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  redFont = createFont("Arial Narrow", 45);

  
  xGreen = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3; 
  yGreen = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3;
  GreenWidth = ((xCenter - xCenter*1/2)/2)/3; 
  GreenHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  greenFont = createFont("Arial Narrow", 45);
  
  xBlue = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3 + ((xCenter - xCenter*1/2)/2)*1/3;
  yBlue = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3;
  BlueWidth = ((xCenter - xCenter*1/2)/2)/3;
  BlueHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  blueFont = createFont("Arial Narrow", 45);
  
  
  xOrange = (xCenter - xCenter*1/2)/2;
  yOrange = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3;
  OrangeWidth = ((xCenter - xCenter*1/2)/2)/3;
  OrangeHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  orangeFont = createFont("Arial Narrow", 45);
  
  
  xYellow = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3; 
  yYellow = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3;
  YellowWidth = ((xCenter - xCenter*1/2)/2)/3;
  YelloHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  yellowFont = createFont("Arial Narrow", 45);
  
  xIndigo = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3 + ((xCenter - xCenter*1/2)/2)*1/3;
  yIndigo  = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3;
  IndigoWidth = ((xCenter - xCenter*1/2)/2)/3;
  IndigoHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  indigoFont = createFont("Arial Narrow", 45);
  
  xPink = (xCenter - xCenter*1/2)/2;
  yPink  = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3;
  PinkWidth = ((xCenter - xCenter*1/2)/2)/3;
  PinkHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  pinkFont = createFont("Arial Narrow", 45);
  
  xBlack = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3;
  yBlack = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3;
  BlackWidth = ((xCenter - xCenter*1/2)/2)/3;
  BlackHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  blackFont = createFont("Arial Narrow", 45);
  
  xWhite = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3 + ((xCenter - xCenter*1/2)/2)*1/3;
  yWhite = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3;
  WhiteWidth = ((xCenter - xCenter*1/2)/2)/3;
  WhiteHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  whiteFont = createFont("Arial Narrow", 45);

  //End population of all Color Pallete Colors
  
  
  
  
  //Population for all Background Color Pallete Colors
  
  minim = new Minim(this);
  redbackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  bluebackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  greenbackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  orangebackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  yellowbackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  pinkbackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  indigobackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  blackbackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  whitebackgroundSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  
  xRedBackground = (xCenter - xCenter*1/2)/2;
  yRedBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 +  (height - (height*6.5/10)/2)*1/3;
  RedBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  RedBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xBlueBackground = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3 + ((xCenter - xCenter*1/2)/2)*1/3;
  yBlueBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + (height - (height*6.5/10)/2)*1/3;
  BlueBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  BlueBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xGreenBackground = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3;
  yGreenBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + (height - (height*6.5/10)/2)*1/3;
  GreenBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3; 
  GreenBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xOrangeBackground = (xCenter - xCenter*1/2)/2;
  yOrangeBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + (height - (height*6.5/10)/2)*1/3;
  OrangeBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  OrangeBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xYellowBackground = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3; 
  yYellowBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + (height - (height*6.5/10)/2)*1/3;
  YellowBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  YellowBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xIndigoBackground = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3 + ((xCenter - xCenter*1/2)/2)*1/3;
  yIndigoBackground  = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + (height - (height*6.5/10)/2)*1/3;
  IndigoBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  IndigoBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xPinkBackground = (xCenter - xCenter*1/2)/2;
  yPinkBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + (height - (height*6.5/10)/2)*1/3;
  PinkBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  PinkBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xBlackBackground = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3;
  yBlackBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + (height - (height*6.5/10)/2)*1/3;
  BlackBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  BlackBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  
  xWhiteBackground = (xCenter - xCenter*1/2)/2 + ((xCenter - xCenter*1/2)/2)*1/3 + ((xCenter - xCenter*1/2)/2)*1/3;
  yWhiteBackground = (height*6.5/10)/2 + (height - (height*6.5/10)/2)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + ((height - (height*6.5/10)/2)*1/3)*1/3 + (height - (height*6.5/10)/2)*1/3;
  WhiteBackgroundWidth = ((xCenter - xCenter*1/2)/2)/3;
  WhiteBackgroundHeight = ((height - (height*6.5/10)/2)*1/3)/3;
  //End population of all Background Color Pallete Colors
  
  
  //End population

  
  //Population of Template Tool Box
  minim = new Minim(this);
  flowerSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  carSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  sightSE = minim.loadFile("MostMinimalCode_OneSongPlay_groove.mp3");
  
  templateboxX = xCenter - xCenter*1/2;
  templateboxY = height*6.5/10;
  templateboxWidth = xCenter - xCenter*2/10;
  templateboxHeight = (height*7/10)/2; 
  
  xtemplateTitle = xCenter - xCenter*1/2;
  ytemplateTitle = height*6.5/10;
  templateTitleWidth = (xCenter - xCenter*2/10);
  templateTitleHeight = ((height*7/10)/2)*1/5;
  templateFont = createFont("Arial Narrow", 45); 
  
  
  xFlower = xCenter - xCenter*1/2;
  yFlower = height*6.5/10 + ((height*7/10)/2)*1/5;
  FlowerWidth = (xCenter - xCenter*2/10)*1/3;
  FlowerHeight = (height*7/10)/2 - ((height*7/10)/2)*1/5;
  
  xCar = xCenter - xCenter*1/2 + (xCenter - xCenter*2/10)*1/3;
  yCar = height*6.5/10 + ((height*7/10)/2)*1/5;
  CarWidth = (xCenter - xCenter*2/10)*1/3;
  CarHeight = (height*7/10)/2 - ((height*7/10)/2)*1/5; 
  
  xLovelySight = xCenter - xCenter*1/2 + (xCenter - xCenter*2/10)*1/3 + (xCenter - xCenter*2/10)*1/3;
  yLovelySight = height*6.5/10 + ((height*7/10)/2)*1/5;
  LovelySightWidth = (xCenter - xCenter*2/10)*1/3;
  LovelySightHeight = (height*7/10)/2 - ((height*7/10)/2)*1/5; 
  
  
  
 //End Population of Template Tool Box
  
  
  
  
  //Music Player/JukeBox stuff
  //Population of Music Player Tool Box
  musicboxX = xCenter + xCenter*3/10;
  musicboxY = height*6.5/10;
  musicboxWidth = xCenter - xCenter*6/10;
  musicboxHeight = (height*7/10)/2; 
  
  xMusicTitle = xCenter + xCenter*3/10 + (xCenter*3/10)*1/3;
  yMusicTitle = height*6.5/10;
  MusicTitleWidth = (xCenter - xCenter*6/10)*1/2;
  MusicTitleHeight = ((height*7/10)/2)*2/10;
  mtitleFont = createFont("Arial Narrow", 45);
  
  minim = new Minim(this);
  Immortalsong = minim.loadFile("Immortal - NEFFEX.mp3");
  ImmortalsongMetaData = Immortalsong.getMetaData();
  
  xPlayPause = xCenter + xCenter*3/10 + (xCenter*3/10)*1/3 + (xCenter*3/10)*1/4;
  yPlayPause = height*6.5/10 + ((height*7/10)/2)*4/10 ;
  PlayPauseWidth = ((xCenter - xCenter*6/10)*1/2)/4;
  PlayPauseHeight = (((height*7/10)/2)*2/10)/1.5;
  
  xFForward = xCenter + xCenter*3/10 + (xCenter*3/10)*1/3 + (xCenter*3/10)*1/4 + (xCenter*3/10)*1/4;
  yFForward = height*6.5/10 + ((height*7/10)/2)*4/10;
  FForwardWidth = ((xCenter - xCenter*6/10)*1/2)/4;
  FForwardHeight = (((height*7/10)/2)*2/10)/1.5;
  
  xRForward = xCenter + xCenter*3/10 + (xCenter*3/10)*1/3 + (xCenter*3/10)*1/4 - (xCenter*3/10)*1/4  ;
  yRForward = height*6.5/10 + ((height*7/10)/2)*4/10;
  RForwardWidth = ((xCenter - xCenter*6/10)*1/2)/4;
  RForwardHeight = (((height*7/10)/2)*2/10)/1.5;
  
  
  xSongTitle = xCenter + xCenter*3/10 ;
  ySongTitle = height*6.5/10 + ((height*7/10)/2)*6/10;
  SongTitleWidth = xCenter - xCenter*6/10; //or xCenter - xCenter*6/10 for song name; change starting x value for the long name width to the x coordinate of the music player box itself
  SongTitleHeight = (((height*7/10)/2)*2/10)/1.5;
  SongNameFont = createFont("Arial Narrow", 45);
  
  //xPSong = xCenter + xCenter*3/10;
  //yPSong = height*6.5/10 + ((height*7/10)/2)*8/10;
  //PSongWidth = ((xCenter - xCenter*6/10)*1/2)*1/2;
  //PSongHeight = (((height*7/10)/2)*2/10)/1.5;
  //PrevFont = createFont("Arial Narrow", 45);
  
  //xNSong = xCenter + xCenter*6/10;
  //yNSong = height*6.5/10 + ((height*7/10)/2)*8/10;
  //NSongWidth = ((xCenter - xCenter*6/10)*1/2)*1/2;
  //NSongHeight = (((height*7/10)/2)*2/10)/1.5;
  //NextFont = createFont("Arial Narrow", 45);
  
  xMuteUnmute = xCenter + xCenter*3/10 + (xCenter*3/10)*1/3 + (xCenter*3/10)*1/6;
  yMuteUnmute = height*6.5/10 + ((height*7/10)/2)*8/10;
  MuteUnmuteWidth = ((xCenter - xCenter*6/10)*1/2)/2;
  MuteUnmuteHeight = (((height*7/10)/2)*2/10)/1.5;
  muteFont = createFont("Arial Narrow", 45);
  unmuteFont = createFont("Arial Narrow", 45);
  
  xLoop = xCenter + xCenter*3/10;
  yLoop = height*6.5/10 + ((height*7/10)/2)*4/10;
  LoopWidth = ((xCenter - xCenter*6/10)*1/2)/3;
  LoopHeight = (((height*7/10)/2)*2/10)/1.5;
  loopFont = createFont("Arial Narrow", 45);
  
  xStop = xCenter + xCenter*6.33/10;
  yStop = height*6.5/10 + ((height*7/10)/2)*4/10;
  StopWidth = ((xCenter - xCenter*6/10)*1/2)/3;
  StopHeight = (((height*7/10)/2)*2/10)/1.5;
  

  
  //End Population of Music Player Tool Box\
  //End Music Player stuff
  
  
  
  
  backgroundColor = resetWhite;
  fill(backgroundColor);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
  fill(resetWhite);
  rect(lineboxX, lineboxY, lineboxWidth, lineboxHeight); //the 'Line drawing tool' tool box top left with eraser switch and a stamping tool with different thickness sizes
  rect(musicboxX, musicboxY, musicboxWidth, musicboxHeight);
  rect(templateboxX, templateboxY, templateboxWidth, templateboxHeight);
  rect(xtemplateTitle, ytemplateTitle, templateTitleWidth, templateTitleHeight);
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
  rect(xPaintBrush, yPaintBrush, PaintBrushWidth, PaintBrushHeight);
  
  rect(xColorPallete, yColorPallete, ColorPalleteWidth, ColorPalleteHeight);
  rect(xRed, yRed, RedWidth, RedHeight);
  rect(xBlue, yBlue, BlueWidth, BlueHeight);
  rect(xGreen, yGreen, GreenWidth, GreenHeight);
  rect(xOrange, yOrange, OrangeWidth, OrangeHeight);
  rect(xYellow, yYellow, YellowWidth, YelloHeight);
  rect(xIndigo, yIndigo, IndigoWidth, IndigoHeight);
  rect(xPink, yPink, PinkWidth, PinkHeight);
  rect(xBlack, yBlack, BlackWidth, BlackHeight);
  rect(xWhite, yWhite, WhiteWidth, WhiteHeight);
  
  rect(xBackgroundColorPallete, yBackgroundColorPallete, BackgroundColorPalleteWidth, BackgroundColorPalleteHeight);
  rect(xRedBackground, yRedBackground, RedBackgroundWidth, RedBackgroundHeight);
  rect(xBlueBackground, yBlueBackground, BlueBackgroundWidth, BlueBackgroundHeight);
  rect(xGreenBackground, yGreenBackground, GreenBackgroundWidth, GreenBackgroundHeight);
  rect(xOrangeBackground, yOrangeBackground, OrangeBackgroundWidth, OrangeBackgroundHeight);
  rect(xYellowBackground, yYellowBackground, YellowBackgroundWidth, YellowBackgroundHeight);
  rect(xIndigoBackground, yIndigoBackground, IndigoBackgroundWidth, IndigoBackgroundHeight);
  rect(xPinkBackground, yPinkBackground, PinkBackgroundWidth, PinkBackgroundHeight);
  rect(xBlackBackground, yBlackBackground, BlackBackgroundWidth, BlackBackgroundHeight);
  rect(xWhiteBackground, yWhiteBackground, WhiteBackgroundWidth, WhiteBackgroundHeight);
  
  //rect(xMusicTitle, yMusicTitle, MusicTitleWidth, MusicTitleHeight);
  //rect(xPlayPause, yPlayPause, PlayPauseWidth, PlayPauseHeight);
  //rect(xFForward, yFForward, FForwardWidth, FForwardHeight);
  //rect( xRForward, yRForward, RForwardWidth, RForwardHeight);
  //rect( xMuteUnmute, yMuteUnmute, MuteUnmuteWidth, MuteUnmuteHeight);
  //rect( xPSong, yPSong, PSongWidth, PSongHeight);
  //rect( xNSong, yNSong, NSongWidth, NSongHeight);
  //rect( xSongTitle, ySongTitle, SongTitleWidth, SongTitleHeight);
  //rect(xLoop, yLoop, LoopWidth, LoopHeight);
  //rect(xStop, yStop, StopWidth, StopHeight);


  

}
