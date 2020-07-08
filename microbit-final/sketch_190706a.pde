void setup() {
  size(1400,800);//ウィンドウサイズ
  strokeWeight(1000);
  frameRate(100000);
  // 配列を使う場合の例：各要素への値の設定
  for(int i = 0; i < NUM; i++){
  ball_loc_array[i] = new PVector(random(width),random(height));
  
  String portName = Serial.list()[0]; // [3]・・・・PCによって異なるので[0]から順にデータを取得できるかどうかを試す [0] → [1] → [2]・・・
println(portName);


microbit = new Serial(this, portName, 115200);
microbit.clear();
microbit.bufferUntil(10);
  
}
}

void draw() {
  springsky();//春の空
  springGround();//春の地面
  drawFlower();//黄色い花
  //hanabira();
  Tree(700,600);//木の幹
  sakura();//木の桜
  sakuratiru();

}


  float w;
  float h;
  int x;
  int y;




void springsky(){
      background(#9DE0F7); 
}
  
void drawFlower() {
  Flower(880,500,0.5);
  Flower(100,550,0.7);
  Flower(370,550,0.5);
  Flower(400,700,0.5);
  Flower(200,600,0.5);
  Flower(1200,670,0.5);
  Flower(1000,550,1);
  Flower(0,600,1);
  Flower(200,500,0.3);
  Flower(1300,500,0.3);
  Flower(1100,500,0.3);
}
  
  
  
  
void Flower(float x, float y, float scale) {
  
  translate(x,y);
  
  noStroke();
  //花びら
  fill(#EDFF03);
  beginShape();
  curveVertex(114*scale, 114*scale);  curveVertex(106*scale, 83*scale);  curveVertex(113*scale, 75*scale);  curveVertex(124*scale, 75*scale);  curveVertex(132*scale, 72*scale);
  curveVertex(142*scale, 97*scale);  curveVertex(138*scale, 120*scale); curveVertex(165*scale, 96*scale);  curveVertex(184*scale, 105*scale);  curveVertex(180*scale, 128*scale);
  curveVertex(146*scale, 136*scale);  curveVertex(163*scale, 151*scale);  curveVertex(165*scale, 168*scale);  curveVertex(154*scale, 180*scale);  curveVertex(135*scale, 170*scale);  
  curveVertex(126*scale, 150*scale);  curveVertex(127*scale, 150*scale);  curveVertex(110*scale, 187*scale);  curveVertex(84*scale, 168*scale);  curveVertex(96*scale, 150*scale);  
  curveVertex(110*scale, 139*scale);  curveVertex(72*scale, 134*scale);  curveVertex(67*scale, 124*scale);  curveVertex(75*scale, 116*scale);  curveVertex(82*scale, 106*scale);  
  curveVertex(114*scale, 114*scale);  curveVertex(125*scale, 130*scale);  
  endShape(CLOSE);
  
  //茎から下
  beginShape();
  fill(#0AFA40);
  curveVertex(126*scale, 150*scale); curveVertex(126*scale, 220*scale);  curveVertex(165*scale, 190*scale);  curveVertex(188*scale, 183*scale);  curveVertex(200*scale, 188*scale);  
  curveVertex(182*scale, 210*scale);  curveVertex(126*scale, 220*scale);  curveVertex(69*scale, 210*scale);  curveVertex(55*scale, 188*scale);  curveVertex(66*scale, 183*scale);  
  curveVertex(86*scale, 190*scale);  curveVertex(127*scale, 220*scale);  curveVertex(127*scale, 150*scale);  curveVertex(126*scale, 150*scale);
  endShape(CLOSE);
  fill(#FFC905);
  ellipse(126*scale, 132*scale, 33*scale, 33*scale);
  
  resetMatrix();
}
  
  
void springGround() {
  
  //地面
  noStroke();
  fill(#B6F0A0);
  beginShape();
  curveVertex(0,500);  curveVertex(0,560); curveVertex(35,540); curveVertex(40,550); curveVertex(60,538); curveVertex(80,539);  curveVertex(140,547);  curveVertex(160,544);  curveVertex(200,555);
  curveVertex(300,540);  curveVertex(400,565);   curveVertex(450,564);   curveVertex(500,547);  curveVertex(550,566);  curveVertex(650,560);  curveVertex(700,567);  curveVertex(800,544);
  curveVertex(width,530);  curveVertex(width,height); 
  curveVertex(0,height); curveVertex(0,550);
  endShape(CLOSE);
}
  
  
void sakura() {
  //木の桜 
    fill(#FFE8F8);
    for( int i = 0; i < 70; i++ ) {
    float drawPointX = random( 600 );
    float drawPointY = random( 300);
    noStroke();
    ellipse( 400+drawPointX, 150+ drawPointY, 180, 130 );

  }
}
