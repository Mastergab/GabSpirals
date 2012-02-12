#library('Spiral01');
#import('dart:html');

class DisplayMessage {
//I change the name 

  DisplayMessage() {
  }

  void run() {
    write("Hello World! Look, Boxes!");
  }
// notice I kept the message and added code, rather than just remove it.

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
  }
}

//here I create our new class Board which will help us develop our magic boxes program
class Board()
{
  int x = 0;
  int y = 0;
  int width;
  int height;
  
  CanvasRenderingContext2D context;
  
  Board(CanvasElement anyCanvas) {
//ici j'ai prefere ne pas prendre un nom pour la variable qui etait utilise ailleurs,
// meme si on siat que dans le contexte local cette variable, qui tient de placeholder
//pour le parametre, qui sera remplace par un argument, peut etre quoi que ce soit.
    context = anyCanvas.getContext("2d");
    width = anyCanvas.width;
    height = anyCanvas.height;
    border();
    init();
  
  void init() {
    new Box(this, 20, 20, 40, 60);
    new Box(this, 120, 40, 60, 40);
  }
  
  void border() {
    context.beginPath();
    context.rect(x, y, width, height);
    context.closePath();
    context.stroke();
  }
  }

class Box {
// on sait que la boite Board definit des boxes
  
  Board board;  
  int x;
  int y;
  int width;
  int height;
  
  Box(this.board, this.x, this.y, this.width, this.height) {
    draw();
  }
  
  void draw() {
    board.context.beginPath();
    board.context.rect(x, y, width, height);
    board.context.closePath();
    board.context.stroke();
  }
}

void main() {
  new DisplayMessage().run();
// The new elements get added to our main function or method 
// Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
//This will construct a new Board. I give it a numeral in the name, to dinstinguish from:
// both the name of the class, and the constructor method. This simplifies reading for me.  
  Board board1 = new Board(canvas1);
// I have to call it specifically for canvas1, since I called it canvas1
}