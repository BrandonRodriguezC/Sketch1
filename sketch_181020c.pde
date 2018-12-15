void setup() {
  size(360, 360);
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  translate(width/2, height/2);
  
 for (int i=3;i<14;i++){
  pushMatrix();
  polygon(0, 0, i*10, i);  // Icosahedron
  popMatrix();
 }
  
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  rotate(frameCount/radius);
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    fill(0);
    ellipse(sx, sy,10,10);
    vertex(sx, sy);
    noFill();
  }
  endShape(CLOSE);
}
