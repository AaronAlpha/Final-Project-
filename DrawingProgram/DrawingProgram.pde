import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Program
float drawingSurfaceY, drawingSurfaceX, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
boolean draw = false;
float xClosButton, yCloseButton, CloseButtonWidth, CloseButtonHeight;
float xCenter, yCenter;
String ls = "Landscape or Square", p = "Portrait", DO = "Display Orientation", instruct = "Flip your screen";


void setup() {
  size(1750,900);//Landscape or Square or Portrait 
  
  
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
  drawingSurfaceX = width*1/4;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*2/3; 
  drawingSurfaceHeight = height*4/5;
  //End Population of Virtual Piece of Paper
  
  
  drawingDiameter = width*1/100; //diameter of circle line tool
  
  ////Population of Close Button
  //xClosButton = ;
  //yCloseButton = ;
  //CloseButtonWidth = ;
  //CloseButtonHeight = ; 
  
  
  
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
  
  rect(xClosButton, yCloseButton, CloseButtonWidth, CloseButtonHeight);
};



void draw() {
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter)
  if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY); //Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen
  
  



};


void keyPressed() {
  
}; // will not be required as program going to be touch screen and mousePressed is harder - > rub this out


void mousePressed() {
  if(mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight)
  {if (draw == false) 
  {draw = true;
} else {draw = false;}
} 


};
//End MAIN Program
