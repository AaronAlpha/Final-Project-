void colorBox() {
  //Color box

  rect(xColor, yColor, ColorWidth, ColorHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  colorSize = 45; //Changing number until it exists
  textFont(colorbuttonFont, colorSize); //used to affext the text
  fill(black);
  text(colorText, xColor, yColor, ColorWidth, ColorHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  
 
  
  //End Color box
}
