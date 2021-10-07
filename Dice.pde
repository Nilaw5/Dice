int sum = 0;
int grandTotal = 0;
int numberOfRolls = 0;
void setup() {
  noLoop();
  size(400, 400);
  rectMode(CENTER);
}
void draw() {
  background(125, 10, 0);
  for (int y = 100; y<301; y+=100) {
    for (int x = 100; x<301; x+=100) {
      Die dice = new Die(x, y);
      dice.roll();
      dice.show();
    }
  }
  grandTotal = grandTotal + sum;
  numberOfRolls = numberOfRolls + 1;
  //System.out.print("sum: ");
  //System.out.println(sum);
  textAlign(CENTER);
  fill(255, 255, 255);
  textSize(50);
  text(sum, 200, 370);
 // System.out.print("Average: ");
 // System.out.println(grandTotal/numberOfRolls);
}

void mousePressed() {
  redraw();
  sum = 0;
}
class Die {
  int myX, myY, myRoll;

  Die(int x, int y) {
    myX = x;
    myY = y;
  }
  void roll() {
    myRoll = (int)(Math.random()*6)+1;
    sum = sum + myRoll;
  }
  void show() {
    fill(255, 255, 255);
    rect(myX, myY, 30, 30);
    //Dots
    fill(0);
    int dotSpace = 7;
    int dotSize = 5;
    if (myRoll == 1) {
      ellipse(myX, myY, 5, 5);
    }
    if (myRoll == 2) {
      ellipse(myX-dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX+dotSpace, myY+dotSpace, dotSize, dotSize);
    }
    if (myRoll == 3) {
      ellipse(myX-dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX, myY, dotSize, dotSize);
      ellipse(myX+dotSpace, myY+dotSpace, dotSize, dotSize);
    }
    if (myRoll == 4) {
      ellipse(myX-dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX+dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX-dotSpace, myY+dotSpace, dotSize, dotSize);
      ellipse(myX+dotSpace, myY+dotSpace, dotSize, dotSize);
    }
    if (myRoll == 5) {
      ellipse(myX-dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX+dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX, myY, dotSize, dotSize);
      ellipse(myX-dotSpace, myY+dotSpace, dotSize, dotSize);
      ellipse(myX+dotSpace, myY+dotSpace, dotSize, dotSize);
    }
    if (myRoll == 6) {
      ellipse(myX-dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX+dotSpace, myY-dotSpace, dotSize, dotSize);
      ellipse(myX-dotSpace, myY, dotSize, dotSize);
      ellipse(myX+dotSpace, myY, dotSize, dotSize);
      ellipse(myX-dotSpace, myY+dotSpace, dotSize, dotSize);
      ellipse(myX+dotSpace, myY+dotSpace, dotSize, dotSize);
    }
  }
}
