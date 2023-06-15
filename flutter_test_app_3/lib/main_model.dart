import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  List sampleTexts = ["junsei", "tanaka"];
  int index = 0;

  void changeText() {
    if (index == 0) {
      index = 1;
    } else {
      index = 0;
    };
    notifyListeners();
  }
}