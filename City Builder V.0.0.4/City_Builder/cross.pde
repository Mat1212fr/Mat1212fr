class THEcross extends Sprite {

  THEcross() {
    super("cross/cross.png");
    start();                         // launch thread run, independent from draw
    goTo(mouseX, mouseY);
    setSizeTo(100);
  }


  void draw() {                      // call it into the main draw void or just call sprite.display into main draw void
    display();                       // for showing and using the sprite
    goTo(650, 110);
    if ( IsMenuOn[0] == true) {
      show();
    } else {
      hide();
    }
  }

  void testons() {                       // thread where you can code without screen frameRate

    if (mousePressed && touch("mouse") && IsMenuOn[0] == true) {
      IsMenuOn[0] = false;
    }
  }
}
