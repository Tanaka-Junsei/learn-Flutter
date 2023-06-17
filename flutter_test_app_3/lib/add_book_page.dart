import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_book_model.dart';

class AddBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddBookModel>(
      create: (_) => AddBookModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('本を追加'),
        ),
        body: Consumer<AddBookModel>(
          builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (text) {
                      model.bookTitle = text;
                    },
                  ),
                  ElevatedButton(
                    child: Text('追加する'),
                    onPressed: () async {
                      // todo: firestoreに本を追加

                      try {
                        await model.addBookToFirebase();
                        await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('保存しました！'),
                              actions: <Widget>[
                                ElevatedButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();//pop()は、前の画面に戻るメソッド.Navigator.of(context)は、現在の画面のcontextを取得するメソッド.
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        Navigator.of(context).pop();
                      } catch (e) {//eはエラーの内容を表す
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(e.toString()),
                              actions: <Widget>[
                                ElevatedButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}