class Catcher {
float r;
// radius
float x,y;
// location
Catcher(float tempR) {
r = tempR;
x = 0;
y = 0;
}
void setLocation(float tempX, float tempY) {
x = tempX;
y = tempY;
}
void display() {
stroke(0);
fill(75);
ellipse(x,y,r*5,r*2);
}
}
