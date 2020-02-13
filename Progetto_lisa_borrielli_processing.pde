void setup() {
  
  size(700, 600, P3D);
  noStroke();
}
float num= 10;
float a= 30;
float offset= 50;
void draw() {
  background(0, 100, 100);
  lights();
  translate(width/2, height/2);
  for (int i = 0; i < num; i++) {
    float forma = map(i, 0, num-1, 0, 255);
    pushMatrix();
    fill(forma, 20, 100);
    rotateX(a + offset*i);
    rotateY(a/2 + offset*i);
    box(200);
    popMatrix();
  }
  
  a += 0.01;
  
}
