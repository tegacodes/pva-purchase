//Ex. 5.4 BOOLEAN VARIABLES BUTTON EXAMPLE
// SEE SHIFFMAN - PAGE 71

//Boolean variable toggles between 2 states, true and false
boolean button = false; //default is false
//button variables 
int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200, 200);
}

void draw() {
  //if statement to define when the button is 'pressed'. So when button = true)
  if (mouseX > x & & mouseX < x + w & & mouseY > y & & mouseY < y + h & & mousePressed) {
    button = true;
  } else {
    button = false;
  }
  
  //Conditionals to define what happens when button is true and false. 
  if (button) {
    background(255);
    stroke(0);
  } else {
    background(0);
    stroke(255);
  }
  fill(175);
  rect(x, y, w, h);
}

