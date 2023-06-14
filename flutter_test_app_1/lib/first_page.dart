import 'package:flutter/material.dart';
import 'package:flutter_test_app/second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ファーストページ"),
      ), //appBarとは、アプリの上部に表示されるバー
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/sample.jpg"),
            // Image.network(
            //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            TextField(
              onChanged: (text) {
                // テキストフィールドの値が変更された時の処理
                nameText = text;
              },
            ),
            OutlinedButton(
              onPressed: () {
                // ボタンを押した時の処理
                Navigator.push(
                  context,
                  MaterialPageRoute(//画面遷移
                      builder: (context) => SecondPage(nameText),
                      fullscreenDialog: true),
                );
              },
              child: const Text("次の画面へ"),
            ),
          ],
        ),
      ), //bodyとは、アプリのメインコンテンツ
    ); //scaffoldとは、アプリの画面を構成するためのウィジェット
  }
}
