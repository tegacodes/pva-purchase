
int cX;
int cY;
float r;

void setup(){
  
  
}

void draw(){
  //erase the background
  background(255);

 //draw ellipse
  ellipse(cX,cY,r,r);
  
}

//if mousePressed store values
void mousePressed(){ //see page 39 of shiffman about this.
      cX = mouseX;
      cY = mouseY;
}

//if mouseDragged store values
void mouseDragged(){
  r = dist(cX, cY,mouseX, mouseY);
  println(r);
}
