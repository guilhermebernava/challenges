import 'package:flutter/material.dart';

class ListNumbers with ChangeNotifier {
  int _number = 0;

  int get number => _number;

  void calcResult(List<int> numbers) {
    for (int num in numbers) {
      _number += num;
    }
    notifyListeners();
  }

  void clear() {
    _number = 0;
    notifyListeners();
  }
}
