class shop extends Sprite {

  shop() {
    super();                         //call sprite functions
    start();                         // launch thread run, independent from draw
    spriteFolder("shopf");          // look into sprite folder and import image, each sprite MSUT have its own folder named

    goTo(width/2 + width/2.6, height/2 - height/2.6);
    setSizeTo(100);
  }


  void draw() {                      // call it into the main draw void or just call sprite.display into main draw void
    display();                       // for showing and using the sprite
    
    
  }

  void run() {                       // thread where you can code without screen frameRate
  }
}
