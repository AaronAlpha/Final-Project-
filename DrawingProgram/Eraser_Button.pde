void eraserButton() {
  //Eraser button
  //Hover-over color for Eraser Button
  if (mouseX >= eraserboxX && mouseX <= eraserboxX +  eraserboxWidth && mouseY >= eraserboxY && mouseY <= eraserboxY + eraserboxHeight) {
    buttonfilleraser = black;
    buttontextfilleraser = resetWhite;
  } else {
    buttonfilleraser = resetWhite;  
    buttontextfilleraser = black;
  }
  //End Hover-over color for Eraser Button

  fill(buttonfilleraser);
  rect(eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  eraserSize = 40; //Changing number until it exists
  textFont(eraserbuttonFont, eraserSize); //used to affext the text
  fill(buttontextfilleraser);
  text(eraserswitchText, eraserboxX, eraserboxY, eraserboxWidth, eraserboxHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Eraser button

}
