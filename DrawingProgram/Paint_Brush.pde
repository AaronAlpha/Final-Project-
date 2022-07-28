void paintBrush() {
  //Paint brush button
  //Hover-over color for Paint brush Button
  if (mouseX >= xPaintBrush && mouseX <= xPaintBrush +  PaintBrushWidth && mouseY >= yPaintBrush && mouseY <= yPaintBrush + PaintBrushHeight) {
    buttonfillpaint = black;
    buttontextfillpaint = resetWhite;
  } else {
    buttonfillpaint = resetWhite;  
    buttontextfillpaint = black;
  }
  
  //End Hover-over color for Paint brush Button

  fill(buttonfillpaint);
  rect(xPaintBrush, yPaintBrush, PaintBrushWidth, PaintBrushHeight); //is the closing button //needs hover over(color and text)
  textAlign(CENTER, CENTER);
  paintSize = 40; //Changing number until it exists
  textFont(paintFont, paintSize); //used to affext the text
  fill(buttontextfillpaint);
  text(paintText, xPaintBrush, yPaintBrush, PaintBrushWidth, PaintBrushHeight); //'text()' function 'draws' the text 
  fill(resetWhite);
  //End Paint brush button
}
