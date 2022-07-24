//the following is an attempt to trying to increase the app screen to full screen or decrease the screen to the original/default screen size

void MintoMaxButton() {
  //MintoMax button
  //Hover-over for MintoMax Button
  if (mouseX >= xMinMaxButton && mouseX <= xMinMaxButton +  xMinMaxButtonWidth && mouseY >= yMinMaxButton && mouseY <= yMinMaxButton + xMinMaxButtonHeight) {
    buttonfillMinMax = blue;
    buttontextfillMinMax = resetWhite;
  } else {
    buttonfillMinMax = resetWhite;  
    buttontextfillMinMax = blue;
  }
  //End Hover over  for MintoMax Button

  fill(buttonfillMinMax);
  rect(xMinMaxButton, yMinMaxButton, xMinMaxButtonWidth, xMinMaxButtonHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  MinMaxSize = 40; //Changing number until it exists
  textFont(MinMaxFont, MinMaxSize); //used to affext the text
  fill(buttontextfillMinMax);
  text(Minimise, xMinMaxButton, yMinMaxButton, xMinMaxButtonWidth, xMinMaxButtonHeight); //'text()' function 'draws' the text //have to make mini button as well with its respective control flow
  fill(resetWhite);
  //End MintoMax button

  
  
  
}
