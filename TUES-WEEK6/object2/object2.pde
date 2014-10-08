ArrayList <Ball> balls;
int totalBalls = 0;

int s;


void setup(){
  size(300,300);
  smooth();
  s= second();
  //initialise an empty array list
  balls = new ArrayList<Ball>();
  
}


void draw(){
  background(255);

  if(s!=second()){
  totalBalls++;
  println(totalBalls);
  balls.add(new Ball(100)); //add one element

//  //if we hit the end of the array
//  if(totalBalls>= myBall.length){
//    totalBalls = 0;
//  }
  s=second();
  }
  for (int i = 0; i < balls.size(); i++ ) {
    Ball ball= balls.get(i);
    ball.display();
    ball.move();
  }
  

}
