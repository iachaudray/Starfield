
Star[] stars = new Star[400];

void setup() {
  size(400, 400);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
void draw() {
  background(20);
  translate(width/2, height/2);
  for (Star st : stars) {
    st.show();
    st.update();
  }
    
}
