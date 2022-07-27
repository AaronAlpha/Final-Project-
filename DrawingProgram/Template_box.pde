void template() {
  rect(xtemplateTitle, ytemplateTitle, templateTitleWidth, templateTitleHeight);
  templateSize = 40;
  textAlign(CENTER, CENTER);
  textFont(templateFont, templateSize);
  fill(black);
  text(templateText, xtemplateTitle, ytemplateTitle, templateTitleWidth, templateTitleHeight);
  fill(resetWhite);
}
