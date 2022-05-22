class Star {
  PVector vec;
  Star() {
    vec = new PVector(random(-width/2, width/2), random(-height/2, height/2), random(width));
  }
  void show() {
    fill(255);
    noStroke();
    float sx = map(vec.x / vec.z, 0, 1, 0, width);
    float sy = map(vec.y / vec.z, 0, 1, 0, height);
    
    float r = map(vec.z, 0, width, 8, 0);
    
    ellipse(sx, sy, r, r);
  }
  void update() {
    vec.z -= 2;
    if (vec.z < 1) {
      vec.z = width;
      vec.x = random(-width/2, width/2);
      vec.x = random(-height/2, height/2);
    }
    
  }
}
