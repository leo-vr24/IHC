class Noise{
float tiempo, incremeto;

Noise(float incremento){
tiempo =0.0;
increment =incremento;

}
void display(){

 float n = noise(tiempo) * width;

  // With each cycle, increment the " time "
  tiempo+= increment;

  // Draw the ellipse with size determined by Perlin noise
  fill(0);
  ellipse(width/3, height/3, n, n);


}

}
