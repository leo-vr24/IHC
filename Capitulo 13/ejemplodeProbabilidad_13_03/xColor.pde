class xColor {
 // Probabilities for 3 different cases
// These need to add up to 100%!
    float red_prob;
    float green_prob;
    float blue_prob;
    float num = random(1);
  
  xColor(float a, float b, float c) {
    red_prob = a;
    green_prob = b;
    blue_prob = c;
  }
  
  void display(float num) {
    
    if (num < red_prob) {
        fill(255, 53, 2, 150);
    } else if (num < green_prob + red_prob) {
        fill(156, 255, 28, 150);
    } else {
        fill(10, 52, 178, 150);
    }
    // Now draw that circle!
    ellipse(random(width), random(height), 64, 64);
  
  }
  
}
