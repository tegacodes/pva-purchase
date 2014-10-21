//import minim to work with sound 
import ddf.minim.*; 
//declarations 
Minim minim; 
AudioPlayer song;


//initial settings 
void setup(){ 
  //stage size  & colour 
 size(512, 200);
 
  // a new minim to control sound 
  minim = new Minim(this); 
  // load the sound to be played 
  song = minim.loadFile("example.mp3",512); 
 

  //play the sound 
  song.play(); 
  
  

} 

//repetitive code 
void draw(){ 
  
  background(0);
  stroke(255);
  // we draw the waveform by connecting neighbor values with a line
  // we multiply each of the values by 50 
  // because the values in the buffers are normalized
  // this means that they have values between -1 and 1. 
  // If we don't scale them up our waveform 
  // will look more or less like a straight line.
  for(int i = 0; i < song.bufferSize() - 1; i++)
  {
    line(i, 50 + song.left.get(i)*50, i+1, 50 + song.left.get(i+1)*50);
    line(i, 150 + song.right.get(i)*50, i+1, 150 + song.right.get(i+1)*50);

  

}
}

//it's important to properly close minim at the end 
void stop()
{
  song.close();
  minim.stop();
 
  super.stop();
}
