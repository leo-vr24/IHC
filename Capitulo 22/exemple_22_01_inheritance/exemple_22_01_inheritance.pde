Square s;
Circle c;

void setup() {
  size(480, 270);
  // A square and circle
  s = new Square(280, 180, 40);
  c = new Circle(360, 180, 80, color(175, 150));
}

void draw() {
  background(255);
  s.jiggle();
  c.jiggle();
  s.display();
  c.display();
}
