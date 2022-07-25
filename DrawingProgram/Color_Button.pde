void colorButton() {
  //Color button
  //Hover-over color for Color Button
  if (mouseX >= xColor && mouseX <= xColor +  ColorWidth && mouseY >= yColor && mouseY <= yColor + ColorHeight) {
    buttonfillcolor = black;
    buttontextfillcolor = resetWhite;
  } else {
    buttonfillcolor = resetWhite;  
    buttontextfillcolor = black;
  }
  //End Hover-over color for Color Button

  fill(buttonfillcolor);
  rect(xColor, yColor, ColorWidth, ColorHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  colorSize = 45; //Changing number until it exists
  textFont(colorbuttonFont, colorSize); //used to affext the text
  fill(buttontextfillcolor);
  text(colorText, xColor, yColor, ColorWidth, ColorHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  
 
  
  //End Color button
};
