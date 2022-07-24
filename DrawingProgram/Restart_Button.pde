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
  
  //if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
  //  if (continueRestartHoverOver == false) {
  //    continueRestartHoverOver = true;
  //  } else {
  //    continueRestartHoverOver = false;
  //  }
  //}

  //if (continueRestartHoverOver == true) {
    
  //  continueRestartHoverOver = false;
    
  //} else {
  //  continueRestartHoverOver = false;
    
  //}
  
  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
    fill(resetWhite);
    rect(xCenter + xCenter*7.15/10,  height*7.45/10, RestartButtonWidth*1.5, RestartButtonHeight*1.5); //is the closing button //needs hover over(color and text)
    textAlign(CENTER, CENTER);
    restartSizeHover = 30; //Changing number until it exists
    textFont(RestartFont, restartSizeHover); //used to affext the text
    fill(black);
    text(restartHoverText, xCenter + xCenter*7.15/10, height*7.45/10, RestartButtonWidth*1.5, RestartButtonHeight*1.5); //'text()' function 'draws' the text 
    fill(resetWhite);
  }//tried with mouseX and mouseY in the rect() but there was a following chain so took it out; plus when mouse is not there on the restrt button, it stays there
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



//void mouseMoved() {
//  if (mouseX >= xRestartButton && mouseX <= xRestartButton +  RestartButtonWidth && mouseY >= yRestartButton && mouseY <= yRestartButton + RestartButtonHeight) {
//    fill(resetWhite);
//    rect(mouseX-width*8/100, mouseY + height*1/10, RestartButtonWidth*1.5, RestartButtonHeight*1.5); //is the closing button //needs hover over(color and text)
//    textAlign(CENTER, CENTER);
//    restartSizeHover = 30; //Changing number until it exists
//    textFont(RestartFont, restartSizeHover); //used to affext the text
//    fill(black);
//    text(restartHoverText, mouseX-width*8/100, mouseY+ height*1/10, RestartButtonWidth*1.5, RestartButtonHeight*1.5); //'text()' function 'draws' the text 
//    fill(resetWhite);

//  }
