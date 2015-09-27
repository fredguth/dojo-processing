HRect r2;
HRect r3;

void setup() {
  size(600,600);
  //H.init(this);
  H.init(this).background(#202020);

  HRect r1 = new HRect();
  r1
  	.loc(100, 100)
  	.size(50)
  	.fill(255)
  ;
  H.add (r1);

  r2 = new HRect();
  r2
  	.loc(200, 100)
  	.size(50)
  	.fill(#ff3300)
  ;
  H.add (r2);

  r3 = new HRect();
  r3
  	.loc(width/2, height/2)
  	.size(50)
  	.fill(#3333FF)
  	.anchorAt(H.CENTER)
  ;
  H.add (r3);

  HEllipse e1 = new HEllipse();
  e1
  	.loc(width*2/3, height/2)
  	.size(100)
  	.fill(#ff3300,150)
  	//.anchorAt(H.TOP|H.RIGHT)
  ;
  H.add (e1);

  HEllipse e2 = new HEllipse();
  e2
  	.loc(width*2/3, height/2)
  	.size(100)
  	.fill(#0033ff, 150)
  	.anchorAt(H.CENTER)
  ;

  H.add (e2);
  
  //H.drawStage();
  
}



void draw() {
	r2.rotate(3);
	r3.rotate(3);
	H.drawStage();

	line(0, height/2, width, height/2);


}