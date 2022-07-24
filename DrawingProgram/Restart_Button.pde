void restartButton() {
  //Restart button
  //Hover-over for Close Button
  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
    buttonfillrestart = purple;
    buttontextfillrestart = resetWhite;
  } else {
    buttonfillrestart = resetWhite;  
    buttontextfillrestart = purple;
  }
  //End Hover over  for Restart Button

  fill(buttonfillrestart);
  rect(xRestartButton, yRestartButton, RestartButtonWidth, RestartButtonHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  closeSize = 40; //Changing number until it exists
  textFont(RestartFont, restartSize); //used to affext the text
  fill(buttontextfillrestart);
  text(Restart, xRestartButton, yRestartButton, RestartButtonWidth, RestartButtonHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Restart button
};
