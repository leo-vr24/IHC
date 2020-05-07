import ketai.camera.*;
import ketai.cv.facedetector.*;
import netP5.*;  // 1
import oscP5.*;
import ketai.net.*;
//import ketai.sensors.*;


OscP5 oscP5;
NetAddress remoteLocation;

String myIPAddress;
String remoteAddress = "192.168.0.10";  // 2 Customize!
int value;

KetaiCamera cam;
KetaiSimpleFace[] faces; // 1


boolean findFaces = false;

void setup() {
orientation(LANDSCAPE);
cam = new KetaiCamera(this, 1280, 768, 30);
rectMode(CENTER); // 2
stroke(0, 255, 0);
noFill(); // 3
textSize(48);
initNetworkConnection();
}

void draw() {
background(0);
if (cam != null) {
image(cam, 0, 0);
if (findFaces) // 4
{
faces = KetaiFaceDetector.findFaces(cam, 20); // 5
for (int i=0; i < faces.length; i++) // 6
{
rect(faces[i].location.x, faces[i].location.y, // 7
faces[i].distance*2, faces[i].distance*2); // 8

}
value = faces.length;
text("Faces found: " + value, width*.8, height/2); // 9 faces.length
}
}
//agregado
OscMessage myMessage= new OscMessage("QueOndaLeo");
myMessage.add(int(value));
oscP5.send(myMessage,remoteLocation);

}

void mousePressed () {
if(!cam.isStarted())
cam.start();
if (findFaces)
findFaces = false;
else
findFaces = true;
}
void onCameraPreviewEvent() {
cam.read();
}

//esto es agregado
void initNetworkConnection()
{
  oscP5 = new OscP5(this, 12000);  // 9
  remoteLocation = new NetAddress(remoteAddress, 12000);  // 10
  myIPAddress = KetaiNet.getIP();    // 11
}
