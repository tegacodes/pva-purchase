ArrayList bList; 
int totalBalls = 0;
int s;


void setup() {
  size(300, 300);
  smooth();
  s= second();
  bList = new ArrayList();
}


void draw() {
  background(255);

  if (s!=second()) {
    totalBalls++;
    println(totalBalls);
    bList.add(new Ball(100)); //add one element

    //  //if we hit the end of the array
    //  if(totalBalls>= myBall.length){
    //    totalBalls = 0;
    //  }
    s=second();
  }
  for (int i = 0; i < bList.size (); i++ ) {
    Ball b= (Ball) bList.get(i);
    //An object is accessed from the ArrayList with get(). You must “cast”
    //whatever comes out of the ArrayList with a type, that is (Particle).
    //Casting is discussed in Chapter 4.
    b.display();
    b.move();
  }

  // Remove the first particle when the list gets over 100.
  if (bList.size() > 60) {
    bList.clear();
  }
}
