import 'package:flutter_test_app_3/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_test_app_3/book_list_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Firebaseアプリを初期化する

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('flutter_test_app_3'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.sampleText,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  ElevatedButton(
                    child: Text('ボタン'),
                    onPressed: () {
                      // ここでなにか
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookList()),
                      );
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}