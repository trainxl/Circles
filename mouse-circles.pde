int i = 1;
int width = 320;
int height = 460;
int mX;
int mY;

void setup() {
  size(width,height);
  background(255);
  smooth();
  frameRate(30);
//  rect(0,0,width -1,height -1);
} 

void draw() {

      noFill();
     
      if (abs(mouseX-mX) > 10 || abs(mouseY-mY) > 10) {
        stroke(220 - abs(mouseX - mX));
        stroke(70);
        strokeWeight(1.5);
      } else {
        strokeWeight(noise(1));        
        stroke(150 * noise(i));
      }
      
      ellipse(mouseX, mouseY, mouseY * 0.3, mouseX * 0.7);

      mX = mouseX;
      mY = mouseY;

      i+=3;
    
}