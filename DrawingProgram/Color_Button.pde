void colorButton() {
  //Color button
  //Hover-over color for Color Button
  if (mouseX >= colorpaletteboxX && mouseX <= colorpaletteboxX +  colorpaletteboxWidth && mouseY >= colorpaletteboxY && mouseY <= colorpaletteboxY + colorpaletteboxHeight) {
    buttonfillcolor = black;
    buttontextfillcolor = resetWhite;
  } else {
    buttonfillcolor = resetWhite;  
    buttontextfillcolor = black;
  }
  //End Hover-over color for Color Button

  fill(buttonfillcolor);
  rect(colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  colorSize = 40; //Changing number until it exists
  textFont(colorbuttonFont, colorSize); //used to affext the text
  fill(buttontextfillcolor);
  text(colortext, colorpaletteboxX, colorpaletteboxY, colorpaletteboxWidth, colorpaletteboxHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Color button
}
