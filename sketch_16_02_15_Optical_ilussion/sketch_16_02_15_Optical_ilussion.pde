/**
 * Simple Linear Gradient 
 * 
 * The lerpColor() function is useful for interpolating
 * between two colors.
 */

// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;

void setup() {
  size(640, 360);

  // Define colors
  b1 = color(255);
  b2 = color(0);
  c1 = color(204, 102, 0);
  c2 = color(0, 102, 153);

  noLoop();
}

void draw() {
  // Background
  setGradient(0, 0, width, height, b1, b2, 2);
}

/*void keyPressed()
{
  if(key == 'a')
  {
    setGradient(0, 0, width, height, b1, b2, 2);
  }
}*/

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();
  
  if (axis == 2) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
    
    for(int var = (height/2)-20; var <= (height/2)+20; var++)
          {
            stroke(192);
            line(70, var, width - 70, var);
          }
  }
}