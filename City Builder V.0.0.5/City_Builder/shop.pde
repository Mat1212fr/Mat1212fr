class shop extends Sprite {

  shop() {
    start();                         // launch thread run, independent from draw
    spriteFolder("shopf");          // look into sprite folder and import image, each sprite MSUT have its own folder named
    spriteColorDetection = false; 
    setSizeTo(100);
  }


  void draw() {                      // call it into the main draw void or just call sprite.display into main draw void
    display();                       // for showing and using the sprite
    goTo(width/2 + width/2.6, height/2 - height/2.6);

    if ( IsMenuOn[0] == true) {
      switchCostumeTo(1);
      goTo(width/2, height/2);
      setSizeTo(85 * width/800);
    } else {
      switchCostumeTo(0);
      goTo(width/2 + width/2.6, height/2 - height/2.6);
    }
  }


  void test() {                       // thread where you can code without screen frameRa
    if (mousePressed && touch("mouse") && IsMenuOn[0] == false && costume == 0) {
      IsMenuOn[0] = true;
    }
  }
}
