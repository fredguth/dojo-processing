HImage a;//1
HShape s;//2
HColorPool colors;//3
HDrawablePool pool;

void setup(){
  size(571, 667);
  H.init(this).background(#202020);
  smooth();

  //a = new HImage("abaporu.jpg");//1
  //H.add(a);//1

  // for (int i = 0; i<100; i++){
  //   a = new HImage("abaporu.jpg");
  //   a
  //     .size( (int)random(75,175) )
  //     .loc( (int)random(width), (int)random(height) )
  //     .rotate((int)random (-2,2)*45)
  //     .anchorAt(H.CENTER)
  //   ;
  //   H.add(a);
  // }
  
  colors= new HColorPool(#FFFFFF, #F7F7F7, #ECECEC, #333333, #0095a8, #00616f, #FF3300, #FF6600);//3

  for (int i = 0; i<12; i++){//2
    s = new HShape("mongo5.svg");
    s
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
    s.randomColors(colors.fillOnly());//3
    H.add(s);
  }


  ;
  H.drawStage();
}
