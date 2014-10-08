//FUNCTIONS REVIEW
int s;
int c;
float d;

void setup(){
  size(300,100);
  background(255);
  s = second();
}

void draw(){
  if(s!=second()){
    if(c<255){
    c=c+20;
    }else{
      c=0;
    }
    background(c);
    s = second();
  }
  d = death(1982);
  text("Days left:"+d,width/8,height/2);
  
}

//void function
void backchange(int col){
  background(col);
  
}

//return function
float death(int bYear){  
  float daysLeft = (71-(year()-bYear))*365.25;
  return daysLeft;
}
