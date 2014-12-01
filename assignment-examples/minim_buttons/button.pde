class Button{

  String name;
  PVector pos;
  boolean pressed = false;
  int xsz = 40;
  int ysz = 20;

  Button(PVector _pos, String _name ){
    pos = _pos;
    name = _name;
  }

  void display(){
    color c = isOver()? 255:120;
    fill(c);
    rect(pos.x, pos.y, xsz, ysz);
    fill(0);
    text(name, pos.x+5, pos.y +ysz/2);
     
  }

  void update(){
    if(isOver() && mousePressed)
    pressed = true;

  }

  boolean isOver(){
    return mouseX > pos.x && mouseX < pos.x + xsz &&
           mouseY > pos.y && mouseY < pos.y + ysz; 
  }

}
