void colorButton() {
  //Color button
  //Hover-over color for Color colorpaletteboxHeight
  if (mouseX >= colorpaletteboxX && mouseX <= colorpaletteboxX + colorpaletteboxHeight && mouseY >= colorpaletteboxY && mouseY <= colorpaletteboxY + colorpaletteboxHeight) {
    buttonfillcolor = black;
    buttontextfillcolor = resetWhite;
  } else {
    buttonfillcolor = resetWhite;  
    buttontextfillcolor = black;
  }
  //End Hover-over color for Close Button

  fill(buttonfillcolor);
  rect(colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  buttontextfillcolor = 40; //Changing number until it exists
  textFont(closeFont, colorSize); //used to affext the text
  fill(buttontextfillcolor);
  text(colortext, colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Close button
};
