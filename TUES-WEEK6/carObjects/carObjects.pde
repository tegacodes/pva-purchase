//declare the class (when we call it it becomes an object)
Car tegasCar;
Car bobsCar;


void setup(){
  size(300,300);
  //initalise object - inital value
  tegasCar = new Car(3 ,200,2); //<--------PUT IN SOME MORE ARGUMENTS
  bobsCar = new Car(4,100,3);
}

void draw(){
  background(0);
  
  //object name . function
  tegasCar.move();
  tegasCar.display();
  
  bobsCar.move();
  bobsCar.display();

}
