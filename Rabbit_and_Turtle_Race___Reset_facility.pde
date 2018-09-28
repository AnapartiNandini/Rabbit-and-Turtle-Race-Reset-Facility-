PFont Font1; // variable for font

PImage a; // variable for rabbit image

PImage b; // variable for turtle image

int x = 0; // first variable for y axis

int y = 0; // second variable also for y axis

void setup() {

  Font1 = createFont("Times New Roman", 30); // sets font

  size(400, 400); // sets the frame to 400 by 400 pixles

  a = loadImage("Rabbit Photo.jpg"); // variable for rabbit image has been loaded

  b = loadImage("Turtle Photo.jpg"); // variable for turtle image has been loaded
}

void draw() {

  background(0, 255, 255); // background has been set to cyan

  image(a, 80, y, 50, 50); // coordinates and size set for rabbit image

  image(b, 270, x, 50, 50); // coordinates and size set for turtle image 



  if ( x >= 398) // the following actions will happen if the turtle image passes 398 pixels on the y axis

  {

    fill(0); // the color of the text is black

    textSize(25); //the the text size will be 25

    textAlign(CENTER); // the text will be in the center

    textFont(Font1); // the text font will be what the variable is stated in void setup section 

    text("Turtle, You Won!", 200, 200); //text that will be printed when the turtle image crosses 398 pixles
  }

  if ( y >= 398) // the following actions will happen if the rabbit image passes 398 pixels on the y axis

  {

    fill(0); // the color of the text is black

    textSize(25); //the the text size will be 25

    textAlign(CENTER); // the text will be in the center

    textFont(Font1); // the text font will be what the variable is stated in "void setup" section 

    text("Rabbit, You Won!", 200, 200); //text that will be printed when the rabbit image crosses 398 pixles
  }

  // Draw Reset button 

  fill(255);// sets the color of the box to white

  stroke(0);// sets the color of the outline of the box to black

  strokeWeight(2);// sets the thickness of the outline of the box to 2 pixles

  rectMode(CENTER);// designs the rectangle from the center

  rect(200, 360, 100, 50);// draws the rectangle and positions it

  fill(0);// sets the color of the text to black

  text("Reset", 185, 365);// the word reset is written inside the box
}

void mousePressed()
{
  if (mouseX > 150 && mouseX < 250 && mouseY > 410 && mouseY < 310)
  {
    text(" ",200,200);
    x = 0;
    y = 0;
  }
}

void keyPressed() {

  if (key == 'a' || key == 'A') // the turtle image will move everytime the "a" key is pressed

  {
    x = x + 10;
  }

  if (key == 'l' || key == 'L') // the rabbit image will move everytime the "l" key is preesed

  {
    y = y + 10;
  }
}
