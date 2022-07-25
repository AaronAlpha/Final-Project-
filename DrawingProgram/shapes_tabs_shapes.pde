void shapesShapes() {
  //Circle button
  //Hover-over color for Circle Button
  if (mouseX >= xCircle && mouseX <= xCircle +  CircleWidth && mouseY >= yCircle && mouseY <= yCircle + CircleHeight) {
    buttonfillcircle = black;
    buttontextfillcircle = resetWhite;
  } else {
    buttonfillcircle = resetWhite;  
    buttontextfillcircle = black;
  }
  //End Hover-over color for Circle Button

  fill(buttonfillcircle);
  rect(xCircle, yCircle, CircleWidth, CircleHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  circleSize = 25; //Changing number until it exists
  textFont(circleFont, circleSize); //used to affext the text
  fill(buttontextfillcircle);
  text(circleText, xCircle, yCircle, CircleWidth, CircleHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Circle button
  
  
  //Triangle button
  //Hover-over color for Triangle Button
  if (mouseX >= xTriangle && mouseX <= xTriangle +  TriangleWidth && mouseY >= yTriangle && mouseY <= yTriangle + TriangleHeight) {
    buttonfilltriangle = black;
    buttontextfilltriangle = resetWhite;
  } else {
    buttonfilltriangle = resetWhite;  
    buttontextfilltriangle = black;
  }
  //End Hover-over color for Triangle Button

  fill(buttonfilltriangle);
  rect(xTriangle, yTriangle, TriangleWidth, TriangleHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  triangleSize = 25; //Changing number until it exists
  textFont(triangleFont, triangleSize); //used to affext the text
  fill(buttontextfilltriangle);
  text(triangleText, xTriangle, yTriangle, TriangleWidth, TriangleHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Triangle button
  
  
  //Square button
  //Hover-over color for Square Button
  if (mouseX >= xSquare && mouseX <= xSquare +  SquareWidth && mouseY >= ySquare && mouseY <= ySquare + SquareHeight) {
    buttonfilleraser = black;
    buttontextfilleraser = resetWhite;
  } else {
    buttonfilleraser = resetWhite;  
    buttontextfilleraser = black;
  }
  //End Hover-over color for Square Button

  fill(buttonfilleraser);
  rect(xSquare, ySquare, SquareWidth, SquareHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  eraserSize = 25; //Changing number until it exists
  textFont(eraserbuttonFont, eraserSize); //used to affext the text
  fill(buttontextfilleraser);
  text(squareText, xSquare, ySquare, SquareWidth, SquareHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Square button
  
  
  //Rectangle button
  //Hover-over color for Rectangle Button
  if (mouseX >= xRectangle && mouseX <= xRectangle +  RectangleWidth && mouseY >= yRectangle && mouseY <= yRectangle + RectangleHeight) {
    buttonfillrectangle = black;
    buttontextfillrectangle = resetWhite;
  } else {
    buttonfillrectangle = resetWhite;  
    buttontextfillrectangle = black;
  }
  //End Hover-over color for Rectangle Button

  fill(buttonfillrectangle);
  rect(xRectangle, yRectangle, RectangleWidth, RectangleHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  rectangleSize = 25; //Changing number until it exists
  textFont(rectangleFont, rectangleSize); //used to affext the text
  fill(buttontextfillrectangle);
  text(rectangleText, xRectangle, yRectangle, RectangleWidth, RectangleHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Rectangle button
  
  
  
  //can improve the shapes tab button by putting shapes instead of text in of it
}
