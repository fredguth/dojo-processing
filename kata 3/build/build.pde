
void setup() {
  size(500,500);
 
}

void draw(){
   if (mousePressed) {
    fill (random (0,255), random (0,255), random (0,255));
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
  
}