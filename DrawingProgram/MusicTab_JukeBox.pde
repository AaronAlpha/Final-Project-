void musiceTab() {
  rect(xMusicTitle, yMusicTitle, MusicTitleWidth, MusicTitleHeight);
  textAlign(CENTER, CENTER);
  mtitleSize = 27;
  textFont(mtitleFont, mtitleSize);
  fill(purple);
  text(mtitleText, xMusicTitle, yMusicTitle, MusicTitleWidth, MusicTitleHeight);
  fill(resetWhite);

  //Play Button
  //HoverOver for play button
  if (mouseX >= xPlayPause&& mouseX <= xPlayPause + PlayPauseWidth&& mouseY >= yPlayPause && mouseY <= yPlayPause + PlayPauseHeight) {
    buttonfillPlay = black;
    buttonfilltinyPlay = resetWhite;
    buttonfilltinyPause = resetWhite;
  } else {
    buttonfillPlay = resetWhite;
    buttonfilltinyPlay = black;
    buttonfilltinyPause = black;
  }
  //end
  fill(buttonfillPlay);
  rect(xPlayPause, yPlayPause, PlayPauseWidth, PlayPauseHeight);
  fill(resetWhite);
  
  if (Play_Pause == true) {
    stroke(buttonfilltinyPause);
    strokeWeight(6);
    strokeCap(ROUND);
    line(xPlayPause + xPlayPause*1/98, yPlayPause + yPlayPause/100,  xPlayPause + xPlayPause*1/98, yPlayPause + PlayPauseHeight*8/10);
    line(xPlayPause + xPlayPause*1/40, yPlayPause + yPlayPause/100,  xPlayPause + xPlayPause*1/40, yPlayPause + PlayPauseHeight*8/10);
    strokeWeight(1);
    stroke(black);
  } else{
  fill(buttonfilltinyPlay);
  triangle(xPlayPause + xPlayPause*1/200, yPlayPause + yPlayPause/180,  xPlayPause + xPlayPause*1/180 , yPlayPause + PlayPauseHeight*9/10, xPlayPause + PlayPauseWidth*9/10, yPlayPause + PlayPauseHeight/2); //make play button triangle and pasue(2 rounded lines close together) button shapes
  fill(black);
  }

  //end play



  //fast forward Button
  //HoverOver for fast forward button
  if (mouseX >= xFForward && mouseX <= xFForward + FForwardWidth && mouseY >= yFForward && mouseY <= yFForward + FForwardHeight) {
    buttonfillFForward = black;
    buttonfilltinyFF = resetWhite;
  } else {
    buttonfillFForward = resetWhite;
    buttonfilltinyFF = black;
  }
  //end

  fill(buttonfillFForward);
  rect(xFForward, yFForward, FForwardWidth, FForwardHeight);
  fill(resetWhite);
  
  fill(buttonfilltinyFF);
  triangle(xFForward + xFForward*1/160, yFForward + yFForward/180,  xFForward + xFForward*1/160 , yFForward + yFForward*0.55/10, xFForward + FForwardWidth*9/10, yFForward + FForwardHeight/2);
  stroke(buttonfilltinyFF);
  line(xFForward, yFForward + FForwardHeight/2, xFForward + FForwardWidth*1/2, yFForward + FForwardHeight/2);
  stroke(black);
  fill(resetWhite);
  
  //end fast forward



  //reverse forward Button
  //HoverOver for reverse forward button
  if (mouseX >= xRForward && mouseX <= xRForward + RForwardWidth && mouseY >= yRForward && mouseY <= yRForward + RForwardHeight) {
    buttonfillRForward = black;
    buttonfilltinyRF = resetWhite;
  } else {
    buttonfillRForward =resetWhite;
    buttonfilltinyRF = black;
  }
  //end 
  fill(buttonfillRForward);
  rect(xRForward, yRForward, RForwardWidth, RForwardHeight);
  fill(resetWhite);
  
  fill(buttonfilltinyRF);
  triangle(xRForward , yRForward + RForwardHeight*1/2,  xRForward + xRForward*1/35 , yRForward + yRForward*0.55/10, xRForward + RForwardWidth*8/10, yRForward + yRForward*1/150);
  stroke(buttonfilltinyRF);
  line(xRForward + RForwardWidth, yRForward + RForwardHeight/2, xRForward + RForwardWidth*1/2, yRForward + RForwardHeight/2);
  stroke(black);
  fill(resetWhite);
  
  //end reverse forward


  //Mute Button
  //HoverOver for mute button
  if (mouseX >= xMuteUnmute && mouseX <= xMuteUnmute + MuteUnmuteWidth && mouseY >= yMuteUnmute && mouseY <= yMuteUnmute + MuteUnmuteHeight) {
    buttonfillMuteUnmute = black;
    buttontextfillMuteUnmute = resetWhite;
  } else {
    buttonfillMuteUnmute = resetWhite;
    buttontextfillMuteUnmute = black;
  }
  //end
  fill(buttonfillMuteUnmute);
  rect(xMuteUnmute, yMuteUnmute, MuteUnmuteWidth, MuteUnmuteHeight);
  textAlign(CENTER, CENTER);
  muteunmuteSize = 20;
  textFont(muteFont, muteunmuteSize);
  fill(buttontextfillMuteUnmute);
  if (Mute_Unmute == true) {
    text(unmuteText, xMuteUnmute, yMuteUnmute, MuteUnmuteWidth, MuteUnmuteHeight);
  } else if(Mute_Unmute == false) {
    text(muteText, xMuteUnmute, yMuteUnmute, MuteUnmuteWidth, MuteUnmuteHeight);
  }
  fill(resetWhite);
  //end mute

  //loop Button
  //HoverOver for loop button
  if (mouseX >= xLoop && mouseX <= xLoop + LoopWidth&& mouseY >= yLoop && mouseY <= yLoop + LoopHeight) {
    buttonfillLoop = black;
    buttontextfillLoop = resetWhite;
  } else {
    buttonfillLoop = resetWhite;
    buttontextfillLoop = black ;
  }
  //end
  fill(buttonfillLoop);
  rect(xLoop, yLoop, LoopWidth, LoopHeight);
  textAlign(CENTER, CENTER);
  loopSize = 20;
  textFont(loopFont, loopSize);
  fill(buttontextfillLoop);
  text(loopText, xLoop, yLoop, LoopWidth, LoopHeight);
  fill(resetWhite);
  //end loop

  //Stop Button
  //HoverOver for Stop button
  if (mouseX >= xStop && mouseX <= xStop + StopWidth && mouseY >= yStop && mouseY <= yStop + StopHeight) {
    buttonfillStop = black;
    buttonfilltinyStop = resetWhite;
  } else {
    buttonfillStop = resetWhite;
    buttonfilltinyStop = black;
  }
  //end
  fill(buttonfillStop);
  rect(xStop, yStop, StopWidth, StopHeight);
  fill(resetWhite);

  fill(buttonfilltinyStop); 
  square(xStop + xStop/100, yStop + yStop/110, StopWidth/2);
  fill(resetWhite);

  //end Stop


  //previous song Button
  //HoverOver for previous song button
  if (mouseX >= xPSong && mouseX <= xPSong + PSongWidth && mouseY >= yPSong && mouseY <= yPSong + PSongHeight) {
    buttonfillPSong = black;
    buttontextfillPSong = resetWhite;
  } else {
    buttonfillPSong = resetWhite;   
    buttontextfillPSong = black;
  }
  //end
  fill(buttonfillPSong);
  rect(xPSong, yPSong, PSongWidth, PSongHeight);
  textAlign(CENTER, CENTER);
  psongSize = 20;
  textFont(PrevFont, psongSize);
  fill(buttontextfillPSong);
  text(psongText, xPSong, yPSong, PSongWidth, PSongHeight);
  fill(resetWhite);
  //end previous song 


  //next song Button
  //HoverOver for next song button
  if (mouseX >= xNSong && mouseX <= xNSong + NSongWidth&& mouseY >= yNSong && mouseY <= yNSong + NSongHeight) {
    buttonfillNSong = black;
    buttontextfillNSong = resetWhite;
  } else {
    buttonfillNSong = resetWhite;
    buttontextfillNSong = black;
  }
  //end
  fill(buttonfillNSong);
  rect(xNSong, yNSong, NSongWidth, NSongHeight);
  textAlign(CENTER, CENTER);
  nsongSize = 20;
  textFont(NextFont, nsongSize);
  fill(buttontextfillNSong);
  text(nsongText, xNSong, yNSong, NSongWidth, NSongHeight);
  fill(resetWhite);
  //end next song



  //Song title
  rect(xSongTitle, ySongTitle, SongTitleWidth, SongTitleHeight);
  textAlign(CENTER, CENTER);
  songtitleSize = 10;
  textFont(SongNameFont, songtitleSize);

  songTitle = WaterfallsongMetaData.title();
  fill(resetWhite);
  text(songTitle, xSongTitle, ySongTitle, SongTitleWidth, SongTitleHeight);
  fill(resetWhite);
  //
}
