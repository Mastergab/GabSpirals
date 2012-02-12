#import('dart:html');
#source('Board.dart');
#source('Box.dart');

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