class Caida{
float x1,x2;
float y1,y2;

Caida( ){
  x1=width/2;
  y1=0;
  x2=width/4;
  y2=0;
}


void Pantalla(){
  // Display the drop
  fill(50, 200, 250);
  noStroke();
  ellipse(x1, y1, 50, 50);

  // Display the drop
  fill(60, 500, 250);
  noStroke();
  ellipse(x2, y2, 20, 50);
 

}
void Caer(float razon){
  //move the drop
y1+=razon;
y2+=razon;
}
}
