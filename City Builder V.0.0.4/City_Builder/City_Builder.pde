/*

V. 0.0.4

I use https://www.pixilart.com/draw?ref=home-page# for draw, they made by me.
 
You can use them under the Creative Communs licence : BY-SA
 
 
 
*/


mud_hut Mud_Hut;
shop Shop;
THEcross theCross;
ArrayList <mud_hut> clone0;
ArrayList <crossroads> clone1;
ArrayList <shop> clone2;
int gridX, gridY;

int w, h;
boolean change;



void setup() {                   // --- when program starts (like green flag)
  size(800, 600);                // screen size
  //scene = new Scene("scenes");   // initialize the scene
  //soundFolder("sounds");         // loadSounds into soundsFolder (can be renamed)
  //-----initialize sprites-----------
  //cat= new Cat();
  
  w = width;
  h = height;
  
  Mud_Hut = new mud_hut();
  Shop = new shop();
  theCross = new THEcross();

  clone0 = new ArrayList <mud_hut>();
  clone1 = new ArrayList <crossroads>();
  clone2 = new ArrayList <shop>();

  IsMenuOn[0] = false;
  IsItemBought[0] = false;
  
}                                // ------end of starting program ------


void draw () {                   //-----forever at 60 fps-----
  background(#0E9B05);
  //scene.backdrops();             // display the backdrops of the scene
  //pickColor();
  //cat.draw();                    // display a sprite can be also cat.display
  
  gridX = mouseX / 40;
  gridY = mouseY / 40;

  //rect(gridX*40, gridY*40, 40,40);
  
    Shop.draw();
    theCross.draw();

/*  if (IsMenuOn[0] == false) {
    Shop.show();
  } else {
    Shop.hide();
  }
*/

  if (IsItemBought[0] == true) {
    strokeWeight(1);
    stroke(1); 
    for ( int i = 40; i < width; i += 40) {
      line(0, i, width, i);
      line(i, 0, i, width);
    }
  }


  for (int i = clone0.size()-1; i >= 0; i --) {
    Mud_Hut = clone0.get(i);
    Mud_Hut.draw();
  }
}                                //----end of draw -----

void mousePressed() {
  if (mouseButton == LEFT && IsBuildHere[0] == false && IsMenuOn[0] == true && IsItemBought[0] == true) {
    clone0.add(new mud_hut());
    IsBuildHere[0] = true;

    print("\n");
    printArray(IsBuildHere);
    print("\n");
    printArray(IsMenuOn);
  }
  
  theCross.testons();
  Shop.testons();
}

void keyPressed() {              // called when a key is pressed
  keyIsDown();  // check if all keys are pressed or not
}

void keyReleased() {             // called when a key is released
  keyIsUp();                     // check if all keys are released or not
}
