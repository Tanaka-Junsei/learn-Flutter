main() {
  const p = Point(1, 2);
  print('x=${p.x},y=${p.y}');
  var pp = Point.alongXAxis(3);
  print('x=${pp.x},y=${pp.y}');
}

class Point {
  final int x; //finalは定数宣言,コンストラクタでしか値を代入できない
  final int y;

  // 不変コンストラクタ
  // メンバ変数が全部 final 宣言されていると、コンストラクタの頭にconstをつけられる
  // この場合、インスタンス化された変数はコンパイル定数として扱われる
  const Point(this.x, this.y);

  // リダイレクトコンストラクタとは、別のコンストラクタに処理を移譲するコンストラクタのこと
  // 別のコンストラクタに一部処理を移譲する
  const Point.alongXAxis(int x) : this(x, 0);
}
