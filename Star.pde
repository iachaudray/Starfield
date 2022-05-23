class Star {
  static final int SPEED = 5;
  PVector vec;
  PVector stColor;
  Star() {
    vec = new PVector(random(-width/2, width/2), random(-height/2, height/2), random(width));
    stColor = new PVector(random(0,255), random(0,255), random(0,255));
  }
  void show() {
    fill(stColor.x, stColor.y, stColor.z);
    noStroke();
    float sx = map(vec.x / vec.z, 0, 1, 0, width);
    float sy = map(vec.y / vec.z, 0, 1, 0, height);
    
    float r = map(vec.z, 0, width, 8, 0);
    
    ellipse(sx, sy, r, r);
  }
  void update() {
    vec.z -= SPEED;
    if (vec.z < 1) {
      vec.z = width;
      vec.x = random(-width/2, width/2);
      vec.x = random(-height/2, height/2);
    }
    
  }
}
