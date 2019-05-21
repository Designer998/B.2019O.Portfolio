class Line {
  // 1st: variables; 2nd: constructor; 3rd display method; 4th: Movement methods

  // Member variables
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  // constructor
  Line(float xpos, float ypos, float strokeW, float pointCount) {
    this.xpos = xpos; // this = takes temporary value and set it in fixed variables
    this.ypos = ypos;
    this.strokeW = strokeW;
    this.pointCount = pointCount;
  }

  void display() {
    strokeW = random(1, 3);
    pointCount = random(1, 20);
    stroke(mouseX/2); // or stroke(0);
    strokeWeight(strokeW);
    detection();
    moving();
  }

  void moveRight(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i = i + 1) {
      point(startX + i, startY);
      xpos = startX + i;
    }
  }
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i = i + 1) {
      point(startX - i, startY);
      xpos = startX - i;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i = i + 1) {
      point(startX, startY + i);
      ypos = startY + i;
    }
  }
  void moveDown(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i = i + 1) {
      point(startX, startY - i);
      ypos = startY - i;
    }
  }

  void moving() {
    if (random(100) > 70) {
      strokeWeight(strokeW);
      moveLeft(xpos, ypos, pointCount);
    } else if (random(100) > 65) {
      strokeWeight(strokeW);
      moveUp(xpos, ypos, pointCount);
    } else if (random(100) > 55) {
      strokeWeight(strokeW);
      moveDown(xpos, ypos, pointCount);
    } else {
      strokeWeight(strokeW);
      moveRight(xpos, ypos, pointCount);
    }
  }

  void detection() {
    if (xpos > width || xpos < width - width) {
      xpos = random(width);
    } else if (ypos > height || ypos < height - height) {
      ypos = random(height);
    }
  }
}
