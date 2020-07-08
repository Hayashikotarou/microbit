PVector ball_location1; //桜の位置ベクトル宣言
PVector ball_velocity1; //桜の速度ベクトル宣言
color ball_color1; //桜の色変数の宣言

/****************************************************/
// 配列を使う場合の例：配列変数の宣言
int NUM = 400;
PVector[] ball_loc_array = new PVector[NUM];
PVector[] ball_vel_array = new PVector[NUM];
PVector[] ball_col_array = new PVector[NUM];



void sakuratiru(){
     //桜の色を設定
  ball_color1 = color(random(230,250), random(200,210), (240),1000000000);
   
  fill(ball_color1); //桜の色を設定
////桜の速度をランダムに設定
//  ball_velocity1 = new PVector(random(-1,1), (1));

/****************************************************/
// 配列を使う場合の例：
  for(int i = 0; i < NUM; i++){
  ellipse(ball_loc_array[i].x, ball_loc_array[i].y, 15,10);
  if ( ball_loc_array[i].y > height) { 
    ball_loc_array[i].y = 0 ; // 桜がウィンドウの下まで行ったら上に戻る
  }
  }
//配列を使う場合の桜の位置を変える
for(int u = 0; u < NUM; u++){
ball_loc_array[u].add(val,val);
}
 }
 
 //ball_loc_array[u].add(random(-3,3),random(1));
