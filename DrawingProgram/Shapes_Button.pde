void shapes() {
  //Shapes button
  //Hover-over color for Shapes Button
  if (mouseX >= shapesboxX && mouseX <= shapesboxX + shapesboxWidth && mouseY >= shapesboxY && mouseY <= shapesboxY + shapesboxHeight) {
    buttonfillclose = black;
    buttontextfillclose = resetWhite;
  } else {
    buttonfillclose = resetWhite;  
    buttontextfillclose = black;
  }
  //End Hover-over color for Shapes Button

  fill(buttonfillclose);
  rect(shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  shapesSize = 40; //Changing number until it exists
  textFont(shapesbuttonFont, shapesSize); //used to affext the text
  fill(buttontextfillclose);
  text(shapesButtonText, shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Shapes button
}
