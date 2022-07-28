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
  } else {
    buttonfillPlay = resetWhite;
  }
  //end
  rect(xPlayPause, yPlayPause, PlayPauseWidth, PlayPauseHeight);
  textAlign(CENTER, CENTER);
  
  
  
  //end play
  
  
  
  //fast forward Button
  //HoverOver for fast forward button
  if (mouseX >= && mouseX <= && mouseY >= && mouseY <= ) {
  } else {
  }
  //end
  //end fast forward


  //reverse forward Button
  //HoverOver for reverse forward button
  if (mouseX >= && mouseX <= && mouseY >= && mouseY <= ) {
  } else {
  }
  //end 
  //end reverse forward


  //Play Button
  //HoverOver for mute button
  if (mouseX >= && mouseX <= && mouseY >= && mouseY <= ) {
  } else {
  }
  //end
  //end play

  //loop Button
  //HoverOver for loop button
  if (mouseX >= && mouseX <= && mouseY >= && mouseY <= ) {
  } else {
  }
  //end
  //end loop

  //stop Button
  //HoverOver for stop button
  if (mouseX >= && mouseX <= && mouseY >= && mouseY <= ) {
  } else {
  }
  //end
  //end stop

  //previous song Button
  //HoverOver for previous song button
  if (mouseX >= && mouseX <= && mouseY >= && mouseY <= ) {
  } else {
  }
  //end
  //end previous song

  //Play Button
  //HoverOver for next song button
  if (mouseX >= && mouseX <= && mouseY >= && mouseY <= ) {
  } else {
  }
  //end
  //end next song
  
  
  
  
  
  rect(xFForward, yFForward, FForwardWidth, FForwardHeight);
  rect( xRForward, yRForward, RForwardWidth, RForwardHeight);
  rect( xMuteUnmute, yMuteUnmute, MuteUnmuteWidth, MuteUnmuteHeight);
  rect( xPSong, yPSong, PSongWidth, PSongHeight);
  rect( xNSong, yNSong, NSongWidth, NSongHeight);
  rect( xSongTitle, ySongTitle, SongTitleWidth, SongTitleHeight);
  rect(xLoop, yLoop, LoopWidth, LoopHeight);
  rect(xStop, yStop, StopWidth, StopHeight);
  
}
