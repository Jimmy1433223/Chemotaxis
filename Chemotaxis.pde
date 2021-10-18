//declare bacteria variables here
Bacteria[] colony;
void setup()   
{     
  size(600,600);
  colony = new Bacteria[20];
  for (int i = 0; i < colony.length; i++)
    colony[i] = new Bacteria();
}   
void draw()   
{ 
  background(0);
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}  
class Bacteria    
{     
  int X, Y, myColor;
  Bacteria() {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    X = 300;
    Y = 300;
  }
  void move(){
    X = X + (int)(Math.random()*3)-1;
    Y = Y + (int)(Math.random()*3)-1;
  }
  void show(){
    fill(myColor);
    ellipse(X,Y,20,20);
  }

}
