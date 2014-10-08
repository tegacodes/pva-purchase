//USING THE TIME FUNCTIONS
//A BASIC CLOCK
int s;

void setup() {
  size(100, 100);
  s=0;
}

void draw() {
  background(s*10);
  //SET UP VARIABLES FOR EACH TIME FUNCTION
  s = second();
  int m = minute();
  int h = hour();
  // The nf() function spaces the numbers nicely
 
  String t = nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2);
  text(t, 10, 55);
}

