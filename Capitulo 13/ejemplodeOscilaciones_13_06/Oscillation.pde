class Oscillation{

  float theta;
  
  Oscillation(float cambio){
  theta= cambio;
  }
  
void incremento(){
theta=theta+.05;
}
void display(){
  
   
  float x = (sin(theta) + 1) * width/2;

  // With each cycle, increment theta


  // Draw the ellipse at the value produced by sine
  fill(0);
  stroke(0);
  line(width/2, 0, x, height/2);
  ellipse(x, height/2, 60, 60);
}
}
