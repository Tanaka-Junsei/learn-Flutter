import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddBookModel extends ChangeNotifier {
  String bookTitle = '';

  Future addBookToFirebase() async {
    if (bookTitle.isEmpty) {//isEmptyは、文字列が空かどうかを判定する
      throw ('タイトルを入力してください');//throwは、例外を発生させる
    }

    FirebaseFirestore.instance.collection('books').add(//addメソッドは、ドキュメントを追加する
      {//json形式に似た形でデータを保存する
        'title': bookTitle,
        'createdAt': Timestamp.now(),
      },
    );
  }
}