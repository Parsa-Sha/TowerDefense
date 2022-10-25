//Mobs are the monsters that the towers defend against.
//Mobs spawn at the start and then move across the map,
//changing direction when they hit a node. If they get
//to the end of the map, they deal damage to the player.
//Once the player has no more health, it's game over!

class Mob {
  float hp, sp, w, h, x, y;
  int direction; 
  
  Mob(float W, float H, float Health, float Speed) {
    w = W;
    h = H;
    hp = Health;
    sp = Speed;
    x = 0;
    y = 400;
  }
  
  
  
  
}
