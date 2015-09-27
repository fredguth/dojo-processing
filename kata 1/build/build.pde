void setup() {
  size(600,600);//2

  line(25,25,75,75);  //1
  
  fill(255);
  rect(100, 100, 50, 50);
  
  fill(#ff3300);
  rect(200, 100, 50, 50);
  
  // fill(#3333FF);
  // rect (width/2, height/2, 50, 50);

  fill(#3333FF);
  rect (width/2-25, height/2-25, 50, 50);
  
  fill(#00FF00);
  rect(random(0,(int) width/2), random(0,(int) height/2), random (1,3)*50, random (1,3) *50);
  
}