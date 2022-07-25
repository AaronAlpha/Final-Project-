void stampButton() {
  //Stamp button
  //Hover-over color for Stamp Button
  if (mouseX >= xstamptool && mouseX <= xstamptool +  stamptoolWidth && mouseY >= ystamptool && mouseY <= ystamptool + stamptoolHeight) {
    buttonfillstamp = black;
    buttontextfillstamp = resetWhite;
  } else {
    buttonfillstamp = resetWhite;  
    buttontextfillstamp = black;
  }
  
  //End Hover-over color for Stamp Button

  fill(buttonfillstamp);
  rect(xstamptool, ystamptool, stamptoolWidth, stamptoolHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  stampSize = 40; //Changing number until it exists
  textFont(stampFont, stampSize); //used to affext the text
  fill(buttontextfillstamp);
  text(stampText, xstamptool, ystamptool, stamptoolWidth, stamptoolHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Stamp button

}
