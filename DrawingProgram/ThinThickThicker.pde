void thin() {
  //Thin button
  //Hover-over color for Thin Button
  if (mouseX >= xThin && mouseX <= xThin +  thinWidth && mouseY >= yThin && mouseY <= yThin + thinHeight) {
    buttonfillthin = red;
    buttontextfillthin = resetWhite;
  } else {
    buttonfillthin = resetWhite;  
    buttontextfillthin = red;
  }
  
  //End Hover-over color for Thin Button

  
  fill(buttonfillthin);
  rect(xThin, yThin, thinWidth, thinHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  thinSize = 40; //Changing number until it exists
  textFont(thinbuttonFont, thinSize); //used to affext the text
  fill(buttontextfillthin);
  text(thin, xThin, yThin, thinWidth, thinHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
}

  //End Thin button



void thick() {
  //Thick button
  //Hover-over color for Thick Button
  if (mouseX >= xThick && mouseX <= xThick +  thickWidth && mouseY >= yThick && mouseY <= yThick + thickHeight) {
    buttonfillthick = green;
    buttontextfillthick = resetWhite;
  } else {
    buttonfillthick = resetWhite;  
    buttontextfillthick = green;
  }
  //End Hover-over color for Thick Button
  
  fill(buttonfillthick);
  rect(xThick, yThick, thickWidth, thickHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  thickSize = 40; //Changing number until it exists
  textFont(thickbuttonFont, thickSize); //used to affext the text
  fill(buttontextfillthick);
  text(thick, xThick, yThick, thickWidth, thickHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
}
  //End Thick button
  
  

void thicker() {
  //Thicker button
  //Hover-over color for Thicker Button
  if (mouseX >= xThicker && mouseX <= xThicker +  thickerWidth && mouseY >= yThicker && mouseY <= yThicker + thickerHeight) {
    buttonfillthicker = yellow;
      buttontextfillthicker = resetWhite;
  } else {
    buttonfillthicker = resetWhite;  
    buttontextfillthicker = yellow;
  }
  //End Hover-over color for Thicker Button
  
  fill(buttonfillthicker);
  rect(xThicker, yThicker, thickerWidth, thickerHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  thickerSize = 40; //Changing number until it exists
  textFont(thickerbuttonFont, thickerSize); //used to affext the text
  fill(buttontextfillthicker);
  text(thicker, xThicker, yThicker, thickerWidth, thickerHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
}
  //End Thicker button
