void template() {
  rect(templateboxX, templateboxY, templateboxWidth, templateboxHeight);
  templateSize = 40;
  textAlign(CENTER, CENTER);
  textFont(templateFont, templateSize);
  fill(black);
  text(templateText, templateboxX, templateboxY, templateboxWidth, templateboxHeight);
  fill(resetWhite);
}
