import ddf.minim.*;

//library classes
Minim minim;
AudioSample kick;
AudioSample snare;

//true false variables to check if something is playing
boolean playingS = false;
boolean playingK = false;

void setup()
{
  
  size(512, 200, P3D);
  minim = new Minim(this);

  // load BD.wav from the data folder
  kick = minim.loadSample( "BD.mp3", // filename
                            512      // buffer size
                         );
                         
                           // if a file doesn't exist, loadSample will return null
  if ( kick == null ) println("Didn't get kick!");
  
  // load SD.wav from the data folder
  snare = minim.loadSample("SD.wav", 512);
  if ( snare == null ) println("Didn't get snare!");
}

void draw()
{
  background(0);
  stroke(255);
  
  line(width/2,0,width/2,height);

//check that sample S is not already playing
if((mouseX<width/2) && (playingS==false)){
  //this means K is not playing
  playingK =false;
  //but S is playing so set this variable to true
  playingS =true; 
  //trigger
  snare.trigger();
}

//check that sample K is not already playing
if((mouseX>width/2) && (playingK==false)){
  //this means S is not playing
  playingS =false;
  //but K is playing so set this variable to true
  playingK =true;
  //trigger
  kick.trigger();
}

}

