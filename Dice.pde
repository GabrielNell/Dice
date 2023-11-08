Die aDie; 
int rows, columns;
int total = 0, trueTotal = 0;
int best = 0;
int rolls = 0;
int mult = 100;
int off;
float avg; // globals

void setup() {
  aDie = new Die();
  size(800, 600);
  rows = (int)((height - 100) / 100);
  columns = (int)((width - 100) / 100); // rows & cols based on width & height
  background(255);
  off = (mult/2)+(mult-aDie.wid)/2;
  textSize(20);
  frameRate(180); // change this if you want, also doesn't do a whole lot when the dice are rolled on mouse click
}

void draw() { // delete the comment thingies if you want this to loop a while to test average or just watch the animation
  /*
  background(255);
  aDie.show();
  rolls += 1;
  if (total > best) {
    best = total;
  }
  avg = (float)trueTotal/rolls;
  avg = (float)((int)(avg*10))/10;
  
  text("rolls: " + rolls, width/5 - 30, height-20);
  text("total: " + total, 2*width/5 - 30, height-20);
  text("avg: " + avg, 3*width/5 - 30, height-20);
  text("best: " + best, 4*width/5 - 30, height-20);
  total = 0;
  */
}

void mouseClicked() { // roll dice when click mouse
  background(255);
  aDie.show();
  rolls += 1;
  if (total > best) {
    best = total;
  }
  avg = (float)trueTotal/rolls;
  avg = (float)((int)(avg*10))/10;

  text("rolls: " + rolls, width/5 - 30, height-20);
  text("total: " + total, 2*width/5 - 30, height-20);
  text("avg: " + avg, 3*width/5 - 30, height-20);
  text("best: " + best, 4*width/5 - 30, height-20);
  total = 0;
}
