//Mobs are the monsters that the towers defend against.
//Mobs spawn at the start and then move across the map,
//changing direction when they hit a node. If they get
//to the end of the map, they deal damage to the player.
//Once the player has no more health, it's game over!

class Mob {
  float hp, sp, x, y, vx, vy, s; 
  
  Mob(float S, float Health, float Speed) {
    s = S;
    hp = Health;
    sp = Speed;
    x = 0;
    y = 400;
    vx = 1 * sp;
    vy = 0 * sp;
  }
  
  void act() {
    advance();
    turn();
    fill(255);
    stroke(0);
    circle(x, y, s);
    line(x, y, x+s*vx, y+s*vy);
    
    // image();
  }
  
  void advance() {
    x += vx;
    y += vy;  
  }
  
  void turn() {
    for (int i = 0; i < nodes.length; i++) {
      Node exampleNode = nodes[i];
      if (dist(exampleNode.x, exampleNode.y, x, y) < 2) {
        vx = exampleNode.vx * sp;
        vy = exampleNode.vy * sp;
      }
    }
  }
  
  
  
}
