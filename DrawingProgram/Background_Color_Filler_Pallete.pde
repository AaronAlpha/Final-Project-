void backgroundPallete() {
  
  //Red button
  //Hover-over color for Red Button
  if (mouseX >= xRedBackground && mouseX <= xRed + RedBackgroundWidth && mouseY >= yRedBackground && mouseY <= yRedBackground + RedBackgroundHeight) {
    buttonfillred = lightred;
    buttontextfillred = resetWhite;
  } else {
    buttonfillred = red;  
    buttontextfillred = resetWhite;
  }
  //End Hover-over color for Red Button

  fill(buttonfillred);
  rect(xRedBackground, yRedBackground, RedBackgroundWidth, RedBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  redSize = 40; //Changing number until it exists
  textFont(redFont, redSize); //used to affext the text
  fill(buttontextfillred);
  text(redTitle, xRedBackground, yRedBackground, RedBackgroundWidth, RedBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Red button
  

  
  //Green button
  //Hover-over color for Green Button
  if (mouseX >= xGreenBackground && mouseX <= xGreenBackground + GreenBackgroundWidth && mouseY >= yGreenBackground && mouseY <= yGreenBackground + GreenBackgroundHeight) {
    buttonfillgreen = lightgreen;
    buttontextfillgreen = resetWhite;
  } else {
    buttonfillgreen = green;  
    buttontextfillgreen = resetWhite;
  }
  //End Hover-over color for Green Button

  fill(buttonfillgreen);
  rect(xGreenBackground, yGreenBackground, GreenBackgroundWidth, GreenBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  greenSize = 40; //Changing number until it exists
  textFont(greenFont, greenSize); //used to affext the text
  fill(buttontextfillgreen);
  text(greenTitle, xGreenBackground, yGreenBackground, GreenBackgroundWidth, GreenBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Green button
  
  
  
  //Blue button
  //Hover-over color for Blue Button
  if (mouseX >= xBlueBackground && mouseX <= xBlueBackground + BlueBackgroundWidth && mouseY >= yBlueBackground && mouseY <= yBlueBackground + BlueBackgroundHeight) {
    buttonfillblue = lightblue;
    buttontextfillblue = resetWhite;
  } else {
    buttonfillblue = blue;  
    buttontextfillblue = resetWhite;
  }
  //End Hover-over color for Blue Button

  fill(buttonfillblue);
  rect(xBlueBackground, yBlueBackground, BlueBackgroundWidth, BlueBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  blueSize = 40; //Changing number until it exists
  textFont(blueFont, blueSize); //used to affext the text
  fill(buttontextfillblue);
  text(blueTitle, xBlueBackground, yBlueBackground, BlueBackgroundWidth, BlueBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Blue button
  
  
  
  
  //Orange button
  //Hover-over color for Orange Button
  if (mouseX >= xOrangeBackground && mouseX <= xOrangeBackground + OrangeBackgroundWidth && mouseY >= yOrangeBackground && mouseY <= yOrangeBackground + OrangeBackgroundHeight) {
    buttonfillorange = lightorange;
    buttontextfillorange = resetWhite;
  } else {
    buttonfillorange = orange;  
    buttontextfillorange = resetWhite;
  }
  //End Hover-over color for Orange Button

  fill(buttonfillorange);
  rect(xOrangeBackground, yOrangeBackground, OrangeBackgroundWidth, OrangeBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  orangeSize = 40; //Changing number until it exists
  textFont(orangeFont, orangeSize); //used to affext the text
  fill(buttontextfillorange);
  text(orangeTitle, xOrangeBackground, yOrangeBackground, OrangeBackgroundWidth, OrangeBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Orange button
  
  
  
  
  //Yellow button
  //Hover-over color for Yellow Button
  if (mouseX >= xYellowBackground && mouseX <= xYellowBackground + YellowBackgroundWidth && mouseY >= yYellowBackground && mouseY <= yYellowBackground + YellowBackgroundHeight) {
    buttonfillyellow = lightyellow;
    buttontextfillyellow = resetWhite;
  } else {
    buttonfillyellow = yellow;  
    buttontextfillyellow = resetWhite;
  }
  //End Hover-over color for Yellow Button

  fill(buttonfillyellow);
  rect(xYellowBackground, yYellowBackground, YellowBackgroundWidth, YellowBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  yellowSize = 40; //Changing number until it exists
  textFont(yellowFont, yellowSize); //used to affext the text
  fill(buttontextfillyellow);
  text(yellowTitle, xYellowBackground, yYellowBackground, YellowBackgroundWidth, YellowBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Yellow button
  
  
  //Indigo button
  //Hover-over color for Indigo Button
  if (mouseX >= xIndigoBackground && mouseX <= xIndigoBackground + IndigoBackgroundWidth && mouseY >= yIndigoBackground && mouseY <= yIndigoBackground + IndigoBackgroundHeight) {
    buttonfillindigo = lightindigo;
    buttontextfillindigo = resetWhite;
  } else {
    buttonfillindigo = indigo;  
    buttontextfillindigo = resetWhite;
  }
  //End Hover-over color for Indigo Button

  fill(buttonfillindigo);
  rect(xIndigoBackground, yIndigoBackground, IndigoBackgroundWidth, IndigoBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  indigoSize = 40; //Changing number until it exists
  textFont(indigoFont, indigoSize); //used to affext the text
  fill(buttontextfillindigo);
  text(indigoTitle, xIndigoBackground, yIndigoBackground, IndigoBackgroundWidth, IndigoBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Indigo button
  
  
  
  //Pink button
  //Hover-over color for Pink Button
  if (mouseX >= xPinkBackground && mouseX <= xPinkBackground + PinkBackgroundWidth && mouseY >= yPinkBackground && mouseY <= yPinkBackground + PinkBackgroundHeight) {
    buttonfillpink = lightpink;
    buttontextfillpink = resetWhite;
  } else {
    buttonfillpink = pink;  
    buttontextfillpink = resetWhite;
  }
  //End Hover-over color for Pink Button

  fill(buttonfillpink);
  rect(xPinkBackground, yPinkBackground, PinkBackgroundWidth, PinkBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  pinkSize = 40; //Changing number until it exists
  textFont(pinkFont, pinkSize); //used to affext the text
  fill(buttontextfillpink);
  text(pinkTitle, xPinkBackground, yPinkBackground, PinkBackgroundWidth, PinkBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Pink button
  
  
  
  //Black button
  //Hover-over color for Black Button
  if (mouseX >= xBlackBackground && mouseX <= xBlackBackground + BlackBackgroundWidth && mouseY >= yBlackBackground && mouseY <= yBlackBackground + BlackBackgroundHeight) {
    buttonfillblack = lightblack; //basically a more lighter color of black
    buttontextfillblack = resetWhite;
  } else {
    buttonfillblack = black;  
    buttontextfillblack = resetWhite;
  }
  //End Hover-over color for Black Button

  fill(buttonfillblack);
  rect(xBlackBackground, yBlackBackground, BlackBackgroundWidth, BlackBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  blackSize = 40; //Changing number until it exists
  textFont(blackFont, blackSize); //used to affext the text
  fill(buttontextfillblack);
  text(blackTitle, xBlackBackground, yBlackBackground, BlackBackgroundWidth, BlackBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Black button
  
  
  //White button
  //Hover-over color for White Button
  if (mouseX >= xWhiteBackground && mouseX <= xWhiteBackground + WhiteBackgroundWidth && mouseY >= yWhiteBackground && mouseY <= yWhiteBackground + WhiteBackgroundHeight) {
    buttonfillwhite = lightwhite;
    buttontextfillwhite = black;
  } else {
    buttonfillwhite = resetWhite;  
    buttontextfillwhite = black;
  }
  //End Hover-over color for White Button

  fill(buttonfillwhite);
  rect(xWhiteBackground, yWhiteBackground, WhiteBackgroundWidth, WhiteBackgroundHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  whiteSize = 40; //Changing number until it exists
  textFont(whiteFont, whiteSize); //used to affext the text
  fill(buttontextfillwhite);
  text(whiteTitle, xWhiteBackground, yWhiteBackground, WhiteBackgroundWidth, WhiteBackgroundHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Close button
  
}
  
