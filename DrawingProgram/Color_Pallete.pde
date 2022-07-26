void colorPallete() {
  //Red button
  //Hover-over color for Red Button
  if (mouseX >= xRed && mouseX <= xRed + RedWidth && mouseY >= yRed && mouseY <= yRed + RedHeight) {
    buttonfillred = red;
    buttontextfillred = resetWhite;
  } else {
    buttonfillred = red;  
    buttontextfillred = resetWhite;
  }
  //End Hover-over color for Red Button

  fill(buttonfillred);
  rect(xRed, yRed, RedWidth, RedHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  redSize = 40; //Changing number until it exists
  textFont(redFont, redSize); //used to affext the text
  fill(buttontextfillred);
  text(redTitle, xRed, yRed, RedWidth, RedHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Red button
  

  //Blue button
  //Hover-over color for Blue Button
  if (mouseX >= xBlue && mouseX <= xBlue + BlueWidth && mouseY >= yBlue && mouseY <= yBlue + BlueHeight) {
    buttonfillblue = blue;
    buttontextfillblue = resetWhite;
  } else {
    buttonfillblue = blue;  
    buttontextfillblue = resetWhite;
  }
  //End Hover-over color for Blue Button

  fill(buttonfillblue);
  rect(xBlue, yBlue, BlueWidth, BlueHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  blueSize = 40; //Changing number until it exists
  textFont(blueFont, blueSize); //used to affext the text
  fill(buttontextfillblue);
  text(blueTitle, xBlue, yBlue, BlueWidth, BlueHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Blue button
  
  
  
  
  //Green button
  //Hover-over color for Green Button
  if (mouseX >= xGreen && mouseX <= xGreen + GreenWidth && mouseY >= yGreen && mouseY <= yGreen + GreenHeight) {
    buttonfillgreen = green;
    buttontextfillgreen = resetWhite;
  } else {
    buttonfillgreen = green;  
    buttontextfillgreen = resetWhite;
  }
  //End Hover-over color for Green Button

  fill(buttonfillgreen);
  rect( xGreen, yGreen, GreenWidth, GreenHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  greenSize = 40; //Changing number until it exists
  textFont(greenFont, greenSize); //used to affext the text
  fill(buttontextfillgreen);
  text(greenTitle,  xGreen, yGreen, GreenWidth, GreenHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Green button
  
  
  //Orange button
  //Hover-over color for Orange Button
  if (mouseX >= xOrange && mouseX <= xOrange + OrangeWidth && mouseY >= yOrange && mouseY <= yOrange + OrangeHeight) {
    buttonfillorange = orange;
    buttontextfillorange = resetWhite;
  } else {
    buttonfillorange = orange;  
    buttontextfillorange = resetWhite;
  }
  //End Hover-over color for Orange Button

  fill(buttonfillorange);
  rect(xOrange, yOrange, OrangeWidth, OrangeHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  orangeSize = 40; //Changing number until it exists
  textFont(orangeFont, orangeSize); //used to affext the text
  fill(buttontextfillorange);
  text(orangeTitle, xOrange, yOrange, OrangeWidth, OrangeHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Orange button
  
  
  
  
  //Yellow button
  //Hover-over color for Yellow Button
  if (mouseX >= xYellow && mouseX <= xYellow + YellowWidth && mouseY >= yYellow && mouseY <= yYellow + YelloHeight) {
    buttonfillyellow = yellow;
    buttontextfillyellow = resetWhite;
  } else {
    buttonfillyellow = yellow;  
    buttontextfillyellow = resetWhite;
  }
  //End Hover-over color for Yellow Button

  fill(buttonfillyellow);
  rect(xYellow, yYellow, YellowWidth, YelloHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  yellowSize = 40; //Changing number until it exists
  textFont(yellowFont, yellowSize); //used to affext the text
  fill(buttontextfillyellow);
  text(yellowTitle, xYellow, yYellow, YellowWidth, YelloHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Yellow button
  
  
  //Indigo button
  //Hover-over color for Indigo Button
  if (mouseX >= xIndigo && mouseX <= xIndigo + IndigoWidth && mouseY >= yIndigo && mouseY <= yIndigo + IndigoHeight) {
    buttonfillindigo = indigo;
    buttontextfillindigo = resetWhite;
  } else {
    buttonfillindigo = indigo;  
    buttontextfillindigo = resetWhite;
  }
  //End Hover-over color for Indigo Button

  fill(buttonfillindigo);
  rect(xIndigo, yIndigo, IndigoWidth, IndigoHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  indigoSize = 40; //Changing number until it exists
  textFont(indigoFont, indigoSize); //used to affext the text
  fill(buttontextfillindigo);
  text(indigoTitle, xIndigo, yIndigo, IndigoWidth, IndigoHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Indigo button
  
  
  
  //Pink button
  //Hover-over color for Pink Button
  if (mouseX >= xPink && mouseX <= xPink + PinkWidth && mouseY >= yPink && mouseY <= yPink + PinkHeight) {
    buttonfillpink = pink;
    buttontextfillpink = resetWhite;
  } else {
    buttonfillpink = pink;  
    buttontextfillpink = resetWhite;
  }
  //End Hover-over color for Pink Button

  fill(buttonfillpink);
  rect(xPink, yPink, PinkWidth, PinkHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  pinkSize = 40; //Changing number until it exists
  textFont(pinkFont, pinkSize); //used to affext the text
  fill(buttontextfillpink);
  text(pinkTitle, xPink, yPink, PinkWidth, PinkHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Pink button
  
  
  
  //Black button
  //Hover-over color for Black Button
  if (mouseX >= xBlack && mouseX <= xBlack + BlackWidth && mouseY >= yBlack && mouseY <= yBlack + BlackHeight) {
    buttonfillblack = black;
    buttontextfillblack = resetWhite;
  } else {
    buttonfillblack = black;  
    buttontextfillblack = resetWhite;
  }
  //End Hover-over color for Black Button

  fill(buttonfillblack);
  rect(xBlack, yBlack, BlackWidth, BlackHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  blackSize = 40; //Changing number until it exists
  textFont(blackFont, blackSize); //used to affext the text
  fill(buttontextfillblack);
  text(blackTitle, xBlack, yBlack, BlackWidth, BlackHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Black button
  
  
  //White button
  //Hover-over color for White Button
  if (mouseX >= xWhite && mouseX <= xWhite + WhiteWidth && mouseY >= yWhite && mouseY <= yWhite + WhiteHeight) {
    buttonfillwhite = resetWhite;
    buttontextfillwhite = black;
  } else {
    buttonfillwhite = resetWhite;  
    buttontextfillwhite = black;
  }
  //End Hover-over color for White Button

  fill(buttonfillwhite);
  rect(xWhite, yWhite, WhiteWidth, WhiteHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  whiteSize = 40; //Changing number until it exists
  textFont(whiteFont, whiteSize); //used to affext the text
  fill(buttontextfillwhite);
  text(whiteTitle, xWhite, yWhite, WhiteWidth, WhiteHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Close button
  
}
