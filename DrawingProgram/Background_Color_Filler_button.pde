void backgroundColorFill() {
  //Background Color box

  rect(xBackgroundFiller, yBackgroundFiller, BackgroundFillerWidth, BackgroundFillerHeight); //is the closing button //needs hover over(color and <del>text</del>)
  textAlign(CENTER, CENTER);
  backgroundFillerSize = 40; //Changing number until it exists
  textFont(colorfillerbuttonFont, backgroundFillerSize); //used to affext the text
  fill(black);
  text(backgroundFillerText, xBackgroundFiller, yBackgroundFiller, BackgroundFillerWidth, BackgroundFillerHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  
  //End Background Color box
}
