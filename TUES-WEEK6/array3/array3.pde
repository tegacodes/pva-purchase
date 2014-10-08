
//two arrays of x and y positions
int[] xpos = new int[50];
int[] ypos = new int[50];

void setup(){
  size(300,300);
  //initialise
  for(int i=0;i<xpos.length;i++){
    xpos[i] = 0;
    ypos[i] = 0; 
  }
}

void draw(){
  background(0);
  
  //shift array values
    for(int i = 0;i<xpos.length-1;i++){
    xpos[i]=xpos[i+1];
    ypos[i]=ypos[i+1];
  }
  
  
  
  //new location
  //index of the last spot is 50-1(index = 49)
  xpos[xpos.length-1]=mouseX;
  ypos[ypos.length-1]=mouseY;
  

  //draw
  for(int i = 0;i<xpos.length;i++){
    noStroke();
    fill(255-i);
    ellipse(xpos[i],ypos[i],i,i);
  }
}
