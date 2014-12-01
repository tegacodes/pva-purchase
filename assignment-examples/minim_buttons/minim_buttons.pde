//create two buttons to trigger songs. Stop the first song 
//playing if the second button is pressed
//Using a button class.

import ddf.minim.*;

PVector pOne;//A PVECTOR IS A DATATYPE WITH TWO INPUTS 
PVector pTwo;

Button one;//SET UP TWO BUTTON OBJECTS FROM BUTTON CLASS
BUTTON two;


Minim minim;
AudioPlayer player_1;
AudioPlayer player_2;

void setup() {
  size(300, 300);
  pOne = new PVector(50, 150);
  pTwo = new PVector(150, 150);
  one = new Button (pOne, "one");
  two = new Button (pTwo, "two");
  minim = new Minim(this);
  //sound1
  player_2 = minim.loadFile("beats2.mp3");
  //sound2
  player_1 = minim.loadFile("beats3.mp3");
}

void draw() {
  background(220);
  one.display();
  one.update();
  two.display();
  two.update();

//BUTTON 1 CLICKED WITH MOUSE
  if (one.pressed) {
    player_2.pause();
    player_1.rewind();
    player_1.play();
    ellipse(30, 30, 10, 20);
    //two.pressed = false;
  }

//BUTTON 2 CLICKED WITH MOUSE
  if (two.pressed) {
    player_1.pause();
    player_2.rewind();
    player_2.play();
    ellipse(130, 30, 10, 20);
    //one.pressed = false;
  }

}

  //KEYS
  void keyReleased() {
    if (key == 'a') {
      player_2.pause();
      player_1.rewind();
      player_1.play();
      ellipse(30, 30, 10, 20);

    }
    if (key == 's') {
      player_1.pause();
      player_2.rewind();
      player_2.play();
      ellipse(130, 30, 10, 20);
    }
  }

  void mouseReleased() {
    one.pressed = false;
    two.pressed = false;
  }

  void stop() {
    // always close Minim audio classes when you are done with them
    minim.stop();
    super.stop();
  }

