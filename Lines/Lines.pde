// clear design: use background to run over it //<>// //<>//
// p3d = 3d; Z coordinate
// edge detection: when it exceeds width, etc, then start in new random location
//Line line;
Line[] lines = new Line[120];

void setup() {
  background(random(75, 255));
  size(500, 500);
  //line = new Line(random(width), random(height), random(1, 5), random(1, 20));
  for (int i = 0; i < lines.length; i++) {
    lines[i] = new Line(random(width), random(height), random(1, 5), random(1, 20));
  }
}
void draw() {
  //line.display();
  frameReset();
  for (int i = 0; i < lines.length; i++) {
    lines[i].display();
  }
}

  void frameReset() {
    if (frameCount > 1000) {
      clear();
    }
    println(frameCount);
  }
  // crazy worm game: background(0); , stroke(mouseX) or 255;
  // have keyboard control or mouse control??
