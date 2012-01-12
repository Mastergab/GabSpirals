#import('dart:html');

class GabSpiral00 {

  GabSpiral00() {
  }

  void run() {
    write("Hello World!");
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
  }
}

void main() {
  new GabSpiral00().run();
}
