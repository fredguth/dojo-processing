import processing.pdf.*;
boolean record = false;

HDrawablePool pool;
HPixelColorist colors;

void setup(){
  size(571,667);
  
  H.init(this).background(#202020);
  smooth();

  // int cells = 100;
  int  cells = (int) (width/10+1)*(height/10+1);

  // pool = new HDrawablePool(cells);
  // pool.autoAddToStage()
  //   .add(new HRect())
   
  //   .layout(
  //     new HGridLayout()
  //     .startX(5)
  //     .startY(5)
  //     .spacing(10,10)
  //     .cols((int) width/10)
  //   )

  //   .onCreate(
  //     new HCallback() {
  //       public void run(Object obj) {
  //         HDrawable d = (HDrawable) obj;
  //         d
  //           .size( 10 )
  //           .anchorAt(H.CENTER)
  //         ;
  //       }
  //     }
  //   )
  //   .requestAll()
  // ;

  // int cells = (int) width*height;
  colors = new HPixelColorist("abaporu.jpg");

  pool = new HDrawablePool(cells);
  pool.autoAddToStage()
    .add(new HEllipse())
   
    .layout(
      new HGridLayout()
      .startX(5)
      .startY(5)
      .spacing(10,10)
      .cols((int) width/10)
    )
    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HDrawable d = (HDrawable) obj;
          d
            .strokeWeight(1)
            .stroke(colors.getColor( d.x(), d.y()))
            .fill(colors.getColor( d.x(), d.y()))
            .size( 5+(int)random(6) )
            .anchorAt(H.CENTER)
          ;
        }
      }
    )
    .requestAll()
  ;


}

void draw() {
  H.drawStage();
  PGraphics tmp = null;

  if (record) {
    tmp = beginRecord(PDF, "duchamp.pdf");
  }

  if (tmp == null) {
    H.drawStage();
  } else {
    PGraphics g = tmp;
    boolean uses3D = false;
    float alpha = 1;
    H.stage().paintAll(g, uses3D, alpha);
  }

  if (record) {
    endRecord();
    record = false;
  }
}

void keyPressed() {
  if (key == 's') {
    record = true;
    draw();
  }
}
