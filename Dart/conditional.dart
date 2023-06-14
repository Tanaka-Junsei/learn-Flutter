main() {
  // forEach
  var lists = ['l', 'i', 's', 't'];
  lists.forEach((value) {
    print(value);
  }); //配列の中身を順番に取り出す
  var sets = {'s', 'e', 't'};
  sets.forEach((value) {
    print(value);
  });
  var maps = {'k': 'm', 'e': 'a', 'y': 'p'};
  maps.forEach((key, value) {
    print('$key $value');
  }); //キーと値を順番に取り出す

  // for
  for (var i = 0; i < 3; i++) {
    print(i);
  }

  // for in
  for (var i in ['f', 'o', 'r', 'i', 'n']) {
    //配列の中身を順番に取り出す,for eachと同じ挙動
    if (i == 'o' || i == 'r') continue;
    print(i);
  }
  for (var i in {'s', 'e', 't'}) {
    print(i);
  }

  // while
  var w = 0;
  while (true) {
    // if文
    if (w == 3) {
      break;
    } else if (w == 1) {
      w++;
      print('wは$w');
    } else {
      w++;
      print('w=$w');
    }
  }

  // do-while
  var dw = 0;
  do {
    //do-whileは最初に一度だけ実行される
    dw++;
    print('dw=$dw');
  } while (dw < 3);

  // switch
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      continue nowClosed; // continueの場合、nowClosedラベルを実行する
    nowClosed:
    case 'NOW_CLOSED':
      print('NOW_CLOSED');
      break;
  }
}
