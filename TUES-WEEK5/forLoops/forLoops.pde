PImage img;

void setup(){
  size(500,500);
  background(255);
  img = loadImage("OnKawaraStudio1966.JPG");
}

void draw(){
  // x is the local variable
  // 450 is the limit to the loop
 
  
  noFill();
  for(int x=0;x<500;x=x+50){
    //nest loops
    for(int y=0;y<500;y=y+50){
      //INSIDE THE LOOPS
       image(img,x,y,50,50);
      
      
      
      
      
      
      
      
      
      
//    stroke(x,x*1.5,0);
//    // what is the formular for a line?
//   // line(x,10,x,490);
//    //second line to draw the horizontal lines
//   // line(10,y,490,y);
//   
//   ellipse(x,y,50,50);
    }
  }
  
}
