import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String sampleText = 'junsei';

  void changeText() {
    sampleText = 'Hello World';
    notifyListeners();
  }
}