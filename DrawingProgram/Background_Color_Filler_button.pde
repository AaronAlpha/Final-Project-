  void backgroundColorFill() {
    //Background Color button
    //Hover-over color for Background Color Button
    if (mouseX >= xBackgroundFiller && mouseX <= xBackgroundFiller + BackgroundFillerWidth && mouseY >= yBackgroundFiller  && mouseY <= yBackgroundFiller + BackgroundFillerHeight) {
      buttonfillBackgroundFiller= black;
      buttontextfillBackgroundFiller = resetWhite;
    } else {
      buttonfillBackgroundFiller = resetWhite;  
      buttontextfillBackgroundFiller = black;
    }
    //End Hover-over color for Background Color Button
  
    fill(buttonfillBackgroundFiller);
    rect(xBackgroundFiller, yBackgroundFiller, BackgroundFillerWidth, BackgroundFillerHeight); //is the closing button //needs hover over(color and <del>text</del>)
    textAlign(CENTER, CENTER);
    backgroundFillerSize = 40; //Changing number until it exists
    textFont(colorfillerbuttonFont, backgroundFillerSize); //used to affext the text
    fill(buttontextfillBackgroundFiller);
    text(backgroundFillerText, xBackgroundFiller, yBackgroundFiller, BackgroundFillerWidth, BackgroundFillerHeight); //'text()' function 'draws' the text 
    fill(resetWhite);
    //End Background Color button
  }
