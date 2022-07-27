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
  if (flowerWidth >= flowerHeight) {
    largerDimensionflower = flowerWidth;
    smallerDimensionflower = flowerHeight;
    flowerWidthlarger = true;
  } else {
    largerDimensionflower = flowerHeight;
    smallerDimensionflower = flowerWidth;
    flowerHeightlarger = true;
  }

  if (flowerWidthlarger == true) flowerWidthRatio = float(largerDimensionflower) / float(largerDimensionflower);
  if (flowerWidthlarger == true) flowerHeightRatio = float(smallerDimensionflower) / float(largerDimensionflower);  

  if (flowerHeightlarger == true) flowerWidthRatio = float(smallerDimensionflower) / float(largerDimensionflower);
  if (flowerHeightlarger == true) flowerHeightRatio = float(largerDimensionflower) / float(largerDimensionflower);


  adjustedFlowerWidth = FlowerWidth * flowerWidthRatio;
  adjustedFlowerHeight = FlowerHeight * flowerHeightRatio;

 

  println(largerDimensionflower, smallerDimensionflower, flowerWidthlarger, flowerHeightlarger);
  println(xFlower, yFlower, adjustedFlowerWidth, adjustedFlowerHeight);




  carPic = loadImage("car pic 1.jpg");
  int carWidth = 412, carHeight = 319;
  if (carWidth >= carHeight) {
    largerDimensioncar = carWidth;
    smallerDimensioncar = carHeight;
    carWidthlarger = true;
  } else {
    largerDimensioncar = carHeight;
    smallerDimensioncar = carWidth;
    carHeightlarger = true;
  }

  if (carWidthlarger == true) carWidthRatio = float(largerDimensioncar) / float(largerDimensioncar);
  if (carWidthlarger == true) carHeightRatio = float(smallerDimensioncar) / float(largerDimensioncar);  

  if (carHeightlarger == true) carWidthRatio = float(smallerDimensioncar) / float(largerDimensioncar);
  if (carHeightlarger == true) carHeightRatio = float(largerDimensioncar) / float(largerDimensioncar);


  adjustedCarWidth = CarWidth * carWidthRatio;
  adjustedCarHeight = CarHeight * carHeightRatio;


  


  println(largerDimensioncar, smallerDimensioncar, carWidthlarger, carHeightlarger);
  println(xCar, yCar, adjustedCarWidth, adjustedCarHeight);





  lovelySightPic = loadImage("park pic 2.jpg");
  int lovelySightWidth = 780, lovelySightHeight = 952;
  if (lovelySightWidth >= lovelySightHeight) {
    largerDimensionlovelySight = lovelySightWidth;
    smallerDimensionlovelySight = lovelySightHeight;
    lovelySightWidthlarger = true;
  } else {
    largerDimensionlovelySight = lovelySightHeight;
    smallerDimensionlovelySight = lovelySightWidth;
    lovelySightHeightlarger = true;
  }

  if (lovelySightWidthlarger == true) lovelySightWidthRatio = float(largerDimensionlovelySight) / float(largerDimensionlovelySight);
  if (lovelySightWidthlarger == true) lovelySightHeightRatio = float(smallerDimensionlovelySight) / float(largerDimensionlovelySight);  

  if (lovelySightHeightlarger == true) lovelySightWidthRatio = float(smallerDimensionlovelySight) / float(largerDimensionlovelySight);
  if (lovelySightHeightlarger == true) lovelySightHeightRatio = float(largerDimensionlovelySight) / float(largerDimensionlovelySight);


  adjustedLovelySightWidth = LovelySightWidth * lovelySightWidthRatio;
  adjustedLovelySightHeight = LovelySightHeight * lovelySightHeightRatio;

  


  println(largerDimensionlovelySight, smallerDimensionlovelySight, lovelySightWidthlarger, lovelySightHeightlarger);
  println(xLovelySight, yLovelySight, adjustedLovelySightWidth, adjustedLovelySightHeight);
}
