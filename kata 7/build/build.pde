HDrawablePool pool;
HColorPool colors;

void setup(){
  size(600,600);
  H.init(this).background(#202020);
  smooth();

  colors = new HColorPool(#FFFFFF, #F7F7F7, #ECECEC, #333333, #0095a8, #00616f, #FF3300, #FF6600);

  pool = new HDrawablePool(50);
  // pool.autoAddToStage()
  //   .add(new HRect(), 4)
  //   .add(new HRect().rounding(10))
  //   .onCreate(
  //     new HCallback() {
  //       public void run(Object obj) {
  //         HDrawable d = (HDrawable) obj;
  //         d
  //           .strokeWeight(1)
  //           .stroke(#FF3300)
  //           .fill(#333333)
  //           .size( (int)random(25,125) )
  //           .rotate( (int)random(360) )
  //           .loc( (int)random(width), (int)random(height) )
  //           .anchorAt(H.CENTER)
  //         ;
  //       }
  //     }
  //   )
  //   .requestAll()
  // ;
  
  pool.autoAddToStage()
    .add(new HShape("mongo1.svg"))
    .add(new HShape("mongo2.svg"))
    .add(new HShape("mongo3.svg"))
    .add(new HShape("mongo4.svg"))
    .add(new HShape("mongo5.svg"))
    .add(new HShape("mongo6.svg"))
    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HShape d = (HShape) obj;
          d
            .enableStyle(false)
            .strokeJoin(ROUND)
            .strokeCap(ROUND)
            .strokeWeight(1)
            .stroke(#000000)
            .size( (int)random(200,400) )
            .rotate( (int)random(360) )
            .loc( (int)random(width), (int)random(height) )
            .anchorAt(H.CENTER)
          ;
          d.randomColors(colors.fillOnly());
        }
      }
    )
    .requestAll()
  ;

  H.drawStage();
}
 