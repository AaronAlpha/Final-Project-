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
  template();

  printArray(fontList); //is another line of code for print statements

  println(largerDimensionflower, smallerDimensionflower, flowerWidthlarger, flowerHeightlarger);
  println(xFlower, yFlower, adjustedFlowerWidth, adjustedFlowerHeight);
  println(largerDimensioncar, smallerDimensioncar, carWidthlarger, carHeightlarger);
  println(xCar, yCar, adjustedCarWidth, adjustedCarHeight);
  println(largerDimensionlovelySight, smallerDimensionlovelySight, lovelySightWidthlarger, lovelySightHeightlarger);
  println(xLovelySight, yLovelySight, adjustedLovelySightWidth, adjustedLovelySightHeight);
  
  println(ImmortalsongMetaData.title());
}

  




void draw() {

  lineButton();
  stampButton();
  paintBrush();
  //dottedLine();
  eraserButton();
  thin();
  thick();
  thicker();
  shapes();
  shapesShapes();
  colorBox();
  colorPallete();
  backgroundColorFill();
  backgroundPallete();
  musiceTab();
  

  //images
  if (mouseX >= xFlower && mouseX <= xFlower + FlowerWidth && mouseY >= yFlower && mouseY <= yFlower + FlowerHeight) {
    buttonfillflower = black;
  } else {
    buttonfillflower = resetWhite;
  }

  fill(buttonfillflower);
  rect(xFlower, yFlower, FlowerWidth, FlowerHeight);
  fill(resetWhite);
  image(flowerPic, xFlower, yFlower, adjustedFlowerWidth, adjustedFlowerHeight);


  if (mouseX >= xCar && mouseX <= xCar + CarWidth && mouseY >= yCar && mouseY <= yCar + CarHeight) {
    buttonfillcar = black;
  } else {
    buttonfillcar = resetWhite;
  }

  fill(buttonfillcar);
  rect(xCar, yCar, CarWidth, CarHeight);
  fill(resetWhite);
  image(carPic, xCar, yCar, adjustedCarWidth, adjustedCarHeight);



  if (mouseX >= xLovelySight && mouseX <= xLovelySight + LovelySightWidth && mouseY >= yLovelySight && mouseY <= yLovelySight + LovelySightHeight) {
    buttonfillsight = black;
  } else {
    buttonfillsight = resetWhite;
  }



  fill(buttonfillsight);
  rect(xLovelySight, yLovelySight, LovelySightWidth, LovelySightHeight);
  fill(resetWhite);  
  image(lovelySightPic, xLovelySight, yLovelySight, adjustedLovelySightWidth, adjustedLovelySightHeight);



  if (flower == true) {
    flowerSE.play();
    car = false;
    sight = false;
    image(flowerPic, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  } else {
    //lineDraw = true;
    //stampDraw = true;
    //paintDraw = true;
    //eraser = true;
    flower = false;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, adjustedFlowerWidth, adjustedFlowerHeight);
    fill(resetWhite);
  }

  if (car == true) {
    carSE.play();
    flower = false;
    sight = false;

    image(carPic, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  } else {
    car = false;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    fill(resetWhite);
    }


    if (sight == true) {
    sightSE.play();
    flower = false;
    car = false;
    image(lovelySightPic, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  } else {    
    sight = false;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    fill(resetWhite);
  }

  //end images




  //Shapes Tab
  if (circle == true) {
    CircleSE.play();
    triangle = false;
    square = false;
    rectangle = false;
    fill(drawingColor);
    ellipse( xCenter + xCenter*1/4, (height*6.5/10)/2, drawingSurfaceHeight, drawingSurfaceHeight);
    fill(resetWhite);
  } else if (triangle == true) {
    TriangleSE.play();
    circle = false;
    square = false;
    rectangle = false;
    fill(drawingColor);
    triangle(xCenter + xCenter*1/4, height*0, (xCenter + xCenter*1/4) - (xCenter + xCenter*1/4)*1/2.3, drawingSurfaceHeight, (xCenter + xCenter*1/4) + (xCenter + xCenter*1/4)*1/2.3, drawingSurfaceHeight);
    fill(resetWhite);
  } else if (square == true) {
    SquareSE.play();
    circle = false;
    triangle = false;
    rectangle = false;
    fill(drawingColor);
    square(((xCenter + xCenter*1/4) + (xCenter + xCenter*1/4)*1/2.3)*1/1.959, height*0, drawingSurfaceHeight);
    fill(resetWhite);
  } else if (rectangle == true) {
    RectangleSE.play();
    circle = false;
    triangle = false;
    square = false;
    fill(drawingColor);
    rect((xCenter + xCenter*1/4) - (xCenter + xCenter*1/4)*1/2.3, height*0, drawingSurfaceWidth*3/4, drawingSurfaceHeight);
    fill(resetWhite);
    //rect();
  } else {
    circle = false;
    triangle = false;
    square = false;
    rectangle = false;
  }
  //end shapes tab




  //Color pallete changer
  if (redBool == true) {
    redSE.play();
    
    blueBool = false;
    greenBool = false;
    orangeBool =false;
    yellowBool = false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;

    drawingColor = red;

  } else {
    redBool = false;
  }



  if (blueBool == true) {
    blueSE.play();
    
    redBool = false;
    greenBool = false;
    orangeBool =false;
    yellowBool = false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;

    drawingColor = blue;

  } else {
    blueBool = false;
  }



  if (greenBool == true) {
    greenSE.play();
    
    redBool = false;
    blueBool = false;
    orangeBool =false;
    yellowBool = false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;

    drawingColor = green;

  } else {
    greenBool = false;
  }


  if (orangeBool == true) {
    orangeSE.play();
    
    blueBool = false;
    greenBool = false;
    redBool =false;
    yellowBool = false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;

    drawingColor = orange;
  } else {
    orangeBool = false;
  }

  if (yellowBool == true) {
    yellowSE.play();
    
    blueBool = false;
    greenBool = false;
    orangeBool =false;
    redBool = false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;

    drawingColor = yellow;
  } else {
    yellowBool = false;
  }


  if (indigoBool == true) {
    indigoSE.play();
    blueBool = false;
    greenBool = false;
    orangeBool =false;
    yellowBool = false;
    redBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;

    drawingColor = indigo;
  } else {
    indigoBool = false;
  }

  if (pinkBool == true) {
    pinkSE.play();
    
    blueBool = false;
    greenBool = false;
    orangeBool =false;
    yellowBool = false;
    indigoBool = false;
    redBool = false;
    blackBool = false;
    whiteBool = false;

    drawingColor = pink;
  } else {
    pinkBool = false;
  }

  if (blackBool == true) {
    blackSE.play();
    
    blueBool = false;
    greenBool = false;
    orangeBool =false;
    yellowBool = false;
    indigoBool = false;
    pinkBool = false;
    redBool = false;
    whiteBool = false;

    drawingColor = black;
  } else {
    blackBool = false;
  }

  if (whiteBool == true) {
    whiteSE.play();
    
    blueBool = false;
    greenBool = false;
    orangeBool =false;
    yellowBool = false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    redBool = false;

    drawingColor = resetWhite;
  } else {
    whiteBool = false;
  }

  //end





  //background color changer/filler
  if (redBackground == true) {
    redbackgroundSE.play();
    
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    backgroundColor = red;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }


  if (greenBackground == true) {
    greenbackgroundSE.play();    
    
    redBackground = false;
    blueBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    backgroundColor = green;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }


  if (blueBackground == true) {
    bluebackgroundSE.play();
    
    
    redBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    backgroundColor = blue;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }


  if (orangeBackground == true) {
    orangebackgroundSE.play();
    
    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    backgroundColor = orange;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }


  if (yellowBackground == true) {
    yellowbackgroundSE.play();
    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    backgroundColor = yellow;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }


  if (indigoBackground == true) {
    indigobackgroundSE.play();
    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    backgroundColor = indigo;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }

  if (pinkBackground == true) {
    pinkbackgroundSE.play();
    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    blackBackground = false;
    whiteBackground = false;


    backgroundColor = pink;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }

  if (blackBackground == true) {
    blackbackgroundSE.play();
    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    whiteBackground = false;

    backgroundColor = black;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }


  if (whiteBackground == true) {
    whitebackgroundSE.play();
    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;


    backgroundColor = resetWhite;
    fill(backgroundColor);
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight); //is the Virtual piece of paper
    fill(resetWhite);
  } else {
  }

  //end





  //start Line tool
  if (lineDraw == true) { 
    lineSE.play();
    
    stampDraw = false;
    DottedLineDraw = false; 
    eraser = false;
    paintDraw = false;


    redBool = false;
    blueBool = false;
    greenBool = false;
    orangeBool = false;
    yellowBool =false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;


    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    circle = false;
    triangle = false;
    square = false;
    rectangle = false;

    if (mousePressed == true) {
      draw = true;
    } else {
      draw = false;
    }

    if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {

      stroke(drawingColor);
      strokeWeight(1); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(5); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(9); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      line(mouseX, mouseY, pmouseX, pmouseY);
      stroke(black);
    } else {
    }
  } else {
  }//end line tool




  //start Stamp tool
  if (stampDraw == true) {  
    stampSE.play(); 
    lineDraw = false;
    DottedLineDraw = false;
    eraser = false;
    paintDraw = false;


    redBool = false;
    blueBool = false;
    greenBool = false;
    orangeBool = false;
    yellowBool =false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;    




    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;


    circle = false;
    triangle = false;
    square = false;
    rectangle = false;


    if (mousePressed == true) {
      draw = true;
    } else {
      draw = false;
    }

    if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(1); 
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //have to make ellipse tool as well  //Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen
      strokeWeight(1);
      stroke(black);
    } else {
    }

    if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(5); 
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(9); 
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen


    if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      stroke(black);
    } else {
    }
  } else {
  }//end stamp tool



  //paint brush logic
  if (paintDraw == true) { 
    paintSE.play(); 
    stampDraw = false;
    DottedLineDraw = false; 
    eraser = false;
    lineDraw = false;


    redBool = false;
    blueBool = false;
    greenBool = false;
    orangeBool = false;
    yellowBool =false;
    indigoBool = false;
    pinkBool = false;
    blackBool = false;
    whiteBool = false;    



    redBackground = false;
    blueBackground = false;
    greenBackground = false;
    orangeBackground = false;
    yellowBackground = false;
    indigoBackground = false;
    pinkBackground = false;
    blackBackground = false;
    whiteBackground = false;

    circle = false;
    triangle = false;
    square = false;
    rectangle = false;

    if (mousePressed == true) {
      draw = true;
    } else {
      draw = false;
    }


    if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(10); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(14); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      strokeWeight(24); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(black);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(drawingColor);
      line(mouseX, mouseY, pmouseX, pmouseY);
      stroke(black);
    } else {
    }
  } else {
  }//end paint brush







  ////start Dotted Line tool
  //if (DottedLineDraw == true) { 
  //  stampDraw = false;
  //  lineDraw = false;
  //  paintDraw = false;

  //redBool = false;
  //blueBool = false;
  //greenBool = false;
  //orangeBool = false;
  //yellowBool =false;
  //indigoBool = false;
  //pinkBool = false;
  //blackBool = false;
  //whiteBool = false;    



  //redBackground = false;
  //blueBackground = false;
  //greenBackground = false;
  //orangeBackground = false;
  //yellowBackground = false;
  //indigoBackground = false;
  //pinkBackground = false;
  //blackBackground = false;
  //whiteBackground = false;


//  circle = false;
//  triangle = false;
//  square = false;
//  rectangle = false;


  //  if (mousePressed == true) {
  //    draw = true;
  //  } else {
  //    draw = false;
  //  }

  //  if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
  //   stroke(drawingColor);
  //    strokeWeight(1); 
  //    line(mouseX, mouseY, pmouseX, pmouseY); 
  //    strokeWeight(1);
  //    stroke(black);
  //  } else {}//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  //  if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
  //    stroke(drawingColor);
  //    strokeWeight(5); 
  //    line(mouseX, mouseY, pmouseX, pmouseY); 
  //    strokeWeight(1);
  //stroke(black);
  //  } else {}//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  //  if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
  //    stroke(drawingColor);
  //    strokeWeight(9); 
  //    line(mouseX, mouseY, pmouseX, pmouseY); 
  //    strokeWeight(1);
  //    stroke(black);
  //  } else {}//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

  //  if (draw == true && Dotted == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight)
  //    stroke(drawingColor);
  //    line(mouseX, mouseY, pmouseX, pmouseY);
  //    stroke(black);
  //    }


  //} else {
  //}//end dotted line tool



  //Start Eraser button logic
  if (eraser == true) { 
    eraserSE.play(); 
    stampDraw = false;
    DottedLineDraw = false;  
    lineDraw = false;
    paintDraw = false;

    circle = false;
    triangle = false;
    square = false;
    rectangle = false;
    if (mousePressed == true) {
      draw = true;
    } else {
      draw = false;
    }


    if (draw == true && thinBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(backgroundColor);
      strokeWeight(1);
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(backgroundColor);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(backgroundColor);
      strokeWeight(5); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(backgroundColor);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen

    if (draw == true && thickerBool == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(backgroundColor);
      strokeWeight(9); 
      line(mouseX, mouseY, pmouseX, pmouseY); 
      strokeWeight(1);
      stroke(backgroundColor);
    } else {
    }//Example Circle Drawing tool //'mouseX' and 'mouseY' is used to start drawing at where the mouse is currently on the screen


    if (draw == true && mouseX >= drawingSurfaceX && mouseX <= drawingSurfaceX + drawingSurfaceWidth && mouseY >= drawingSurfaceY && mouseY <= drawingSurfaceY + drawingSurfaceHeight) {
      stroke(backgroundColor);
      line(mouseX, mouseY, pmouseX, pmouseY);
      stroke(resetWhite); 
      stroke(black);
    } else {
    }
  } else {
  }//end eraser tool








  //user tools
  if (shouldRestart == true)  rect(restartCanvasX, restartCanvasY, restartCanvasWidth, restartCanvasHeight); 
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


  //play button
  if (mouseX >= xPlayPause&& mouseX <= xPlayPause + PlayPauseWidth&& mouseY >= yPlayPause && mouseY <= yPlayPause + PlayPauseHeight) {
    if (Immortalsong.isPlaying()) {
      Immortalsong.pause();
    } else if (Immortalsong.position() >= Immortalsong.length() - Immortalsong.length()*1/5) {//ask sir about .position()/.lenght() ratio
      Immortalsong.rewind();
      Immortalsong.play();
    } else {
      Immortalsong.play();
    }
  }
  //end play button

  if (mouseX >= xPlayPause&& mouseX <= xPlayPause + PlayPauseWidth&& mouseY >= yPlayPause && mouseY <= yPlayPause + PlayPauseHeight) {
    if (Play_Pause == false) {
      Play_Pause = true;
    } else {
     Play_Pause  = false;   
  }
 }


  //fast forward button
  if (mouseX >= xFForward && mouseX <= xFForward + FForwardWidth && mouseY >= yFForward && mouseY <= yFForward + FForwardHeight) Immortalsong.skip(5000);
  //end fast forward


  //reverse forward button
  if (mouseX >= xRForward && mouseX <= xRForward + RForwardWidth && mouseY >= yRForward && mouseY <= yRForward + RForwardHeight) Immortalsong.skip(-5000);
  //end reverse button


  //mute button
  if (mouseX >= xMuteUnmute && mouseX <= xMuteUnmute + MuteUnmuteWidth && mouseY >= yMuteUnmute && mouseY <= yMuteUnmute + MuteUnmuteHeight) {
    if (Immortalsong.isPlaying()) {
      if (Immortalsong.isMuted()) {
        Immortalsong.unmute();
      } else {
        Immortalsong.mute();
      }
    }
  }

  if (mouseX >= xMuteUnmute && mouseX <= xMuteUnmute + MuteUnmuteWidth && mouseY >= yMuteUnmute && mouseY <= yMuteUnmute + MuteUnmuteHeight) {
    if (Mute_Unmute == false) {
      Mute_Unmute = true;
    } else {
      Mute_Unmute = false;
    }
  }
  //end mute


  //loop button
  if (mouseX >= xLoop && mouseX <= xLoop + LoopWidth&& mouseY >= yLoop && mouseY <= yLoop + LoopHeight) Immortalsong.loop();
  //end loop


  //stop button
  if (mouseX >= xStop && mouseX <= xStop + StopWidth && mouseY >= yStop && mouseY <= yStop + StopHeight) {
    if (Immortalsong.isPlaying()) {
      Immortalsong.rewind();
      Immortalsong.play();
    } else {
      Immortalsong.rewind();
    }
  }
  //end stop


  ////previous button
  //if (mouseX >= xPSong && mouseX <= xPSong + PSongWidth && mouseY >= yPSong && mouseY <= yPSong + PSongHeight) {
  //  if (Waterfallsong.skip(-10000) < Waterfallsong.length()) {

  //  } else {
  //  }
  //}
  ////end


  //fast forwarding button

  //end 


  //




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
  //}//this is for the starter button



  if (mouseX >= xFlower && mouseX <= xFlower + FlowerWidth && mouseY >= yFlower && mouseY <= yFlower + FlowerHeight) {
    if (flower == false) {
      flower = true;
      car = false;
      sight = false;
    } else {
      flower = false;
    }
  }

  if (mouseX >= xCar && mouseX <= xCar + CarWidth && mouseY >= yCar && mouseY <= yCar + CarHeight) {
    if (car == false) {
      car = true;
      flower = false;
      sight = false;
    } else {
      car = false;
    }
  }


  if (mouseX >= xLovelySight && mouseX <= xLovelySight + LovelySightWidth && mouseY >= yLovelySight && mouseY <= yLovelySight + LovelySightHeight) {
    if (sight == false) {
      sight = true;
      car = false;
      flower = false;
    } else {
      sight = false;
    }
  }







  //if (mouseX >= xLovelySight && mouseX <= xLovelySight + LovelySightWidth && mouseY >= yLovelySight && mouseY <= yLovelySight + LovelySightHeight) {if () else {}}
}


void mouseClicked() {


  //switch to toggle line mode ON or OFF
  if (mouseX >= xlinetool && mouseX <= xlinetool +  linetoolWidth && mouseY >= ylinetool && mouseY <= ylinetool + linetoolHeight) {
    if (lineDraw == false) {
      lineDraw = true;
      stampDraw = false;
      DottedLineDraw = false;
      paintDraw = false;
      eraser = false;

      circle = false;
      triangle = false;
      square = false;
      rectangle = false;
      //flower = false;
      //car = false;
      //sight = false;
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
      paintDraw = false;


      circle = false;
      triangle = false;
      square = false;
      rectangle = false;
      //flower = false;
      //car = false;
      //sight = false;
    } else {
      stampDraw = false;
    }
  }//end


  //switch to toggle paint brush ON or OFF
  if (mouseX >= xPaintBrush && mouseX <= xPaintBrush +  PaintBrushWidth && mouseY >= yPaintBrush && mouseY <= yPaintBrush + PaintBrushHeight) {
    if (paintDraw == false) {
      paintDraw = true;
      DottedLineDraw = false;
      lineDraw = false;
      stampDraw = false;
      eraser = false;

      circle = false;
      triangle = false;
      square = false;
      rectangle = false;
      //flower = false;
      //car = false;
      //sight = false;
    } else {
      paintDraw = false;
    }
  }


  //switch to toggle stamp mode ON or OFF
  if (mouseX >= xDottedLine && mouseX <= xDottedLine +  DottedLineWidth && mouseY >= yDottedLine && mouseY <= yDottedLine + DottedLineHeight) {
    if (DottedLineDraw == false) {
      DottedLineDraw = true;
      lineDraw = false;
      stampDraw = false;
      eraser = false;
      paintDraw = false;


      //flower = false;
      //car = false;
      //sight = false;
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
      paintDraw = false;

      circle = false;
      triangle = false;
      square = false;
      rectangle = false;

      //flower = false;
      //car = false;
      //sight = false;
    } else {
      eraser = false;
    }
  }
  //end


  //size thickness
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
  //end




  //shapes control flow
  //circle
  if (mouseX >= xCircle && mouseX <= xCircle +  CircleWidth && mouseY >= yCircle && mouseY <= yCircle + CircleHeight) {
    if (circle == false) {
      circle = true;
      triangle = false;
      square = false;
      rectangle = false;
    } else {
      circle = false;
    }
  }
  //end

  //triangle
  if (mouseX >= xTriangle && mouseX <= xTriangle +  TriangleWidth && mouseY >= yTriangle && mouseY <= yTriangle + TriangleHeight) {
    if (triangle == false) {
      triangle = true;
      circle = false;
      square = false;
      rectangle = false;
    } else {
      triangle = false;
    }
  }
  //end

  //square
  if (mouseX >= xSquare && mouseX <= xSquare +  SquareWidth && mouseY >= ySquare && mouseY <= ySquare + SquareHeight) {
    if (square == false) {
      square = true;
      circle = false;
      triangle = false;
      rectangle = false;
    } else {
      square = false;
    }
  }
  //end

  //rectangle
  if (mouseX >= xRectangle && mouseX <= xRectangle +  RectangleWidth && mouseY >= yRectangle && mouseY <= yRectangle + RectangleHeight) {
    if (rectangle == false) {
      rectangle = true;
      circle = false;
      triangle = false;
      square = false;
    } else {
      rectangle = false;
    }
  }
  //end



  //color pallete single IFs
  if (mouseX >= xRed && mouseX <= xRed + RedWidth && mouseY >= yRed && mouseY <= yRed + RedHeight) {
    if (redBool ==false) {
      redBool = true;

      greenBool = false;
      blueBool = false;
      orangeBool = false;
      yellowBool = false;
      indigoBool = false;
      pinkBool = false;
      blackBool = false;
      whiteBool = false;
    } else {
      redBool = false;
    }
  }


  if (mouseX >= xGreen && mouseX <= xGreen + GreenWidth && mouseY >= yGreen && mouseY <= yGreen + GreenHeight) {
    if (greenBool == false) {
      greenBool = true;

      redBool = false;
      blueBool = false;
      orangeBool = false;
      yellowBool = false;
      indigoBool = false;
      pinkBool = false;
      blackBool = false;
      whiteBool = false;
    } else {
      greenBool = false;
    }
  }


  if (mouseX >= xBlue && mouseX <= xBlue + BlueWidth && mouseY >= yBlue && mouseY <= yBlue + BlueHeight) {
    if (blueBool == false) {
      blueBool = true;

      greenBool = false;
      redBool = false;
      orangeBool = false;
      yellowBool = false;
      indigoBool = false;
      pinkBool = false;
      blackBool = false;
      whiteBool = false;
    } else {
      blueBool = false;
    }
  }



  if (mouseX >= xOrange && mouseX <= xOrange + OrangeWidth && mouseY >= yOrange && mouseY <= yOrange + OrangeHeight) {
    if (orangeBool == false) {
      orangeBool = true;

      redBool = false;
      blueBool = false;
      greenBool = false;
      yellowBool = false;
      indigoBool = false;
      pinkBool = false;
      blackBool = false;
      whiteBool = false;
    } else {
      orangeBool = false;
    }
  }


  if (mouseX >= xYellow && mouseX <= xYellow + YellowWidth && mouseY >= yYellow && mouseY <= yYellow + YelloHeight) {
    if (yellowBool == false) {
      yellowBool = true;

      redBool = false;
      blueBool = false;
      orangeBool = false;
      greenBool = false;
      indigoBool = false;
      pinkBool = false;
      blackBool = false;
      whiteBool = false;
    } else {
      yellowBool = false;
    }
  }


  if (mouseX >= xIndigo && mouseX <= xIndigo + IndigoWidth && mouseY >= yIndigo && mouseY <= yIndigo + IndigoHeight) {
    if (indigoBool == false) {
      indigoBool = true;

      greenBool = false;
      redBool = false;
      orangeBool = false;
      yellowBool = false;
      blueBool = false;
      pinkBool = false;
      blackBool = false;
      whiteBool = false;
    } else {
      indigoBool = false;
    }
  }



  if (mouseX >= xPink && mouseX <= xPink + PinkWidth && mouseY >= yPink && mouseY <= yPink + PinkHeight) {
    if (pinkBool == false) {
      pinkBool = true;

      redBool = false;
      blueBool = false;
      orangeBool = false;
      yellowBool = false;
      indigoBool = false;
      greenBool = false;
      blackBool = false;
      whiteBool = false;
    } else {
      pinkBool = false;
    }
  }



  if (mouseX >= xBlack && mouseX <= xBlack + BlackWidth && mouseY >= yBlack && mouseY <= yBlack + BlackHeight) {
    if (blackBool == false) {
      blackBool = true;

      redBool = false;
      blueBool = false;
      orangeBool = false;
      yellowBool = false;
      indigoBool = false;
      pinkBool = false;
      greenBool = false;
      whiteBool = false;
    } else {
      blackBool = false;
    }
  }



  if (mouseX >= xWhite && mouseX <= xWhite + WhiteWidth && mouseY >= yWhite && mouseY <= yWhite + WhiteHeight) {
    if (whiteBool == false) {
      whiteBool = true;

      redBool = false;
      blueBool = false;
      orangeBool = false;
      yellowBool = false;
      indigoBool = false;
      pinkBool = false;
      blackBool = false;
      greenBool = false;
    } else {
      whiteBool = false;
    }
  }
  //end 





  //background color single IFs
  if (mouseX >= xRedBackground && mouseX <= xRed + RedBackgroundWidth && mouseY >= yRedBackground && mouseY <= yRedBackground + RedBackgroundHeight) {
    if (redBackground == false) {
      redBackground = true; 
      blueBackground = false;
      greenBackground = false;
      orangeBackground = false;
      yellowBackground = false;
      indigoBackground = false;
      pinkBackground = false;
      blackBackground = false;
      whiteBackground = false;
    } else {
      redBackground = false;
    }
  }

  if (mouseX >= xGreenBackground && mouseX <= xGreenBackground + GreenBackgroundWidth && mouseY >= yGreenBackground && mouseY <= yGreenBackground + GreenBackgroundHeight) {
    if (greenBackground == false) {
      greenBackground = true; 

      redBackground = false;
      blueBackground = false;
      orangeBackground = false;
      yellowBackground = false;
      indigoBackground = false;
      pinkBackground = false;
      blackBackground = false;
      whiteBackground = false;
    } else {
      greenBackground = false;
    }
  }

  if (mouseX >= xBlueBackground && mouseX <= xBlueBackground + BlueBackgroundWidth && mouseY >= yBlueBackground && mouseY <= yBlueBackground + BlueBackgroundHeight) {
    if (blueBackground == false) {
      blueBackground = true; 

      redBackground = false;
      greenBackground = false;
      orangeBackground = false;
      yellowBackground = false;
      indigoBackground = false;
      pinkBackground = false;
      blackBackground = false;
      whiteBackground = false;
    } else {
      blueBackground = false;
    }
  }


  if (mouseX >= xOrangeBackground && mouseX <= xOrangeBackground + OrangeBackgroundWidth && mouseY >= yOrangeBackground && mouseY <= yOrangeBackground + OrangeBackgroundHeight) {
    if (orangeBackground == false) {
      orangeBackground = true; 

      redBackground = false;
      blueBackground = false;
      greenBackground = false;
      yellowBackground = false;
      indigoBackground = false;
      pinkBackground = false;
      blackBackground = false;
      whiteBackground = false;
    } else {
      orangeBackground = false;
    }
  }


  if (mouseX >= xYellowBackground && mouseX <= xYellowBackground + YellowBackgroundWidth && mouseY >= yYellowBackground && mouseY <= yYellowBackground + YellowBackgroundHeight) {
    if (yellowBackground == false) {
      yellowBackground = true; 

      redBackground = false;
      blueBackground = false;
      greenBackground = false;
      orangeBackground = false;
      indigoBackground = false;
      pinkBackground = false;
      blackBackground = false;
      whiteBackground = false;
    } else {
      yellowBackground = false;
    }
  }


  if (mouseX >= xIndigoBackground && mouseX <= xIndigoBackground + IndigoBackgroundWidth && mouseY >= yIndigoBackground && mouseY <= yIndigoBackground + IndigoBackgroundHeight) {
    if (indigoBackground == false) {
      indigoBackground = true; 

      redBackground = false;
      blueBackground = false;
      greenBackground = false;
      orangeBackground = false;
      yellowBackground = false;
      pinkBackground = false;
      blackBackground = false;
      whiteBackground = false;
    } else {
      indigoBackground = false;
    }
  }


  if (mouseX >= xPinkBackground && mouseX <= xPinkBackground + PinkBackgroundWidth && mouseY >= yPinkBackground && mouseY <= yPinkBackground + PinkBackgroundHeight) {
    if (pinkBackground == false) {
      pinkBackground = true; 

      redBackground = false;
      blueBackground = false;
      greenBackground = false;
      orangeBackground = false;
      yellowBackground = false;
      indigoBackground = false;
      blackBackground = false;
      whiteBackground = false;
    } else {
      pinkBackground = false;
    }
  }



  if (mouseX >= xBlackBackground && mouseX <= xBlackBackground + BlackBackgroundWidth && mouseY >= yBlackBackground && mouseY <= yBlackBackground + BlackBackgroundHeight) {
    if (blackBackground == false) {
      blackBackground = true; 

      redBackground = false;
      blueBackground = false;
      greenBackground = false;
      orangeBackground = false;
      yellowBackground = false;
      indigoBackground = false;
      pinkBackground = false;
      whiteBackground = false;
    } else {
      blackBackground = false;
    }
  }



  if (mouseX >= xWhiteBackground && mouseX <= xWhiteBackground + WhiteBackgroundWidth && mouseY >= yWhiteBackground && mouseY <= yWhiteBackground + WhiteBackgroundHeight) {
    if (whiteBackground == false) {
      whiteBackground = true; 

      redBackground = false;
      blueBackground = false;
      greenBackground = false;
      orangeBackground = false;
      yellowBackground = false;
      indigoBackground = false;
      pinkBackground = false;
      blackBackground = false;
    } else {
      whiteBackground = false;
    }
  }
  //end
}
//End MAIN Program
