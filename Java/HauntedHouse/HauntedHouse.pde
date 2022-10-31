// Add your variables below! //<>//


// START HERE!
//
// Make a PImage variable for the scary house background
//  example: PImage scaryHouse
PImage scaryHouse;
Pumpkin pumpkin;
Ghost whiteghost;
Rain rainwater;
Lightning light;
Spotlight spootlight;
void setup() {
  // Set the size of your sketch to at least 600, 400 using
  // the size() method.
  size(800, 600);

  // Pick a scary house and initialize it using loadImage,
  //  example: scaryHouse = loadImage("scaryHouse1.jpg");
  scaryHouse = loadImage("scaryHouse2.jpg");
  pumpkin = new Pumpkin(100, #F09C35);
whiteghost = new Ghost(150, 13, "right"); 
rainwater = new Rain(#4262DB);
light = new Lightning();
spootlight = new Spotlight();
  // Resize your scary house to the window size using
  //  scaryHouse.resize(width, height);
  scaryHouse.resize(800, 600);


  // DRAWING THE SCARY HOUSE
  //
  drawBackground(scaryHouse);
  // In the draw function below, call drawBackground() with your
  // scary house as an input parameter
  // Do you see your scary house??

  // DRAWING THE PUMPKINS
  //
  pumpkin.draw();
  // Create a new variable for a pumpkin at the top of this sketch
  // then initialize it to a new Pumpkin(x, pumpkinColor)
  //   example: myPumpkin = new Pumpkin(350, #E26238);


  // In the draw function below, call the pumpkin's draw() method
  // Do you see your pumpkin?

  // DRAWING THE GHOSTS
  //
  // Create a new variable for a ghost at the top of this sketch
  // then initialize it to a new Ghost(y, speed, flyingDirection)
  //   example: myGhost = new Ghost(50, 5, "right");


  // In the draw function below, call the ghost's draw() method
  // Do you see your ghost?

  // DRAWING THE RAIN
  //
  // Create a new variable for the rain at the top of this sketch
  // then initialize it to new Rain(color)
  //   example: rainfall = new Rain(#95CDEA);


  // In the draw function below, call the rain's draw() method
  // Do you see rain falling?

  // DRAWING THE LIGHTNING
  //
  // Create a new variable for the lightning at the top of this
  // sketch then initialize it to new Lightning()
  //   example: lightning = new Lightning();


  // In the draw function below, call the lightnings's draw()
  // method ONLY when the mouse is pressed
  // Do you see the lightning?

  // DRAWING THE SPOTLIGHT
  //
  // Create a new variable for the spotlight at the top of this
  // sketch then initialize it to new Spotlight()
  //   example: spotlight = new Spotlight();
}

void draw() {
  // Draw your pumpkins, ghosts, rain, and lightning below!
    drawBackground(scaryHouse);
    whiteghost.draw();
    rainwater.draw();
  light.draw(); 
    pumpkin.draw();
   spootlight.draw();
  pumpkin.bounce();
 


  // Try out the other scary house backgrounds and customize
  // your scary house!




















  // There are hidden spotlight and grayscale features in this
  // recipe. See if you can figure out how to use them...

  // ---------------------------------------------------------
  // Here are some other methods you can try:
  //  pumpkin.setPumpkinColor();
  //  pumpkin.bounce();
  //  pumpkin.stop();
  //  pumpkin.setBounceHeight();
  //  pumpkin.moveRight();
  //  pumpkin.moveLeft();
  //  ghost.setGhostTransparency();
  //  lightning.setLightningFlash();
  //  rainfall.setAmountOfRain();
  //  spotlight.setPixelSize();
  //  spotlight.setSpotlightSize();
  // ---------------------------------------------------------
}

void drawBackground(PImage bgImage) {
  background(bgImage);
  drawFloor();
}

void drawFloor() {
  int floorHeight = 30;

  push();

  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);

  pop();
}

// Call this method at the very bottom of the draw() method!
void drawGrayscale( boolean grayscaleEnabled ) {
  if ( grayscaleEnabled ) {
    filter( GRAY  );
  }
}
