void backgroundColorFill() {
  //Close button
  //Hover-over color for Close Button
  if (mouseX >= xCloseButton && mouseX <= xCloseButton +  CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) {
    buttonfillcolorfiller = red;
    buttontextfillcolorfiller = resetWhite;
  } else {
    buttonfillcolorfiller = resetWhite;  
    buttontextfillcolorfiller = red;
  }
  //End Hover-over color for Close Button

  fill(buttonfillcolorfiller);
  rect(colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  colorfillerSize = 40; //Changing number until it exists
  textFont(closeFont, colorfillerSize); //used to affext the text
  fill(buttontextfillcolorfiller);
  text(colorfillerText, colorpalettefillerboxX, colorpalettefillerboxY, colorpalettefillerboxWidth, colorpalettefillerboxHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Close button
}
