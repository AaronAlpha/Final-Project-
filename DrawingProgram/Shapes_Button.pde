void shapes() {
  //Shapes button
  //Hover-over color for Shapes Button
  if (mouseX >= shapesboxX && mouseX <= shapesboxX + shapesboxWidth && mouseY >= shapesboxY && mouseY <= shapesboxY + shapesboxHeight) {
    buttonfillclose = red;
    buttontextfillclose = resetWhite;
  } else {
    buttonfillclose = resetWhite;  
    buttontextfillclose = red;
  }
  //End Hover-over color for Shapes Button

  fill(buttonfillclose);
  rect(shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  shapesSize = 40; //Changing number until it exists
  textFont(shapesbuttonFont, shapesSize); //used to affext the text
  fill(buttontextfillclose);
  if (shapesOn == false) {
    text(shapesButtonTextf, shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); //'text()' function 'draws' the text 
    rect(xShapeOptions*0, yShapeOptions*0, ShapeWidth*0, ShapeHeight*0);
  } else if (shapesOn == true) {
    text(shapesButtonTextt, shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); //'text()' function 'draws' the text 
    rect(xShapeOptions, yShapeOptions, ShapeWidth, ShapeHeight);
  }

  fill(resetWhite);
  //End Shapes button
}
