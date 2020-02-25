class Timer{
 int savedTime;
 int totaltime ;
 
 Timer(int x){
  totaltime= x;
 }

void comienzo(){
savedTime = millis();
}

void terminado(){
int passedTime = millis() - savedTime;
// Has five seconds passed?
if (passedTime > totaltime) {
println( " 5 seconds have passed! " );
background(random(255)); // Color a new background
savedTime = millis();
}
}
}
