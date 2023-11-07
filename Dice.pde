Die aDie; 
int rows = 4;
int columns = 5;
int total = 0;
int mult = 100;
int off;

void setup() {
  aDie = new Die();
  noLoop();
  size(600, 500);
  off = (mult/2)+(mult-aDie.wid)/2;
  textSize(20);
}

void draw() {
  aDie.show();
  text("total: " + total, width/2-35, height-20);
}
