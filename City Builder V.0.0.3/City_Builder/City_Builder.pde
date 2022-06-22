/*

I use https://www.pixilart.com/draw?ref=home-page# for draw, they made by me.
 
You can use them under the Creative Communs licence : BY-SA
 
 */

/* HELP FOR THE TABLE
 
 
 boolean [] tableauBoolean = new boolean [5];
 boolean[][] boo = new boolean[2][2];
 IntList interger;
 
 void setup() {
 size(800, 600);
 background(255, 50, 75);
 tableauBoolean[2] = true;
 boo[0][0] = true;
 boo[0][1] = false;
 
 print(boo[0][0]);
 }
 
 void draw() {
 
 }
 
 void keyPressed() {
 if(key == 'a' || key == 'A'){
 print(boo[0][1]);
 }
 }
 
 
 */


Scene scene;                     // create the scene
mud_hut Mud_Hut;
shop Shop;
ArrayList <mud_hut> clone0;
ArrayList <crossroads> clone1;
ArrayList <shop> clone2;
int gridX, gridY;



void setup() {                   // --- when program starts (like green flag)
  size(800, 600);                // screen size
  //scene = new Scene("scenes");   // initialize the scene
  //soundFolder("sounds");         // loadSounds into soundsFolder (can be renamed)
  //-----initialize sprites-----------
  //cat= new Cat();
  Mud_Hut = new mud_hut();
  Shop = new shop();

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

  if (IsMenuOn[0] == false) {
    Shop.show();
  } else {
    Shop.hide();
  }


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
  if (mouseButton == LEFT && IsBuildHere[0] == false && IsMenuOn[0] == true) {
    clone0.add(new mud_hut());
    IsBuildHere[0] = true;

    print("\n");
    printArray(IsBuildHere);
    print("\n");
    printArray(IsMenuOn);
  }
}

void keyPressed() {              // called when a key is pressed
  keyIsDown();  // check if all keys are pressed or not
}

void keyReleased() {             // called when a key is released
  keyIsUp();                     // check if all keys are released or not
}
