HEllipse circle = new HEllipse();

void setup(){
  size(768,768);
  H.init(this).background(#603158).autoClear(false);
  smooth();
  drawCircle(width/2,height/2,width/2, true);


}

void drawCircle(float x, float y, float d, boolean isBlue){
  int red = #fbfbcc;
  int blue = #99cccc;
  int currentColor;

  if (isBlue){
    currentColor=blue;
  }
  else {
    currentColor=red;
  }

  circle
    .loc(x,y)
    .size(d)
    .anchorAt(H.CENTER)
    .strokeWeight(2)
    .stroke(#333333)
    .fill(currentColor,80)
  ;

  H.add(circle);
  H.drawStage();
  

  if (d>25){
    drawCircle(x-d/2, y, d/2, !isBlue);
    drawCircle(x+d/2, y, d/2, !isBlue);
    drawCircle(x, y-d/2, d/2, !isBlue);
    drawCircle(x, y+d/2, d/2, !isBlue);
  }
}
