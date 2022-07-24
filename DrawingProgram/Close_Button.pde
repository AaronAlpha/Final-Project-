void closeButton() {
  //Close button
  //Hover-over color for Close Button
  if (mouseX >= xCloseButton && mouseX <= xCloseButton + CloseButtonWidth && mouseY >= yCloseButton && mouseY <= yCloseButton + CloseButtonHeight) {
    buttonfillclose = red;
    buttontextfillclose = resetWhite;
  } else {
    buttonfillclose = resetWhite;  
    buttontextfillclose = red;
  }
  //End Hover-over color for Close Button

  fill(buttonfillclose);
  rect(xCloseButton, yCloseButton, CloseButtonWidth, CloseButtonHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  closeSize = 40; //Changing number until it exists
  textFont(closeFont, closeSize); //used to affext the text
  fill(buttontextfillclose);
  text(closeTitle, xCloseButton, yCloseButton, CloseButtonWidth, CloseButtonHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Close button
};
