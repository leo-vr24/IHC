
float increment = 0.04;
Noise noise;
void setup() {
  size(200, 200);
  noise= new Noise(increment);
}

void draw() {
  background(255);
noise.display();
 
 
}
