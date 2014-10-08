// CONDITIONAL STATEMENTS

// variables for the y direction
float y;
float speed;
float gravity;
float x;

void setup(){
  size(500,500);
  smooth();
  speed = 1;
  gravity = 0.5;
}

void draw(){
  background(255);  
  
  x = x+10;
  
   println(x);
  //add 1 to y for every loop of draw
  y = y + speed;
  //acceleration
  speed = speed + gravity;
  
 
  ellipse(x,y,10,10);
  fill(255,0,0);
  ellipse(x,y,10,10);
  
  //IF STATEMENTS
  //IF(TEST1 OR TEST 2 IS TRUE){
    //DO THE THING!
  //}
    
  if(y>=500||y<=0){
    //arithmatic * - + /
    speed = speed * -0.9;
    //instead of changing direction perfectly - ie using -1
    //we change the direction and loose 10%
  }
  
}
