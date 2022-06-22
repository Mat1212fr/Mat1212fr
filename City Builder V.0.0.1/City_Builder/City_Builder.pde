
Scene scene;                     // create the scene                         // create a new sprite
mud_hut Mud_Hut;
ArrayList <mud_hut> clone0;
ArrayList <crossroads> clone1;
int gridX, gridY;

  
void setup() {                   // --- when program starts (like green flag)
  size(800, 600);                // screen size
  //scene = new Scene("scenes");   // initialize the scene
  //soundFolder("sounds");         // loadSounds into soundsFolder (can be renamed)
  //-----initialize sprites-----------
  //cat= new Cat();
  Mud_Hut = new mud_hut();
  
  
  clone0 = new ArrayList <mud_hut>();
  clone1 = new ArrayList <crossroads>();

}                                // ------end of starting program ------


void draw () {                   //-----forever at 60 fps-----
  background(#0E9B05);
  //scene.backdrops();             // display the backdrops of the scene
  //pickColor();
  //cat.draw();                    // display a sprite can be also cat.display
  
  gridX = mouseX / 40;
  gridY = mouseY / 40;
  
  //rect(gridX*40, gridY*40, 40,40);
  
  
  strokeWeight(1);
  stroke(200, 100, 255); 
  for( int i = 40; i < width; i += 40) {
    line(0, i, width, i);
    line(i, 0, i, width);  
  }
    

  for(int i = clone0.size()-1; i >= 0; i --){
  Mud_Hut = clone0.get(i);
  Mud_Hut.draw();
    }
  

}                                //----end of draw -----

void mousePressed(){
    if(mouseButton == LEFT){
  clone0.add(new mud_hut());

  }
}

void keyPressed() {              // called when a key is pressed
  keyIsDown();  // check if all keys are pressed or not

}

void keyReleased() {             // called when a key is released
  keyIsUp();                     // check if all keys are released or not
}
