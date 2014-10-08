//Conditional Statements
//Example 5-3: Rollovers - page 69.

void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  stroke(0);
  //draw up the boxes
  line(100, 0, 100, 200);
  line(0, 100, 200, 100);
  // Fill a black color
  noStroke();
  fill(0);
  
  //if statements to detirmine which box the mouse is in.
  if (mouseX < 100 && mouseY < 100) {
    rect(0, 0, 100, 100);
  } else if (mouseX > 100 && mouseY < 100) {
    rect(100, 0, 100, 100);
  } else if (mouseX < 100 && mouseY > 100) {
    rect(0, 100, 100, 100);
  } else if (mouseX > 100 && mouseY > 100) {
    rect(100, 100, 100, 100);
  }
}

