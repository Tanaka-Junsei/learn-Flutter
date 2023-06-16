import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test_app_3/book.dart';
import 'package:flutter/material.dart';

class BookListModel extends ChangeNotifier {
  List<Book> books = [];

  Future<void> fetchBooks() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await FirebaseFirestore.instance.collection('books').get();
    final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents =
        snapshot.docs;
    final List<Book> books = documents
        .map((doc) => Book(doc.data()!['title']))//mapメソッドは、リストの要素を変換する。pythonのmap関数と同じ
        .toList(); // ドキュメントからBookオブジェクトを作成.toList()は、リストに変換する

    this.books = books;
    notifyListeners();
  }
}
