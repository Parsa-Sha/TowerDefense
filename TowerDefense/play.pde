//This function draws the PLAY screen

void play() {
  background(0, 255, 0);
  if (mousePressed) mobs.add(new Mob(10, 1, 1));
  for (int i = 0; i < mobs.size(); i++){
      mobs.act();
  
  }
  
}
