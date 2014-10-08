Ball[] myBall = new Ball[20];
int totalBalls = 0;

int s;


void setup(){
  size(300,300);
  smooth();
  s= second();
    
}


void draw(){
  background(255);
  //initialise one ball in place i=0 in the array
  myBall[totalBalls]=new Ball(100);
  
  if(s!=second()){
  //increment
  totalBalls++;
  
//  //if we hit the end of the array
//  if(totalBalls>= myBall.length){
//    totalBalls = 0;
//  }
  s=second();
  }
  for (int i = 0; i < totalBalls; i++ ) {
    myBall[i].display();
    myBall[i].move();
  }
  

}
