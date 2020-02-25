
Caida Caida1;
Caida Caida2;
float x, y; 
float rapidez=1;

void setup() {
  size(480, 270);
  background(0);
Caida1= new Caida();
Caida2= new Caida();
 

}


void draw() {
   background(255);
 Caida1.Pantalla();
 Caida2.Pantalla();
 Caida2.Caer(rapidez);
 Caida1.Caer(rapidez);
}
