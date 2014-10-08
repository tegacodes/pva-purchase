//SEPARATE PIECES OF CODE //<>//

class Car {
  //1. VARIABLES
  color c;
  float xpos;
  float ypos;
  float xspeed;
  int s;
  
  //2. CONSTRUCTOR - PUTTING VALUES INTO VARIABLE (INITALISING)
  
  Car(float tempSpeed, int tempC, int tempS) {
    c = color(tempC);
    xpos = width/2;
    ypos = random(0,height);
    xspeed = tempSpeed;
    s = tempS;
  }
  //3. FUNCTIONS
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20*s, 10*s);
  }

  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
