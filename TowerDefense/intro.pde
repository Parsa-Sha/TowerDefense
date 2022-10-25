//This function draws the INTRO screen.

void intro() {
  background(100);
  
  start.show();
  if (start.press()) mode = PLAY;
}
