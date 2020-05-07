import oscP5.*;
import netP5.*;
import P5ireBase.library.*;

OscP5 oscP5;
P5ireBase fire;

NetAddress remoteLocation;
int value1;
int no;
boolean x;
boolean y;
boolean z;
boolean p;

void setup(){
 size(480, 480);
  oscP5 = new OscP5(this, 12000);
  remoteLocation = new NetAddress("192.168.0.11", 12000); // 1 Customize!
  textAlign(CENTER, CENTER);
  textSize(24);
  fire = new P5ireBase(this, "https://detcaras.firebaseio.com/");

}

void draw(){
if( value1>=5){
  x=true;
  background(255,175,175); 
}
else if ( value1>=10){
  x=true;
  y=true;
background(255,175,175);  
}
else if(value1 >=15){
x=true;
y=true;
z=true;
p=true;
background(255,175,175); 
}
else {
x=false;
y=false;
z=false;
p=false;
background(255,175,175);
}
text(" Numero de personas detectadas: " + value1+ "\n"+
     "Mas de 5 personas: " + x + "\n" +
     "Mas de 10 personas:"+ y + "\n" +
     "Mas de 15 personas:"+  z + "\n"+
     "Seguridad  en camino:" + p + "\n"



, width/2,height/2);

}

void oscEvent(OscMessage theOscMessage){
if (theOscMessage.checkTypetag("i"))
{
value1 = theOscMessage.get(0).intValue();
fire.setValue("Detector de Caras", str(value1));
}
}
