part of fwfd;


class Display {
  
  // this is the HTML canvas element
  CanvasElement canvas;
  
  // this object is what you use to draw on the canvas
  CanvasRenderingContext2D ctx;


  // width and height of the canvas
  int width, height;
  
  // list of the boats that people can touch
  List<Fish> fishes = new List<Fish>();
  

   
  Display() {
    canvas = document.query("#display");
    ctx = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    

    // create a few boats
    addFish(new Fish(200, 300, 'shark'));
    addFish(new Fish(700, 300, 'shark'));
    addFish(new Fish(300, 450, 'sardine'));
    addFish(new Fish(600, 450, 'sardine'));
    addFish(new Fish(200, 600, 'tuna'));
    addFish(new Fish(500, 600, 'tuna'));
    addFish(new Fish(800, 600, 'tuna'));
    addFish(new Fish(700, 750, 'tuna'));
    addFish(new Fish(400, 750, 'tuna'));


    // redraw the canvas every 40 milliseconds
    new Timer.periodic(const Duration(milliseconds : 40), (timer) => animate());
  }
  
  
  void addFish(Fish fish) {
    fishes.add(fish);
  }
  

/**
 * Animate all of the game objects 
 */
  void animate() {
    
    for (Fish fish in fishes) {
      fish.animate();
    }
    draw();
  }   
  

/**
 * Draws programming blocks
 */
  void draw() {
    
    // erase the screen
    ctx.clearRect(0, 0, width, height);
    
    // draw some text
    ctx.fillStyle = 'white';
    ctx.font = '60px sans-serif';
    ctx.textAlign = 'left';
    ctx.textBaseline = 'center';
    ctx.fillText("UNDERWATER AWESOMENESS! ", 20, 160);
  
    
    // draw the boats
    for (Fish fish in fishes) {
      fish.draw(ctx);
    }
  }
}

