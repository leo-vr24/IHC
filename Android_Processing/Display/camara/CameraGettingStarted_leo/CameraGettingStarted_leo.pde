/**
 * <p>Ketai Sensor Library for Android: http://ketai.org</p>
 *
 * <p>Ketai Camera Features:
 * <ul>
 * <li>Interface for built-in camera</li>
 * <li></li>
 * </ul>
 * <p>Updated: 2015-25-25 Daniel Sauter/j.duran</p>
 */

import ketai.camera.*;

KetaiCamera cam;

void setup() {
  fullScreen();
  orientation(LANDSCAPE);

  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(displayDensity * 25);
  cam = new KetaiCamera(this, 640, 480, 24);
}

void draw() {

  if (cam != null && cam.isStarted())
    image(cam, width/2, height/2, width, height);
  else {
    background(128);
    text("Tap to start camera.", width/2, height/2);
  }
}

void onCameraPreviewEvent() {
  cam.read();
}

void mousePressed() {
  // Toggle camera on/off
  if (cam.isStarted())
    cam.stop();
  else
    cam.start();
}
