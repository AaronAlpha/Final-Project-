void restartButton() {
  //Restart button
  //Hover-over color for Restart Button
  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
    buttonfillrestart = purple;
    buttontextfillrestart = resetWhite;
  } else {
    buttonfillrestart = resetWhite;  
    buttontextfillrestart = purple;
  }
  //End Hover-over color for Restart Button
  
  
  //Hover-over text for Restart Button
  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
    fill(resetWhite);
    rect(mouseX+width*1/2, mouseY+height*1/2, RestartButtonWidth*2, RestartButtonHeight*2); //is the closing button //needs hover over(color and text)
    textAlign(CENTER, CENTER);
    restartSizeHover = 50; //Changing number until it exists
    textFont(RestartFont, restartSizeHover); //used to affext the text
    fill(black);
    text(restartHoverText, mouseX+width*1/2,mouseY+height*1/2, RestartButtonWidth*2, RestartButtonHeight*2); //'text()' function 'draws' the text 
    fill(resetWhite);
  }
  //End Hover-over text for Restart Button
  
  

  fill(buttonfillrestart);
  rect(xRestartButton, yRestartButton, RestartButtonWidth, RestartButtonHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  restartSize = 40; //Changing number until it exists
  textFont(RestartFont, restartSize); //used to affext the text
  fill(buttontextfillrestart);
  text(Restart, xRestartButton, yRestartButton, RestartButtonWidth, RestartButtonHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Restart button
};
