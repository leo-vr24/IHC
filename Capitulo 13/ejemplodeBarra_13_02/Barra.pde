class Barra{
  float randomCounts[];
  
  Barra(float aleatorio[]){
  randomCounts=aleatorio;
 
  }
  
  void display(){
    int index = int(random(randomCounts.length));
  randomCounts[index]++;

  // Draw a rectangle to graph results
  stroke(0);
  fill(275);
  for (int x = 0; x < randomCounts.length; x++ ) {
    rect(x * 30, 0, 19, randomCounts[x]);
  }
    
  }
  
}
