// add your code here, you can use as many files or classes as you like
Bubble[] bubbles = new Bubble[250];

void setup() {
  size(200, 500);
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].move();
    bubbles[i].display();
  }
}

class Bubble {
  float x, y, radius, speedY;
  
  Bubble() {
    x = random(width);
    y = random(height + 50, height + 750);
    radius = random(1, 10);
    speedY = -10 / radius;
  }
  
  void move() {
    x += random(-0.8, 0.8);
    y += speedY;
    if (y < -50) {
      x = random(width);
      y = random(height + 50, height + 750);
      radius = random(1, 10);
      speedY = -10 / radius;
    }
  }
  
  void display() {
    stroke(255);
    fill(10,10,10);
    ellipse(x, y, radius*2, radius*2);

  }
}
