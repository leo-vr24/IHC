Oscillation oscillation;
int angulo=30;
void setup() {
  size(480, 270);
  oscillation = new Oscillation(angulo);
}

void draw() {
  background(255);
 oscillation.incremento();
 oscillation.display();
 
}
