//MOUSEPRESSED KEYPRESSED
//EXAMPLE 3.5 page 39. Shiffman. 

void setup() {
  size(200, 200);
  background(255);
}


void draw() {
}

//this block of code is executed if mouse is pressed
void mousePressed() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 16, 16);
}

//this block of code is executed if key is pressed
void keyPressed() {
  background(255);
}

