void shapes() {
  //Shapes button


  rect(shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  shapesSize = 40; //Changing number until it exists
  textFont(shapesbuttonFont, shapesSize); //used to affext the text
  fill(black);
  text(shapesButtonText, shapesboxX, shapesboxY, shapesboxWidth, shapesboxHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  
  //End Shapes button
}
