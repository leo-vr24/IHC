float[] randomCounts;
Barra bar;
void setup() {
  size(480, 270);
  randomCounts = new float[width/20];
  bar = new Barra(randomCounts);
}

void draw() {
  background(255);

 bar.display();
  }
