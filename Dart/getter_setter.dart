main() {
  var rect = Rectangle(3, 4, 20, 15);
  print('right=${rect.right}'); // rightを参照するとゲッターが呼ばれて計算結果を取得。left + width
  rect.right = 12; // rightを変えるとセッターがよばれて
  print('left=${rect.left}'); // leftの結果も変わる
}

class Rectangle {
  int left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // ゲッター：rightのパラメータを参照できる。（実態はleft+widthの計算結果を返す）
  int get right => left + width;
  // セッター：パラメータを代入時にleftを計算する
  set right(num value) => left = value - width;
  int get bottom => top + height;
  set bottom(num value) => top = value - height;
}
