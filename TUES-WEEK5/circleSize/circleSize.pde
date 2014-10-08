int cx;
int cy;
float r;
void setup(){
  size(500,500);
 //1. erase background
  background(255); 
}
void draw(){ 
  //4. circle
  ellipse(cx,cy,r,r);
}

//2. mouse pressed and record center of circle location
void mousePressed(){
 cx = mouseX;
 cy = mouseY; 
 println("MOUSEPRESSED");
}
//3. record the distance from the centre
void mouseDragged(){
 r = dist( cx,cy,mouseX,mouseY);
}

void mouseReleased(){
 r=0; 
}
