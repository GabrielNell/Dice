class Die {
  int faces, current, r, g, b, a;
  int wid, hgt;
  Die() { // constructor
    faces = 6;
    a = 80;
    current = 0;
    wid = 80;
    hgt = 80;
  }
  
  // roll the die
  int roll() {
    int result;
    result = (int)(Math.random() * 6) + 1;
    return result;
  }
  
  // show the dice
  void show() {
    for (int y = 0; y < rows; y++) {
      for (int x = 0; x < columns; x++) {
        r = (int)(Math.random() * 256);
        g = (int)(Math.random() * 256);
        b = (int)(Math.random() * 256);
        current = roll();
        total += current;
        trueTotal += current;
        fill(r, g, b, a);
        rect(x*mult+off, y*mult+off, wid, hgt, 20);
        if (current == 1) {
          show1(x, y);
        } else if (current == 2) {
          show2(x, y);
        } else if (current == 3) {
          show3(x, y);
        } else if (current == 4) {
          show4(x, y);
        } else if (current == 5) {
          show5(x, y);
        } else if (current == 6) {
          show6(x, y);
        }
      }
    }
  }
  // pip designs!
  void show1(int x1, int y1) {
    fill(0, 0, 0, 255);
    ellipse(x1*mult+off+wid/2, y1*mult+off+hgt/2, wid/5, hgt/5);
  }
  
  void show2(int x2, int y2) {
    fill(0, 0, 0, 255);
    ellipse(x2*mult+off+wid/4, y2*mult+off+hgt/4, wid/5, hgt/5);
    ellipse(x2*mult+off+3*wid/4, y2*mult+off+3*hgt/4, wid/5, hgt/5);
  }
  
  void show3(int x3, int y3) {
    show1(x3, y3);
    show2(x3, y3);
  }
  
  void show4(int x4, int y4) {
    show2(x4, y4);
    ellipse(x4*mult+off+3*wid/4, y4*mult+off+hgt/4, wid/5, hgt/5);
    ellipse(x4*mult+off+wid/4, y4*mult+off+3*hgt/4, wid/5, hgt/5);
  }
  
  void show5(int x5, int y5) {
    show1(x5, y5);
    show4(x5, y5);
  }
  
  void show6(int x6, int y6) {
    show4(x6, y6);
    ellipse(x6*mult+off+3*wid/4, y6*mult+off+hgt/2, wid/5, hgt/5);
    ellipse(x6*mult+off+wid/4, y6*mult+off+hgt/2, wid/5, hgt/5);
  }
}
