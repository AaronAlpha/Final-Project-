void template() {
  rect(xtemplateTitle, ytemplateTitle, templateTitleWidth, templateTitleHeight);
  templateSize = 40;
  textAlign(CENTER, CENTER);
  textFont(templateFont, templateSize);
  fill(black);
  text(templateText, xtemplateTitle, ytemplateTitle, templateTitleWidth, templateTitleHeight);
  fill(resetWhite);
  
  
  flowerPic = loadImage("flower 4.png");
  int flowerWidth = 248, flowerHeight = 203;
  
  if(flowerWidth > flowerHeight) {
    largerDimensionflower = flowerWidth;
    smallerDimensionflower = flowerHeight;
    flowerWidthlarger = true;
  } else {
    largerDimensionflower = flowerHeight;
    smallerDimensionflower =flowerWidth;
    flowerHeightlarger = true;
  }
  
  if(flowerWidthlarger == true) flowerWidthRatio = largerDimensionflower / largerDimensionflower;
  if(flowerWidthlarger == true) flowerHeightRatio = smallerDimensionflower / largerDimensionflower;  
  
  if(flowerHeightlarger == true) flowerWidthRatio = smallerDimensionflower / largerDimensionflower;
  if(flowerHeightlarger == true) flowerWidthRatio = largerDimensionflower / largerDimensionflower;
  
  
  carPic = loadImage("car pic 1.jpg");
  int carWidth = 412, carHeight = 319;  
  if(carWidth > carHeight) {
    largerDimensioncar = carWidth;
    smallerDimensioncar = carHeight;
    carWidthlarger = true;
  } else {
    largerDimensioncar = carHeight;
    smallerDimensioncar = carWidth;
    carHeightlarger = true;
  }
  
  if(carWidthlarger == true) carWidthRatio = largerDimensioncar / largerDimensioncar;
  if(carWidthlarger == true) carHeightRatio = smallerDimensioncar / largerDimensioncar;  
  
  if(carHeightlarger == true) carWidthRatio = smallerDimensioncar / largerDimensioncar;
  if(carHeightlarger == true) carWidthRatio = largerDimensioncar / largerDimensioncar;
  
  
  
  
  lovelySightPic = loadImage("park pic 2.jpg");
  int lovelySightWidth = 780, lovelySightHeight = 952;
  if(lovelySightWidth > lovelySightHeight) {
    largerDimensionlovelySight = lovelySightWidth;
    smallerDimensionlovelySight = lovelySightHeight;
    lovelySightWidthlarger = true;
  } else {
    largerDimensionlovelySight = lovelySightHeight;
    smallerDimensionlovelySight = lovelySightWidth;
    lovelySightHeightlarger = true;
  }
  
  if(lovelySightWidthlarger == true) lovelySightWidthRatio = largerDimensionlovelySight / largerDimensionlovelySight;
  if(lovelySightWidthlarger == true) lovelySightHeightRatio = smallerDimensionlovelySight / largerDimensionlovelySight;  
  
  if(lovelySightHeightlarger == true) lovelySightWidthRatio = smallerDimensionlovelySight / largerDimensionlovelySight;
  if(lovelySightHeightlarger == true) lovelySightWidthRatio = largerDimensionlovelySight / largerDimensionlovelySight;
  
  
  
  
  
  
  
  
  
}
