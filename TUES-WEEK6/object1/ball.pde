class Ball {
  
  //DATA
  color c;
  float x;
  float y;
  float ySpeed; 
  
  //CONSTRUCTOR
  Ball(color tempC){
     c=tempC; 
     x = random(0,width);
     y = 0;
     ySpeed = 1;
  }
  
  //FUCNTIONS
  void display(){
   ellipseMode(CENTER);
   fill(c);
   ellipse(x,y,20,20); 
  }
  
  void move(){
   y = y + ySpeed;
  if (y>height){
   y=height;
  } 
    
  }
  
}
