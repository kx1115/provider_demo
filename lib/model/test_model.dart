import 'package:flutter/material.dart';

class TestModel with ChangeNotifier {
  int clickNum=0;

  void add() {
    clickNum++;
    notifyListeners();
  }
}