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