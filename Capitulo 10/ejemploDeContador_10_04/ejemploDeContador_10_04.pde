Timer myTimer;
int saveTime;
int totalTime = 500;

void setup() {
size(200,200);
background(0);
myTimer=new Timer(totalTime);
myTimer.comienzo();
}

void draw() {
  myTimer.terminado();

}
