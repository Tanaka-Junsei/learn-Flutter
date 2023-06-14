main() {
  /*
  try-catch文を使うことで例外処理の対処を行うことが出来ます。
  try文内部で例外が起きた場合にcatch文に飛びます。（特定の型の例外を捕捉したい場合はon データ型 catchを使います）
  */
  void errorFunc() {
    try {
      // throw Exceptionで意図的に例外を投げる
      throw Exception('例外です');
    } on Exception catch (e) {
      //eはException型
      // 捕まえる型を指定するには on ~~ catch を使う
      // eはException型
      print(e);
      // rethrowでtry-catch-finallyブロックの外に例外を投げ直す事ができる（関数の外などでcatchする必要あり）
      rethrow;
    } finally {
      // finallyブロックは例外の有無にかかわらず実行される、省略可。
      print('finally');
    }
  }

  // 例外処理：try-catch文
  try {
    errorFunc();
  } catch (e, s) {
    // 型を指定しないcatchは、何型かわからない例外全部キャッチする
    // catchに仮引数を２つ指定すると、２つ目はStackTraceオブジェクトが入る
    print(s);
  }
}
