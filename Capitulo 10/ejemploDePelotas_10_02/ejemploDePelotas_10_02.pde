// Two ball variables
Ball ball1;
Ball ball2;
Ball ball3;
void setup() {
size(400,400);
smooth();
// Initialize balls
ball1 = new Ball(64);
ball2 = new Ball(32);
ball3= new Ball(18);
}
void draw() {
background(255);

// Move and display balls
ball1.move();
ball2.move();
ball3.move();
ball1.display();
ball2.display();
ball3.display();
}
