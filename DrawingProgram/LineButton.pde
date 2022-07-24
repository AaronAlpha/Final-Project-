void lineButton() {
  //Line button
  //Hover-over color for Line Button
  if (mouseX >= xlinetool && mouseX <= xlinetool +  linetoolWidth && mouseY >= ylinetool && mouseY <= ylinetool + linetoolHeight) {
    buttonfillline = black;
    buttontextfillline = resetWhite;
  } else {
    buttonfillline = resetWhite;  
    buttontextfillline = black;
  }
  
  //End Hover-over color for Line Button

  fill(buttonfillline);
  rect(xlinetool, ylinetool, linetoolWidth, linetoolHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  lineSize = 40; //Changing number until it exists
  textFont(linebuttonFont, lineSize); //used to affext the text
  fill(buttontextfillline);
  text(lineswitchText, xlinetool, ylinetool, linetoolWidth, linetoolHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Line button

}
