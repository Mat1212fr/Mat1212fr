class crossroads extends Sprite {

  crossroads() {
    super();                         // call sprite functions
    start();                         // launch thread run, independent from draw
    spriteFolder("roads");           // look into sprite folder and import image, each sprite MSUT have its own folder named
    
    goTo(gridX*40+20, gridY*40+20);
    setSizeTo(50);
  }


  void draw() {                      // call it into the main draw void or just call sprite.display into main draw void
    display();                       // for showing and using the sprite
  }

  void run() {                       // thread where you can code without screen frameRate
  }
}
