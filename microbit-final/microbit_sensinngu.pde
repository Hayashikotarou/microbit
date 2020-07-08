
import processing.serial.*;
Serial microbit;

float val = 0;


void serialEvent(Serial microbit) {
  
  
String str = microbit.readStringUntil('\n'); //シリアル通信で取得したデータを変数strに格納する
str = trim(str); //文字列の先頭と末尾の空白文字を削除する
println(str);


int sensors[] = int(split(str, ' ')); //取得データの文字列をスペースで区切り、配列に格納
println(sensors[0]);
val = map(sensors[0], -2048, 2048, -10, 10); //加速度の値の範囲は-2048〜2048、このままでは画面をはみ出してしまうので調整 → 0〜500
}
