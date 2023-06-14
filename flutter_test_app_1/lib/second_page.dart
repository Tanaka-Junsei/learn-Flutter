import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("セカンドページ"),
      ), //appBarとは、アプリの上部に表示されるバー
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            Text(name,
            style: TextStyle(
              fontSize: 40,
            ),),
              OutlinedButton(
                onPressed: () {
                  // ボタンを押した時の処理
                  Navigator.pop(context);
                },
                child: const Text("前の画面へ"),
              ),
          ],
        ),
      ), //bodyとは、アプリのメインコンテンツ
    ); //scaffoldとは、アプリの画面を構成するためのウィジェット
  }
}
