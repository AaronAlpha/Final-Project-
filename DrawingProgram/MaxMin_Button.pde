void MaxtoMinButton() {
  //MaxtoMin button
  //Hover-over for MaxtoMin Button
  if (mouseX >= xMinMaxButton && mouseX <= xMinMaxButton +  xMinMaxButtonWidth && mouseY >= yMinMaxButton && mouseY <= yMinMaxButton + xMinMaxButtonHeight) {
    buttonfillMinMax = blue;
    buttontextfillMinMax = resetWhite;
  } else {
    buttonfillMinMax = resetWhite;  
    buttontextfillMinMax = blue;
  }
  //End Hover over  for MaxtoMin Button

  fill(buttonfillMinMax);
  rect(xMinMaxButton, yMinMaxButton, xMinMaxButtonWidth, xMinMaxButtonHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  MinMaxSize = 40; //Changing number until it exists
  textFont(MinMaxFont, MinMaxSize); //used to affext the text
  fill(buttontextfillMinMax);
  text(Maximise, xMinMaxButton, yMinMaxButton, xMinMaxButtonWidth, xMinMaxButtonHeight); //'text()' function 'draws' the text //have to make mini button as well with its respective control flow
  fill(resetWhite);
  //End MaxtoMin button
  
  

}
