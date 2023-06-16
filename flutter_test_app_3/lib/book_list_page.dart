import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


class BookList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('本一覧'),
      ),
      body: StreamBuilder<QuerySnapshot>(// StreamBuilderは非同期処理を行う
        stream: FirebaseFirestore.instance.collection('books').snapshots(),// Firestoreのデータを監視,streamが更新されるとbuilderが呼ばれる
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return ListView(
            children: snapshot.data?.docs?.map((DocumentSnapshot document) {
              return ListTile(
                title: Text(document['title']),
              );
            }).toList() ?? [],
          );
        },
      ),
    );
  }
}