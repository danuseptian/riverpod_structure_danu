import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int number = 0;

  addNumber() {
    number++;
    notifyListeners();
  }

  void decreaseNumber() {
    number--;
    notifyListeners();
  }

  void resetNumber() {
    number = 0;
    notifyListeners();
  }
}
